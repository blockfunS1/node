import sys

def main():
    print("SkyExo Wings Daemon Started!")
    if len(sys.argv) > 1:
        command = sys.argv[1]
        if command == "start":
            print("Starting server...")
        elif command == "stop":
            print("Stopping server...")
        else:
            print("Unknown command:", command)

if __name__ == "__main__":
    main()
