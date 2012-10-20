# StringHelpers
StringHelpers extend some instance methods to String class

## Install

```sh
gem install string_helpers
```
or add to your Gemfile

```sh
gem string_helpers
```

## Usage
Slug 
```sh
"Jhon Doe".slug! #=> "Jhon-Doe"
```
Slugged?
```sh
"Jhon Doe".slugged? #=> false
"Jhon-Doe".slugged? #=> true
"Jhon---".slugged?  #=> true
"Jhon".slugged?     #=> true
```

Fill
```sh
"Jhon Doe".fill!(10) #=> "Jhon Doe  "

"Jhon Doe".fill(5) #=> "Jhon..."
```

Apostrophe's 
```sh
"Jhon Doe".apostrophe! #=> "Jhon Doe’s"

"Marrys".apostrophe! #=> "Marrys’"
```

Camelize
```sh
"jhon doe and marry".camelize! #=> "JhonDoeAndMarry"
```

Blank?
```sh
" ".blank? #=> true
" a".blank? #=> false
```

Blank!
```sh
" a".blank! #=> ""
```

Camelize
```sh
"jhon doe and marry".camelize! #=> "JhonDoeAndMarry"
```

## License
StringHelper is available under the MIT license.



