# Cloud Sandbox Mirror Devcontainer

This repository contains a Devcontainer configuration designed to mirror the environment of an Anthropic cloud sandbox. It provides a consistent, pre-configured development environment on Ubuntu 22.04 with all necessary language runtimes, package managers, and system utilities.

## Features
- **Ubuntu 22.04** base image.
- **Language Support**: Python, Node.js, Go, Rust, Java, Ruby, PHP.
- **Development Tools**: GCC, Make, CMake, Git, Docker (client).
- **System Utilities**: RiPGrep, JQ, htop, tree, etc.
- **Database Clients**: SQLite, PostgreSQL-client, Redis-tools.
- **Validation**: Includes a validation script `test_env.sh` to ensure the environment is correctly configured.

## Usage
1.  Open this project in VS Code.
2.  If you have the "Dev Containers" extension installed, it will prompt you to "Reopen in Container".
3.  Alternatively, use the Command Palette: `Dev Containers: Reopen in Container`.

## Validation
To verify the environment, you can run the validation script from within the container:
```bash
./test_env.sh
```

## Documentation
For more details, including agent guidelines and documentation references, see:
- [AGENTS.md](./AGENTS.md)
- [GEMINI.md](./GEMINI.md)
- [CLAUDE.md](./CLAUDE.md)
