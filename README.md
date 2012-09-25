__OVERVIEW__


| Project         | MetaMethod    
|:----------------|:--------------------------------------------------
| Homepage        | https://github.com/robgleeson/metamethod
| Wiki            | https://github.com/robgleeson/metamethod/wiki
| Author          | Rob Gleeson             


__DESCRIPTION__

  The purpose of MetaMethod is to expose a number of methods that can tell 
  you about the visibility of a Method object (is it public, protected, or 
  private?).


__EXAMPLES__
   
  You can use either style here.
  The second example adds methods directly to the Method class but the first 
  example adds methods to a select instance of Method.

  _1._

```ruby
  require "metamethod"
  m = method(:foo).extend MetaMethod
  m.public? # => Boolean
```

  _2._

```ruby
  require "metamethod/core_ext"
  method(:foo).public? # => Boolean
```

__INSTALL__

    $ gem install metamethod

__PLATFORM SUPPORT__

It _should_ work on any Ruby 1.9 implementation.
1.8 is not and will not be supported.

__LICENSE__

See LICENSE.txt (MIT).
