# Run Hugo in Docker with SSL

The easiest way to get a blog online with SSL and a valid domain!

## Docker Compose

In order for SSL Encryption to work, you will need to have a valid domain. You can get one from any DNS registrar of your choice, and setup the appropriate forwarding rules there too..

In the `docker-compose.yml` file, you will want to update the following ENV vars in the `web` portion of the file.

```
VIRTUAL_HOST=yourdomain.com
LETSENCRYPT_HOST=yourdomain.com
LETSENCRYPT_EMAIL=youremail@domain.com
```

Additionally, if you want to change the theme or baseURL for your website, you can add these to the `hugo` portion of the file.

```
HUGO_THEME=your-theme
HUGO_BASEURL=yourdomain.com
HUGO_REFRESH_TIMEOUT=3600
```

## Further Configuration

The `/src` directory is where you can modify all of hugo's settings, and when you re-run the `docker-compose` file those changes will be output to the `output` directory. You can add and reference themes like how you normally would using hugo outside of docker. 

## Credit to https://github.com/jojomi/docker-hugo for making the base image

This repository was a huge help for getting me started with this, but I felt there were enough gaps to fill and some cum
bersome usage that I should maintain my own version.


## Update Image on Hugo Update

```./update.sh [hugo_version_num]```
