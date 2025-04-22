import os

# Get the environment variable "HELLO_WORLD"
hello_world_value = os.environ.get("HELLO_WORLD")

# Print the environment variable
if hello_world_value is not None:
    print(f"HELLO_WORLD environment variable: {hello_world_value}")
else:
    print("HELLO_WORLD environment variable is not set")

# Print the secret file
try: 
    with open("secret.txt", "r") as f:
        print(f"Secret file content: {f.read()}")
except FileNotFoundError:
    print("Secret file not found")

# Print the current working directory
print(f"Current working directory: {os.getcwd()}")
