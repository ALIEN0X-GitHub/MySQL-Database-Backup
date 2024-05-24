## MySQL Database Backup Batch Script

This batch script automates the backup process for a MySQL database using mysqldump.

## Overview

This batch script simplifies the task of backing up a MySQL database by utilizing the `mysqldump` utility. It allows you to specify the database credentials, backup directory, and automates the process of creating timestamped backup files.

## Prerequisites

Before using this script, ensure the following prerequisites are met:

- **MySQL Database**: You should have a MySQL database that you want to back up.
- **mysqldump Utility**: Ensure that the `mysqldump` utility is installed on your system and accessible from the command line.
- **Batch Script Environment**: You need to run this batch script in an environment where batch scripting is supported, typically on Windows systems.

## Usage

1. **Configure Database Credentials**: Open the script in a text editor and set the `DB_USER`, `DB_PASS`, and `DB_NAME` variables to match your MySQL database credentials.

2. **Set Backup Directory**: Set the `BACKUP_DIR` variable to specify the directory where backup files will be stored.

3. **Run the Script**: Simply execute the batch script. It will automatically dump the specified MySQL database and save the backup file with a timestamped filename in the specified backup directory.

## Customization

- **Backup Directory**: You can customize the backup directory by modifying the `BACKUP_DIR` variable.
- **Filename Format**: If you prefer a different filename format for the backup files, you can modify the `timestamp` variable in the script to suit your needs.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE).

