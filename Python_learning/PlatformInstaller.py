import platform
import subprocess

file_path = 'docs/requirements.txt'


class PlatformInstaller:
    @staticmethod
    def platform_check():
        system = platform.system()
        if system == "Windows":
            # Install Windows-specific dependencies
            pass

        elif system == "Linux":
            # Install Linux-specific dependencies
            pass

        elif system == "Darwin":  # MacOS
            try:
                with open(file_path, 'r') as file:
                    content = file.read()
                    print(content)
                    print("All the requirements for the current OS is being installed")
            except FileNotFoundError:
                print(f"Error: File '{file_path}' not found.")
            except Exception as e:
                print(f"Error reading file '{file_path}': {e}")

        else:
            print("Unsupported operating system")

        # Install common dependencies
        PlatformInstaller.install_dependencies()

    def install_dependencies(self):
        try:
            result = subprocess.run(["pip", "install", "-r", file_path], capture_output=True, text=True)
            print(result.stdout)
            print(result.stderr)
            if result.returncode != 0:
                print(f"Error installing dependencies: Return code {result.returncode}")
        except Exception as e:
            print(f"Error installing dependencies: {e}")



# ##Check
# if __name__ == "__main__":
#     PlatformInstaller.main()
