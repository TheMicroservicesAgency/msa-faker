
# msa-faker

Faker data generator, built around the [faker](https://github.com/stympy/faker) ruby gem.

Can generate names, addresses, phone numbers and much more. Also comes with support for various locales.

## Quick start

Execute the microservice container with the following command :

```
docker run -ti -p 9902:80 msagency/msa-faker
```

## Example(s)

```
$ curl http://localhost:9902/faker/name
Warren Bins

$  curl http://localhost:9902/faker/name?locale=fr
Noémie Clement

$ curl http://localhost:9902/faker/address/city?locale=sv
Östertuna

```

## Endpoints

The locale parameter can be optionnaly supplied to any endpoint to change the locality of the generated data. This has mainly an effect on the endpoints like **/faker/name** and **/faker/address**, but will probably not change anything on endpoints like **/faker/code** or **/faker/internet**. You can check the support for each locale at [https://github.com/stympy/faker/tree/master/lib/locales](https://github.com/stympy/faker/tree/master/lib/locales), and get the list with:

- [/faker/locales](/faker/locales) : Get the list of supported locales

Check out the [swagger docs](/swagger/#/)for the full list of endpoints. Here are the main ones :

- [/faker/name](/faker/name)
- [/faker/phone-number](/faker/phone-number)
- [/faker/address/city](/faker/address/city)
- [/faker/address/street-name](/faker/address/street-name)
- [/faker/address/zip-code](/faker/address/zip-code)
- [/faker/address/time-zone](/faker/address/time-zone)
- [/faker/address/state](/faker/address/state)
- [/faker/address/country](/faker/address/country)
- [/faker/business/credit-card/number](/faker/business/credit-card/number)
- [/faker/commerce/department](/faker/commerce/department)
- [/faker/company/name](/faker/company/name)
- [/faker/company/catch-phrase](/faker/company/catch-phrase)
- [/faker/company/duns](/faker/company/duns)
- [/faker/book/title](/faker/book/title)
- [/faker/book/author](/faker/book/author)
- [/faker/book/publisher](/faker/book/publisher)
- [/faker/educator/university](/faker/educator/university)
- [/faker/educator/secondary-school](/faker/educator/secondary-school)
- [/faker/team/name](/faker/team/name)
- [/faker/team/sport](/faker/team/sport)
- [/faker/bitcoin/address](/faker/bitcoin/address)
- [/faker/codes/isbn](/faker/codes/isbn)
- [/faker/codes/imei](/faker/codes/imei)
- [/faker/color/hex](/faker/color/hex)
- [/faker/color/rgb](/faker/color/rgb)
- [/faker/color/hsl](/faker/color/hsl)
- [/faker/internet/email](/faker/internet/email)
- [/faker/internet/domain-name](/faker/internet/domain-name)
- [/faker/internet/ipv4](/faker/internet/ipv4)
- [/faker/internet/ipv6](/faker/internet/ipv6)
- [/faker/file/name](/faker/file/name)
- [/faker/file/extension](/faker/file/extension)
- [/faker/file/mime-type](/faker/file/mime-type)
- [/faker/hacker/abbreviation](/faker/hacker/abbreviation)
- [/faker/crypto/md5](/faker/crypto/md5)
- [/faker/crypto/sha1](/faker/crypto/sha1)
- [/faker/crypto/sha256](/faker/crypto/sha256)
- [/faker/app/name](/faker/app/name)
- [/faker/slack-emoji](/faker/slack-emoji)
- [/faker/superhero/name](/faker/superhero/name)
- [/faker/starwars/character](/faker/starwars/character)
- [/faker/starwars/planet](/faker/starwars/planet)
- [/faker/space/planet](/faker/space/planet)
- [/faker/space/moon](/faker/space/moon)
- [/faker/space/agency](/faker/space/agency)
- [/faker/gameofthrones/character](/faker/gameofthrones/character)
- [/faker/pokemon/name](/faker/pokemon/name)
- [/faker/beer/name](/faker/beer/name)
- [/faker/beer/alcohol](/faker/beer/alcohol)
- [/faker/lorem/paragraphs](/faker/lorem/paragraphs)
- [/faker/hipster/paragraphs](/faker/hipster/paragraphs)

## Standard endpoints

- [/ms/version](/ms/version) : returns the version number

- [/ms/name](/ms/name) : returns the name

- [/ms/readme.md](/ms/readme.md) : returns the readme (this file)

- [/ms/readme.html](/ms/readme.html) : returns the readme as html

- [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation

- [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation

- [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx

- [/nginx/stats.html](/nginx/stats.html) : returns a dashboard displaying the stats from Nginx


## About

A project by the [Microservices Agency](https://microservices.agency).
