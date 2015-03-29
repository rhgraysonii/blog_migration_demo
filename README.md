# DB To Jekyll Migration Demo

## About
This example uses the [Hyde to Jekyll](link) gem in order to migrate a database-backed blog to a simple
static site managed by [Jekyll](link)

## Use
```RUBY
cd example
bundle
rake db:create
rake db:migrate
rake db:test:prepare
rake db:seed
rails c
HydeToJekyll.convert(Post.all)
#=> now a jekyll blog w/your posts will be in the dir you perform this operation in
```

## Notes
This is a WIP. Currently it must receive a `ActiveModel.all` object, and it does not properly
convert all HTML to markdown (only div and p tags, this is being worked on). I hope it sparks
and interest. I was just sick of having to set up a server to host a blog.
