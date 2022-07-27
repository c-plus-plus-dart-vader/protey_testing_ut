#include <gtest/gtest.h>
#include <thread>
#include <memory>
#include <vector>
#include <charconv>
#include <chrono>
#include "Client.hpp"
#include "Server.hpp"

using namespace std;

void client_process(const vector<string>& requests, const vector<string>& responses, string_view proto, string_view port)
{
	string input{proto};
	input.append(",127.0.0.1,").append(port.data(), port.size());
	auto p = make_unique<Client>();
	ASSERT_EQ(Client::Res_e::SUCCESS, p->Start(input));
	for (size_t i = 0; i < requests.size(); ++i)
	{
		ASSERT_EQ(Client::Res_e::SUCCESS, p->SendMsg(requests[i]));
		ASSERT_EQ(responses[i], p->GetLastReceivedAnswer());
	}
}

TEST(ProteyTest, Test_1)
{
	const vector<string> requests = {
		"UUUUUUUUUURRRRRRRRRRRRRRRRRRRRRIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEESSSSSSSSSSSSSSSSSSSSSYYYYYYYYYYYYYYYYYY",
		"33 WESIUNF 56 IS    11HU         9? 149498  67 ??????HGJNHAQOI88NNNNNNNNNNRRRRRRRRRRRRRRRRRLK         WWWWWWWWWWWWWWWOOOOOZZZZZZZ.,DSF,,SEDFR 4",
		"WWWWWWWWWWWWW               BBBBBBBBBBB                       //////////////////////////        RRRRRRRRRRRRRRR/////////////////&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&                      )))))))))))))))))  ------------",
		"N 8  9 R 7 4 D - 2 PPPPP 8 NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN                  785",
		"        11       N8HG  586                                                                                    ??????????? ",
		"                                                                                                                   ",
		string(5100, 'R')
	};
	const vector<string> responses = {
		requests[0],
		"4 9 11 33 56 67 88 149498\n149766",
		requests[2],
		"2 4 7 8 8 9 785\n823",
		"8 11 586\n605",
		requests[5],
		requests[6]
	};
	
	uint16_t listening_server_port = 8790;
	
	thread server([listening_server_port, p = make_unique<Server>()]
	{
		//if server does not receive 10 seconds any requests it is enough to stop in this test
		p->Start(listening_server_port, 1000 * 10);
	}
	);
	
	this_thread::sleep_for(chrono::milliseconds(20));
	
	char port_str[6];
	auto ret = to_chars(port_str, &port_str[5],listening_server_port);
	string_view port_sv{port_str, (size_t)(ret.ptr - port_str)};
	
	vector<thread> clients;
	
	string_view tcp_proto{"TCP"};
	string_view udp_proto{"UDP"};

	clients.emplace_back(client_process, requests, responses, tcp_proto, port_sv);
	clients.emplace_back(client_process, requests, responses, tcp_proto, port_sv);
	clients.emplace_back(client_process, requests, responses, tcp_proto, port_sv);
	clients.emplace_back(client_process, requests, responses, udp_proto, port_sv);
	clients.emplace_back(client_process, requests, responses, udp_proto, port_sv);
	
	for (auto& t : clients){ t.join(); }
	server.join();
}

int main(int argc, char **argv)
{
  ::testing::InitGoogleTest(&argc, argv);

  return RUN_ALL_TESTS();
}