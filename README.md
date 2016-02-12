#RefreshableModel

This application uses [message_bus](https://github.com/SamSaffron/message_bus) and it refreshes a simple screen saying your model was update.

Similar [ActionCable](https://medium.com/@dhh/rails-5-action-cable-demo-8bba4ccfc55e#.c3h2gybkq) approach.


## Usage

```ruby
class Post < ActiveRecord::Base
  include RefreshableModel
end
```


```javascript
MessageBus.start();

MessageBus.callbackInterval = 500;
MessageBus.subscribe("/post", function(data){
  $('#refresh').text('Updated at ' + new Date().toLocaleString());
});
```

## Demonstration
[![MessageBus - Action Cable without WebSockets](http://img.youtube.com/vi/jtjVSSoHWI8/0.jpg)](http://www.youtube.com/watch?v=jtjVSSoHWI8)

