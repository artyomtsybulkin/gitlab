sudo dnf install -y policycoreutils perl
# Check if opening the firewall is needed with: sudo systemctl status firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld


sudo dnf install postfix
sudo systemctl enable postfix
sudo systemctl start postfix

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

dnf install -y gitlab-ce

# Thank you for installing GitLab!
# GitLab was unable to detect a valid hostname for your instance.
# Please configure a URL for your GitLab instance by setting `external_url` configuration in /etc/gitlab/gitlab.rb file.
# Then, you can start your GitLab instance by running the following command:
#  sudo gitlab-ctl reconfigure

# For a comprehensive list of configuration options please see the Omnibus GitLab readme
# https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/README.md

# Help us improve the installation experience, let us know how we did with a 1 minute survey:
# https://gitlab.fra1.qualtrics.com/jfe/form/SV_6kVqZANThUQ1bZb?installation=omnibus&release=18-0

Default admin account has been configured with following details:
Username: root
Password: You didn't opt-in to print initial root password to STDOUT.
Password stored to /etc/gitlab/initial_root_password. This file will be cleaned up in first reconfigure run after 24 hours.