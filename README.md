# Jekyll::PrismCompileBlock

Liquid tag for pre-processing [Prism.js](https://prismjs.com/) highlights

```
{% prismc javascript %}
var gem = "jekyll-prismjs-compile";

console.log("gem");
{% endprismc %}
```

## Installation

Add this line to your application's Gemfile:

    $ gem 'jekyll-prismjs-compile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-prismjs-compile

Then add the following to your site's `_config.yml`:

```
plugins:
  - jekyll-prismjs-compile
```

💡 If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

## Usage

Use the tag as follows in your Jekyll pages, posts and collections:

```liquid
{% prismc javascript %}
var gem = "jekyll-prismjs-compile";

console.log("gem");
{% endprismc %}
```

Make sure that you have the prism css included:
```html
<link href="prism.css" rel="stylesheet" type="text/css">
```

💡 You don't have to include `prism.js`
