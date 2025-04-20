# 🐳 Self-Hosted SFTP Server (Docker)

This project sets up a simple and secure SFTP server using Docker and the [atmoz/sftp](https://hub.docker.com/r/atmoz/sftp) image.  
It creates a user with upload access and can be deployed locally or to any cloud platform that supports Docker (like Fly.io, Railway, Render, etc.).

---

## 📦 What You Get

- SFTP server running on Docker
- Default user: `user`
- Default password: `password`
- Upload directory: `/home/user/upload`
- Easy-to-configure setup using only a `Dockerfile`

---

## 🛠 Requirements

- [Docker](https://www.docker.com/) (for local use)  
- OR a cloud platform that supports Docker (e.g. Fly.io)

---

## 🚀 Quick Start

### 1. Clone this repo

```bash
git clone https://github.com/Flibbertigibbert/Sftp_server.git
cd Sftp_server
```


### Step 2: Build and Run the Container

```bash
docker build -t my-sftp .
docker run -p 2222:22 -d my-sftp
```

### Step 3: Connect via SFTP

```bash
sftp -P 2222 user@localhost
```

You’ll be placed into the `upload/` directory where you can transfer files.

---

## 🌍 Deploy Online Using Fly.io (No Docker Install Required)

### Step 1: Install Fly CLI

Follow instructions at: https://fly.io/docs/hands-on/install-flyctl/

### Step 2: Launch the App

```bash
flyctl launch
```

- Select an app name and region.
- Fly will auto-detect the Dockerfile and generate a `fly.toml`.

### Step 3: Deploy It

```bash
flyctl deploy
```

### Step 4: Connect to Your Server

Once deployed, Fly will assign a public IP. Use it like this:

```bash
sftp user@<your-app-ip>
```

You can now access your hosted SFTP server from anywhere.

---

## 🔁 Customizing Users

To change the username, password, or upload directory, edit the `CMD` line in your `Dockerfile`:

```Dockerfile
CMD ["youruser:yourpassword:::yourdirectory"]
```

- You can also add multiple users:  
  `CMD ["user1:pass1:::folder1", "user2:pass2:::folder2"]`

---


## 📁 Project Structure

```
sftp-docker-server/
├── Dockerfile
└── README.md
```

---

## 🧾 License

This project is licensed under the MIT License.  
Feel free to modify and use for personal or commercial purposes.

---
