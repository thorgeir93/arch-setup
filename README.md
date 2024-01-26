# Arch setup

For a fresh Arch install, here's Ansible project tree structure:

```
arch-setup/
├── inventory.ini
├── main.yml
└── roles/
    ├── base_setup/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── vars/
    │       └── main.yml
    ├── users/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── vars/
    │       └── main.yml
    ├── software/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── vars/
    │       └── main.yml
    ├── desktop_environment/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── vars/
    │       └── main.yml
    ├── network/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── vars/
    │       └── main.yml
    └── security/
        ├── tasks/
        │   └── main.yml
        └── vars/
            └── main.yml
```

Here's a brief description of each role:

1. **base_setup**: Basic system settings like timezone, locale, hostname, etc.

2. **users**: User creation, setting up .bashrc or .zshrc, ssh-keys, and other user-specific settings.

3. **software**: Installation of essential software packages, like your preferred text editor, development tools, etc.

4. **desktop_environment**: Setup for graphical environments, like GNOME, KDE, or i3.

5. **network**: Network configuration, such as setting up Wi-Fi, VPN, or firewall rules.

6. **security**: Enhanced security settings, perhaps including tools like `fail2ban`, `ufw` or security hardening settings.

Each role's `vars` folder can contain role-specific variables. For instance, in the `software` role, you might list the packages you want to install.

This structure is modular, and the great thing is that if you only need to update one part of your setup (like just adding a software package), you can run only the specific role instead of the entire playbook. Also, if you decide to switch from one desktop environment to another, you can modify just the `desktop_environment` role.


# ssh config

Recommend config file for personal usage:

```
Host github-thorgeir93
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_personal
```
    
