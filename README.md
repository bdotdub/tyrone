![tyrone](http://cloud.github.com/downloads/chrislloyd/tyrone/logo.png)

<small>a rapid prototyping fix. tyrone be great with uis. he loves em so much and will care the shit out of them. my boy tyrone is definitely the right man for the job, i aint playin. by [the poacher](http://thelincolnshirepoacher.com).</small>

It's always better to work from the UI down. Nobody cares about what database you are using or if you have 100% test coverage if the app itself _sucks_. Tyrone likes UIs. Like his community boxing gym, he likes to encourage good practices right from the start. He helps you get up and running prototyping UIs as quickly as possible so you can't procrastinate solving the real problems in your app.

(For more information about Tyrone's intentions, please read the [associated article](http://thelincolnshirepoacher.com/pages/databases-are-for-pussies))

![screenshot](http://cloud.github.com/downloads/chrislloyd/tyrone/tyrone-0.1.0.png)


## Installing

    gem install tyrone

Then, to get Tyrone started on your jobs directory:

    tyrone init

Bada bing! To make a new mockup a convenience helper is

    tyrone mock "my awesome new feature"

## Running

    rake dev

Then open up [http://localhost:4567](http://localhost:4567)

## Philosophy

  * **Undefined scope is bad**. So define it quickly.
  * **Mockups are not apps**. They shouldn't have tests. They shouldn't support IE.
  * **Sensible Power**. Good defaults for dev but power when you need it.

## Features

Tyrone believes in tough love. You're going to have to do a lot of work yourself. However, he does want to give the pups a head-start. Your job uses HTML 5 and comes with a HTML 5 `reset.css`.

Straight out of compton, Tyrone be givin' u some crunk prototyping j-shizzle.

  1. [states.js](http://github.com/toolmantim/states.js) &mdash; [t-star](http://toolmantim.com)'s script lets you hide and show bits of your UI so you can simulate state. For example toggle a user's account controls. Think [Polypage](http://github.com/andykent/polypage) on a diet.
  2. [jquery.grid.js](http://github.com/quackingduck/jquery.grid.js) &mdash; A handy tool which overlays vertical and horizontal grids when SHIFT-v or SHIFT-h are pressed. You'll have to initialise it yourself, though. Big ups [byrne-diddy](http://myles.id.au).

What choo get is just a [Sinatra](http://sinatrarb.com) app, so everything you can do in Sinatra you can do in Tyrone. Rather than the views directory, you now have `mockups`.

Some helpers are:

  * `hidden` &mdash; Just returns `{:style => 'display:none'}` so you can quickly hide elements. Useful when doing JS hiding and showing.
  * `mockup_path(mockup)` &mdash; Returns a URL to another mockup.

To run the local server just type `rake dev`. If you then go to [localhost:4567](http://localhost:4567) you should be redirected to the '/mockups' page. This will show you an index of all the mockups you have. Often you want prototypes to behave like real apps so to set the root page just override it in your `app.rb`:

    get '/' do
      haml :my_index
    end

The `features` directory is where you start placing your user stories. The prototyping phase is a great time to start writing them, but don't feel like you need to implement them.

All of tyrone's jobs come with [Bundler](http://github.com/carlhuda/bundler) built in and are ready to get up and running on [Heroku](http://heroku.com) with a simple `heroku create`.

## Associates

* [b-webstar](http://github.com/plustwo) for his playground system what.
* [p-oye](http://github.com/philoye) for makin rehearsals.
* [t-star](http://github.com/toolmantim) for the awesome states.js
* [byrne-diddy](http://github.com/quackingduck) for the original grid js/images.

## Givin' Back fo' the Crack

Fork the project, submit a pull request and I'll get to it straight away. _Or_ you can just checkout the source by running:

    git clone git://github.com/chrislloyd/tyrone.git

## License

Copyright (c) 2009 Chris Lloyd.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

