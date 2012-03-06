# Strip Params

Recursively run strip! on input (built to handle params in a Rails form after some were erroring because on not-removed trailing spaces)

## Usage

In a Rails app, add a before_filter in the ApplicationController

```ruby
before_filter :strip_params
def strip_params
  StripParams.all!(params)
end
```

This will automatically call strip! on all the params as they are passed in.

