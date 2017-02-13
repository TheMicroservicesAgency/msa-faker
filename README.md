
# msa-faker

Faker data generator, built around the [faker](https://github.com/stympy/faker) ruby gem.

Can generate names, addresses, phone numbers and much more. Also comes with support for various locales.

## Quick start

Execute the microservice container with the following command :

    docker run -ti -p 9902:80 msagency/msa-faker

## Example(s)

    $ curl http://localhost:9902/faker/name
    Warren Bins

    $  curl http://localhost:9902/faker/name?locale=fr
    Noémie Clement

    $ curl http://localhost:9902/faker/address/city?locale=sv
    Östertuna

## Endpoints

The locale parameter can be optionally supplied to any endpoint to change the locality of the generated data. This has mainly an effect on the endpoints like **/faker/name** and **/faker/address**, but will probably not change anything on endpoints like **/faker/code** or **/faker/internet**. You can check the support for each locale at [https://github.com/stympy/faker/tree/master/lib/locales](https://github.com/stympy/faker/tree/master/lib/locales), and get the list with:

- GET [/faker/locales](/faker/locales) : Get the list of supported locales

Check out the [swagger docs](/swagger/#/)for the full list of endpoints. Here are the main ones :

- GET [/faker/name](/faker/name)
- GET [/faker/phone-number](/faker/phone-number)
- GET [/faker/address/city](/faker/address/city)
- GET [/faker/address/street-name](/faker/address/street-name)
- GET [/faker/address/zip-code](/faker/address/zip-code)
- GET [/faker/address/time-zone](/faker/address/time-zone)
- GET [/faker/address/state](/faker/address/state)
- GET [/faker/address/country](/faker/address/country)
- GET [/faker/business/credit-card/number](/faker/business/credit-card/number)
- GET [/faker/commerce/department](/faker/commerce/department)
- GET [/faker/company/name](/faker/company/name)
- GET [/faker/company/catch-phrase](/faker/company/catch-phrase)
- GET [/faker/company/duns](/faker/company/duns)
- GET [/faker/book/title](/faker/book/title)
- GET [/faker/book/author](/faker/book/author)
- GET [/faker/book/publisher](/faker/book/publisher)
- GET [/faker/educator/university](/faker/educator/university)
- GET [/faker/educator/secondary-school](/faker/educator/secondary-school)
- GET [/faker/team/name](/faker/team/name)
- GET [/faker/team/sport](/faker/team/sport)
- GET [/faker/bitcoin/address](/faker/bitcoin/address)
- GET [/faker/codes/isbn](/faker/codes/isbn)
- GET [/faker/codes/imei](/faker/codes/imei)
- GET [/faker/color/hex](/faker/color/hex)
- GET [/faker/color/rgb](/faker/color/rgb)
- GET [/faker/color/hsl](/faker/color/hsl)
- GET [/faker/internet/email](/faker/internet/email)
- GET [/faker/internet/domain-name](/faker/internet/domain-name)
- GET [/faker/internet/ipv4](/faker/internet/ipv4)
- GET [/faker/internet/ipv6](/faker/internet/ipv6)
- GET [/faker/file/name](/faker/file/name)
- GET [/faker/file/extension](/faker/file/extension)
- GET [/faker/file/mime-type](/faker/file/mime-type)
- GET [/faker/hacker/abbreviation](/faker/hacker/abbreviation)
- GET [/faker/crypto/md5](/faker/crypto/md5)
- GET [/faker/crypto/sha1](/faker/crypto/sha1)
- GET [/faker/crypto/sha256](/faker/crypto/sha256)
- GET [/faker/app/name](/faker/app/name)
- GET [/faker/slack-emoji](/faker/slack-emoji)
- GET [/faker/superhero/name](/faker/superhero/name)
- GET [/faker/starwars/character](/faker/starwars/character)
- GET [/faker/starwars/planet](/faker/starwars/planet)
- GET [/faker/space/planet](/faker/space/planet)
- GET [/faker/space/moon](/faker/space/moon)
- GET [/faker/space/agency](/faker/space/agency)
- GET [/faker/gameofthrones/character](/faker/gameofthrones/character)
- GET [/faker/pokemon/name](/faker/pokemon/name)
- GET [/faker/beer/name](/faker/beer/name)
- GET [/faker/beer/alcohol](/faker/beer/alcohol)
- GET [/faker/lorem/paragraphs](/faker/lorem/paragraphs)
- GET [/faker/hipster/paragraphs](/faker/hipster/paragraphs)

## Standard endpoints

- GET [/ms/version](/ms/version) : returns the version number
- GET [/ms/name](/ms/name) : returns the name
- GET [/ms/readme.md](/ms/readme.md) : returns the readme (this file)
- GET [/ms/readme.html](/ms/readme.html) : returns the readme as html
- GET [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation
- GET [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation
- GET [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx
- GET [/nginx/stats.html](/nginx/stats.html) : returns a dashboard displaying the stats from Nginx

## About

A project by the [Microservices Agency](http://microservices.agency).
