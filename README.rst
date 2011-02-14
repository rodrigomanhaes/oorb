OORB
====

A minimal "framework", on top of ActiveRecord, for running object models in Ruby.

OORB doesn't have any production pretensions. It was created only to be a tool for my OO classes.


How to install
--------------

Firstly, you must have Ruby installed (at this moment, 1.9.2, please!).

So you can run (as root, depending on your environment)::

    $ gem install bundler
    $ bundle install

For running SQLite 3, you may have to install some system dependencies. Search engines are your friends.

RVM gemsets are strongly recommended.



How to create models
--------------------

You can use migrations for creating your tables. See an example at db/migrate directory. In order to create your tables, just run::

    $ rake migrate

The domain folder has an example of model class.


How to run specs/tests
----------------------

The spec folder has an example of a RSpec specification. Your specs can be run in the same way regular RSpec tests are run::

    $ rspec spec/your_spec.rb


I don't know ActiveRecord
-------------------------

Please read "Models" section at `Rails docs <http://guides.rubyonrails.org>`_.


I don't know Ruby
-----------------

Go to `Ruby documentation <http://www.ruby-lang.org/en/documentation>`_.

