# 
# Khadi Valieva
# Dr. Sengupta
# CSC 408
# Classwork 17: server.py for testing purposes
# 

import socket

def start_server():
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    host = '127.0.0.1'
    port = 12345
    server_socket.bind((host, port))

    server_socket.listen(1)
    print(f"\033[92mServer listening on {host}:{port}\033[0m")
    
    conn, addr = server_socket.accept()
    print(f"\033[92mConnected by {addr}\033[0m")
    
    conn.close()

if __name__ == "__main__":
    start_server() 