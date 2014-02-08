# UuidIds

A simple gem to make it easy to use UUIDs as the id for Rails models.

[![Gem Version](https://badge.fury.io/rb/uuid_ids.png)](http://badge.fury.io/rb/uuid_ids)


Your table creation migration should look something like this:

```ruby
    create_table :things, :id => false do |t|
      t.binary :id, :primary_key => true, :null => false
      t.timestamps
    end
    add_index :things, :id, :unique => true
```

`binary` type is your best bet as it will be put into `schema.db`
correctly.

Then inside of your model just do this:

```ruby
include UuidIds::ModelHelper
```

If you need to you can set the id outside of the model.  If there is a
collision (and you have a unique index) then an exception will be raised 
and it's up to your app to handle that.  If you don't have a unique
index and there is a collision you'll have two objects with the same id.

This project rocks and uses MIT-LICENSE.
