import os

def menu():
    print("""
============================
  DIGITAL DAMAGE CLI
============================
1) Ghost Shell
2) Recovery Agent
3) Auto-EX
4) FleetSense
5) Exit
""")
    return input("Choice: ")

def run():
    while True:
        choice = menu()
        if choice == "1":
            os.system("../ghost-shell/run.sh")
        elif choice == "2":
            os.system("../recovery-agent/run.sh")
        elif choice == "3":
            os.system("../auto-ex/run.sh")
        elif choice == "4":
            os.system("../fleetsense/run.sh")
        else:
            break

if __name__ == "__main__":
    run()
