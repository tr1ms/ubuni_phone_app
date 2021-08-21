# ubuni_phone_app

Ubuni Interview Coding Challenge

## Constrains

- A mobile application (3 views)
  - A home view
  - A view to list all phones
  - A view of a single phone

## Requests

### List of all phones

```sh
  $ curl -s https://www.paa.ubuni.co.tz/phones | json_pp

  [
   {
      "Brand" : "Techno",
      "id" : 1,
      "image_url" : "https://www.paa.ubuni.co.tz/techno.jpg",
      "name" : "F1"
   },
   {
      "Brand" : "Samsung",
      "id" : 2,
      "image_url" : "https://www.paa.ubuni.co.tz/samsung.jpg",
      "name" : "A18"
   },
   {
      "Brand" : "Apple",
      "id" : 3,
      "image_url" : "https://www.paa.ubuni.co.tz/iphone.jpg",
      "name" : "IPhone 12"
   },
   ...
 ]
```

### Viewing a Single phone

```sh
  $ curl -s https://www.paa.ubuni.co.tz/phones/:id | json_pp

  {
   "Brand" : "Apple",
   "id" : 10,
   "image_url" : "https://www.paa.ubuni.co.tz/oppo.jpeg",
   "name" : "A30"
  }

```
