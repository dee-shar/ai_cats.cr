# ai_cats.cr
Web-API for [ai-cats.net](https://ai-cats.net) the AI Cat API. Cat images for everyone!

## Example
```cr
require "./ai_cats"

ai_cats = AiCats.new
images_count = ai_cats.get_cat_images_count()
puts images_count
```
