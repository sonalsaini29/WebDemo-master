import platform
import subprocess


def install_dependencies():
    subprocess.run(["pip", "install", "-r", "requirements.txt"])

def main():
    system = platform.system()
    if system == "Windows":
        # Install Windows-specific dependencies
        pass
    elif system == "Linux":
        # Install Linux-specific dependencies
        pass
    else:
        print("Unsupported operating system")
        return

    # Install common dependencies
    install_dependencies()

if __name__ == "__main__":
    main()
