# CBDC Simulator NGINX

This app leverages NGINX to handle redirection of incoming traffic, specifically routing requests from `data-seed.formulachain.com` to a specified endpoint.

## Description

The CBDC Simulator NGINX utilizes NGINX as a reverse proxy to manage all incoming requests directed to `data-seed.formulachain.com`. It enables the configuration of a target URL dynamically, ensuring smooth redirection of traffic.

## Usage

### Prerequisites

- Docker installed on your system

### Installation

To run the CBDC Simulator NGINX app:

1. Clone this repository.
2. Customize the `data-seed.formulachain.com.conf` file to set the `proxy_pass` variable as needed.
3. Build the Docker container:

   ```bash
   docker build -t cbdc-simulator-nginx .
   ```

4. Run the Docker container:

   ```bash
   docker run -d -p 80:80 cbdc-simulator-nginx
   ```

## Configuration

The NGINX configuration file, `data-seed.formulachain.com.conf`, controls the redirection settings. Ensure this file is correctly set to specify the target URL.

### Customizing the Configuration

To update the redirection:

1. Access the `data-seed.formulachain.com.conf` file.
2. Modify the `proxy_pass` directive to your desired target URL.

## License

This project is licensed under the [MIT License](link-to-your-license-file).
