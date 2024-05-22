<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

# Laravel Updater

[![Licence](https://img.shields.io/github/license/Ileriayo/markdown-badges?style=for-the-badge)](./LICENSE)

## Support The Project

Your support is greatly appreciated and will help ensure the project's continued development and improvement. Thank you for being a part of the community!

---

- LTC: `LPV7EqTdEYjnFsBwaCtKuAB2XajMgxEh82`
- USDT (BEP20): `0x4603b2b4e2f2a699cb7a65f6f564bbd5b91970cd`
- USDT (TRC20): `TGMQjS7HHwXTtLdpgYdHc2GZZGEcGLrhca`

---

## Overview

This bash script is tailored for the maintenance and updating of Laravel web application projects hosted on a Git repository.

## Key Features

### Execution Wrapper (exe function)
- This function enhances the clarity of the script's output by visually separating each command's output and displaying a descriptive heading for each command being executed.
- If any command fails during execution (non-zero exit status), the script will terminate and display an error message.

### Fetching Updates
- Detects the currently checked-out branch.
- Fetches updates from the origin repository.
- Displays the list of files that will be modified or changed by an upcoming update.

### Prompt for Update Confirmation
- Before applying the updates, the user is prompted to hit enter to confirm the update process for the current directory.

### Laravel-Specific Update and Maintenance
- Temporarily brings the Laravel application down (making it inaccessible to users) to ensure safe updating.
- Resets the repository to the latest commit.
- Pulls the latest updates from the origin repository.
- Updates the PHP dependencies using Composer, which is essential for Laravel projects.
- Runs Laravel's database migrations.
- Clears several Laravel caches (authentication resets, configuration, views).
- Adjusts ownership and permissions for necessary directories, a common requirement for Laravel deployments.

### Front-end Asset Compilation
- Installs any new or updated Node.js packages.
- Compiles assets for production using Laravel Mix.

### Supervisor Management
- Reloads the Supervisor configuration.
- (Commented out) Provides commands to restart specific Supervisor workers and to start Supervisor with a custom configuration.

### Finalizing the Update
- Fixes group ownership and permissions for the Laravel storage and cache directories.
- Brings the Laravel application back online, making it accessible to users.

## Usage

To execute the script, simply run:

```
bash update.sh
```

## Support The Project

If you find this script helpful and would like to support its development and maintenance, please consider the following options:

- **_Star the repository_**: If you're using this script from a GitHub repository, please give the project a star on GitHub. This helps others discover the project and shows your appreciation for the work done.

- **_Share your feedback_**: Your feedback, suggestions, and feature requests are invaluable to the project's growth. Please open issues on the GitHub repository or contact the author directly to provide your input.

- **_Contribute_**: You can contribute to the project by submitting pull requests with bug fixes, improvements, or new features. Make sure to follow the project's coding style and guidelines when making changes.

- **_Spread the word_**: Share the project with your friends, colleagues, and social media networks to help others benefit from the script as well.

- **_Donate_**: Show your appreciation with a small donation. Your support will help me maintain and enhance the script. Every little bit helps, and your donation will make a big difference in my ability to keep this project alive and thriving.

---

- LTC: `LPV7EqTdEYjnFsBwaCtKuAB2XajMgxEh82`
- USDT (BEP20): `0x4603b2b4e2f2a699cb7a65f6f564bbd5b91970cd`
- USDT (TRC20): `TGMQjS7HHwXTtLdpgYdHc2GZZGEcGLrhca`

---

Your support is greatly appreciated and will help ensure the project's continued development and improvement. Thank you for being a part of the community!

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

---

## License

This project is released under the MIT License.
