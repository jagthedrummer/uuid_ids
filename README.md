* UuidIds

A simple gem to make it easy to use UUIDs as the id for Rails models.

Your table creation migration should look something like this:

```ruby
    create_table :things, :id => false do |t|
      t.binary :id, :primary_key => true
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

This project rocks and uses MIT-LICENSE.
