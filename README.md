# Clickjacking Tester

A simple tool designed to test websites for **Clickjacking vulnerabilities**. This tool allows users to verify if a website is vulnerable to clickjacking attacks by embedding the target URL in an iframe.

# 🛡️ What is Clickjacking?

**Clickjacking** is a type of web attack where an attacker tricks users into clicking something different from what they perceive, potentially leading to unwanted actions. A vulnerable website can be framed (embedded in an invisible iframe) on a malicious site, causing the user to unknowingly interact with the embedded site. This can lead to unintended actions, like changing settings or sharing sensitive information without their knowledge.

Clickjacking often takes advantage of websites that don’t have proper protections like **X-Frame-Options** headers, which prevent embedding in iframes.

### Example:
When a website is vulnerable, it can be loaded into an invisible frame on another website, allowing an attacker to perform actions on behalf of the victim.

---

## 🖼️ Screenshot of Clickjacking:

Below is an infographic representing how clickjacking works:

![Clickjacking Infographic](https://portswigger.net/web-security/images/clickjacking-infographic.svg)

---

### How to Protect Against Clickjacking:
- Use **X-Frame-Options** HTTP headers with values like `DENY` or `SAMEORIGIN` to prevent iframe embedding.
- Implement a **Content Security Policy (CSP)** with the `frame-ancestors` directive to control which domains can embed your website.

---

## 🚀 Features
- **Detect Clickjacking Vulnerabilities**: Quickly test if a website is susceptible to clickjacking.
- **Browser Choice**: Supports testing across multiple browsers (Google Chrome, Firefox, Brave).
- **Easy to Use**: Simple bash script requiring minimal setup.

---

## 📥 Installation

To install and run the tool, follow the steps below:

```bash
# Clone the repository
git clone https://github.com/SHXMIM/clickjacking-tester.git

# Navigate to the directory
cd clickjacking-tester

# Set executable permissions for the script
chmod 755 clickjacking-tester.sh

# Copy the script to your desired directory
cp ./clickjacking-tester.sh /home/user/Downloads/

# Exit from the current directory
exit

# Navigate to the Downloads directory
cd Downloads

# Run the script
./clickjacking-tester.sh

```
## ⚠️ Warning
This tool only works without root privileges. Running it with root may cause issues with browser execution.

## 🛠 Usage Example
Once the script is executed, follow the prompts to test a URL for clickjacking vulnerability.

### ./clickjacking-tester.sh

#### Step 1: Paste the URL you want to test for clickjacking.
#### Step 2: Select the browser you prefer (e.g., Google Chrome, Firefox, Brave).
#### Step 3: If the website is vulnerable, it will display inside the iframe. If it is not vulnerable, the site will not show up inside the iframe.

## 🖼️ Screenshot
Below is an infographic representing how clickjacking works:
![click jacking image](https://portswigger.net/web-security/images/clickjacking-infographic.svg)


## 🤝 Contributing
Feel free to contribute by creating pull requests or submitting issues. All contributions are welcome!

## 🧑‍💻 Author
### SHAMEEM KABEER
#### A passionate cybersecurity enthusiast who enjoys developing simple, effective tools to identify vulnerabilities.


