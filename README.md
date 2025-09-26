# RANews

The RetroAchievements webzine

<https://news.retroachievements.org/>

## Development

The instructions here assumes you have the [mise runtime version manager](https://mise.jdx.dev/).

```bash
# clone the repository
git clone git@github.com:RetroAchievements/RANews.git

# enter the directory
cd RANews

# if you have 'mise', it can automatically install
# the Ruby version defined in .tool-version.
# NOTE: This may take some minutes.
mise install

# Once you have Ruby installed, now it's time to
# install this project's dependencies.
bundle install

# Now you're ready to serve RANews locally.
bundle exec jekyll serve
```

The build can take a couple of minutes. Once it's done you'll see something like
this:

```
...
       Jekyll Feed: Generating feed for posts
                    done in 76.297 seconds.
 Auto-regeneration: enabled for '/path/to/RANews'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```

Now you can check RANews locally at <http://127.0.0.1:4000>.
