# [DEMO](http://nestabp.briangonzalez.org)

# Getting Started
Nesta Boilerplate is simple to setup and comes with baked-in support for [HTML Boilerplate](http://html5boilerplate.com/), [Compass](http://compass-style.org/) (and Sass/Haml), [Semantic GS](http://semantic.gs/), [Capistrano](https://github.com/capistrano/capistrano/wiki/Documentation-v2.x), and [jQuery](http://jquery.com/).

First things first, learn about [Nesta](http://nestacms.com/) then get started like so:
    $ git clone git@github.com:briangonzalez/nesta-boilerplate.git
    $ cd nesta-boilerplate
    $ bundle
    $ shotgun config.ru

Then point your browser to [http://127.0.0.1:9393/](http://127.0.0.1:9393/). And voila, you're rockin' some _Nesta Boilerplate_ goodness.

By default, Capistrano is setup to deploy from your current directory, no need to setup a git repo if you don't want. I would, however, recommend creating one and modifying `config/deploy.rb` to use git.

Also, you'll want to edit `config/deploy.rb` with all of your server-specific info.


## Credit where credit's due
Many tips 'n tricks were taken from [Wynn Netherland's Nesta blog](https://github.com/pengwynn/wynn), [this post](http://scott-martin.com/setting-up) by Scott Martin, and Adam Stac's [Nesta Boostrap](https://github.com/adamstac/nesta-bootstrap). And of course, thanks to [Graham Ashton](http://twitter.com/grahamashton) for creating Nesta CMS.