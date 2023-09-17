<h1 align="center">
  <a href="https://generatemofh.my.to">
    <img alt="GenerateMOFH" src="https://raw.githubusercontent.com/9-SK/GenerateMOFH/dev/assets/default/img/GenerateMOFH.png" height="200">
  </a>
</h1>

> **Note**
> GenerateMOFH is a test product and not yet stable. Please be patient as we work hard to bring you GenerateMOFH.

## What is GenerateMOFH?
GenerateMOFH is a client panel that leverages various systems, including MOFH, to provide users with rich experiences. Currently, we offer the following features:
[![License](https://img.shields.io/badge/License-GPL_2.0-orange)](LICENSE)
[![Version](https://img.shields.io/badge/Version-v0.1.1-informational)](https://github.com/GenerateApps/GenerateMOFH/releases/latest)
![Build](https://img.shields.io/badge/Build-Passed-brightgreen)
![Interface](https://img.shields.io/badge/Interface-Tabler-lightgreen)
![Development](https://img.shields.io/badge/Development-Decrepated_Soon-inactive)
![Dependencies](https://img.shields.io/badge/Dependencies-PHP,_MySQL,_OpenSSL,_cUrl-red)

### Features
- User management
- Theme management
- Support tickets
- Administrative backend
- Integration with:
  - MyOwnFreeHost
  - Captcha support from Google reCAPTCHA, CryptoLoot, hCaptcha, Cloudflare Turnstile
  - Integration for GoGetSSL, Site.pro, Wayback Machine, SMTP
- Update manager
- Multi-lingual

### Examples of free web hosts that use GenerateMOFH
- [Fluxum](https://app.fluxum.eu.org/)
- [GenerateHost](https://app.generatehost.com/)

## Getting started

### Requirements
Your server needs to meet the following minimum requirements to run GenerateMOFH:
- PHP 7.2 or above. (PHP 8.0, 8.1 & 8.2 are not currently supported)
- MySQL 5.7 or above.
- A valid, trusted SSL certificate from a certificate authority like [Let's Encrypt](https://letsencrypt.org).

### Installation 
The installation of GenerateMOFH is much easier than you think!
1. Download the GenerateMOFH installation files [here](https://github.com/9-SK/GenerateMOFH/releases/latest). Alternatively, if you want the latest development version, you can get it [here](https://github.com/9-SK/GenerateMOFH/archive/refs/heads/dev.zip).
2. Extract the files and upload the contents to your web hosting account. 
3. Create a new database for GenerateMOFH.
4. Go to `https://{your.domain}/{generatemofh-directory}/install.php` and click on the 'Get Started' button.
5. Set your website's `Website URL`, `Cookie Prefix`, enable `CSRF Protection`, and click the 'Next Step' button.
6. Edit the database credentials and click the 'Next Step' button (this will automatically import tables and records into the database).
7. Register an admin account and log in to your admin panel. 
8. Replace the logo and favicon located in `assets/default/img/` with your own.
9. Set up SMTP (see below for some services you can use).
10. All done! 

### iFastNet Coupon Code
You can get a 29% discount on any iFastNet paid product by using GAREA29!

### Links
Coming soon

### SMTP
Here are some widely used SMTP services. They have free plans with some limitations, but most importantly, they are compatible with GenerateMOFH:
- [Mailgun](https://www.mailgun.com/). 
  > **Note**  
  > Mailgun seems to offer only a trial plan for a month, and without adding a credit card, you are only authorized to send emails to 5 recipients. Therefore, you may want to choose another service.
- [Mailjet](https://mailjet.com/).
- [SendGrid](https://sendgrid.com/free/).
- [Smtp2go](https://www.smtp2go.com/)
- [Brevo (formerly Sendinblue)](https://www.brevo.com/)
- Gmail SMTP

### Help
If you require assistance, please proceed to [our Discord server](link), where you can find the answers to many questions and also ask your own.  
You can also [open an issue here](https://github.com/9-SK/GenerateMOFH/issues/new) if you have discovered a bug or have an issue, although the server is still the preferred way, especially for feature requests. In any way, please ensure your topic has not been previously discussed, and if it has, contribute to that discussion instead of making a new one when you can. You can also submit feature requests [here](link).

## Copyright
This build is created and maintained by [9-SK](https://github.com/9-SK) and its contributors. Code released under [the GPL-2.0 license](LICENSE).  
Fork of the client area [Xera](https://github.com/mahtab2003/Xera).
