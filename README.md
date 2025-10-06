# Enshrouded Dedicated Server

This project lets you spin up an Enshrouded dedicated server quickly and easily, using the power of Docker and Docker Compose.

---

## 📦 Overview

- **`start.sh`** – Starts the server, and auto-generates passwords for admins, friends, and guests.
- **`stop.sh`** – Stops the container and (optionally) checks in changes to git.
- **`wipe.sh`** – Removes all containers, and volumes (useful for a fresh start).

---

## ✅ Prerequisites

| Platform    | Required Software | How to Get It                                                                   |
|-------------|-------------------|---------------------------------------------------------------------------------|
| **Windows/macOS** | Docker Desktop | https://www.docker.com/products/docker-desktop                                  |
| **Windows** | Git Bash | https://git-scm.com/downloads/win                                               |
| **Linux**   | Docker Desktop (or Docker Engine) | Follow the official Docker docs for your OS or install via your package manager |

> **Important for Windows**  
> *Docker Desktop* **must be running** before you start any of the scripts.  
> If it’s not running, you’ll see errors when trying to start the containers.

---

## ⚙️ Installation

### 1. Install Docker Desktop
1. Download the installer from the link above.
2. Run the installer and follow the on‑screen instructions.
3. After installation, **restart your computer** (recommended).
4. Open Docker Desktop and make sure the icon in the system tray is green/grey.

### 2. Install Git Bash
1. Download the installer from the link above.
2. Run the installer and accept the defaults.
3. After installation, you can open Git Bash from the Start menu.

---

## ⚠️ IMPORTANT
- Passwords for server roles are auto‑generated only when you run `start.sh` and if the related files do not already exist.
- The generated passwords are stored in the `secrets` folder.
- Check this folder after starting the containers to retrieve the passwords for connecting to the server.

---

## 🚀 Running the Project

### Windows (Double‑Click Method)

1. **Open the folder** where the project files are located (the folder shown in the Project View).
2. **Right‑click `start.sh`** → **Open with** → **Git Bash**.
3. A terminal window will appear and the containers will start.
4. To stop the containers, right‑click `stop.sh` and choose **Open with → Git Bash**.

> **Tip:** Keep the Docker Desktop engine running at all times.  
> If the Docker icon turns red or shows an error, click it and select **Restart Docker**.

### Linux / macOS (Terminal Method)

```shell script
# Open a terminal and navigate to the project folder
cd /path/to/enshrouded-template

# Start the containers
./start.sh

# Stop the containers
./stop.sh
```


---

## 🗑️ Wiping the Environment

If you want to remove **all** containers, and volumes:

1. **Windows** – Right‑click `wipe.sh` → **Open with → Git Bash**.
2. **Linux/macOS** – `./wipe.sh` in the terminal.

> **Caution:** This will delete *all* data related to this project. Use only if you want a completely clean state.

---

## 📚 FAQ

| Question | Answer |
|----------|--------|
| **What if `start.sh` fails?** | Make sure Docker Desktop is running. Check the terminal output for error messages. |
| **Do I need admin rights to install Docker?** | Yes, Docker Desktop requires administrative privileges during installation. |
| **Can I run this on a server without a GUI?** | Yes, use the terminal method on Linux or macOS. Ensure Docker Engine is installed and running. |
| **How do I know the containers are running?** | Docker Desktop will show the containers in the “Containers” tab. |