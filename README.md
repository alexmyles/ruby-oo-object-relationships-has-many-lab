# Has Many Lab

## Objectives

- Build out the has many/belongs to relationship between two classes.
- Build methods that use the has many/belongs to relationship between two classes.
- Use a class variable to track data about a class.
- Build a class method to expose data stored in a class variable.

## Instructions

In this lab, we'll be dealing with two sets of classes: the `Artist` and `Song`
classes and the `Author` and `Post` classes. We'll start with `Artist` and
`Song`.

An artist should have many songs and a song should belong to an artist:

![Artist and Song](https://curriculum-content.s3.amazonaws.com/module-1/ruby-oo-relationships/has-many-lab/Image_139_CodeObjectsRelations%28B%29.png)

Because of the has many/belongs to relationship between your classes, the
`Artist` tests, i.e. the tests in `spec/artist_spec.rb`, rely on some code in
the `Song` class and vice versa. You will have to build out both the classes as
you go.

We recommend starting out by getting some of the initial `Artist` tests passing
and switching to write code in the `Song` class as directed by the test output.

Once your `Artist` and `Song` tests are passing, you will follow a similar
process for `Author` and `Post`.

This lab is primarily test-driven. So run the test suite with the `learn test`
command to get started. Read the test output very carefully to help guide you
through. First, read through the guidelines below and refer back to them as you
complete the lab.

### Building the has many/belongs to relationship

How can an artist have many songs and a song belong to an artist? We'll need to
make sure that an individual song has a reference to the artist it belongs to,
and that an individual artist has a reference to a list of its songs.

- To establish the association from the song side, you will need to create
  `artist=` and `artist` instance methods in the Song class.

- To establish the association from the artist's side, an individual artist will
  need a method that returns a collection of all of their songs.

Recall from the previous lesson that we want to do this in a way that maintains
a single source of truth. Therefore, our Song class will need:

- a class variable that holds all instances of every song that's been created in
  an array,
- a class method that returns the class variable holding those instances, and
- a `#songs` instance method that returns the subset of songs belonging to a given
  artist.

#### The `#add_song_by_name` Method

The `#add_song_by_name` method should take in an argument of a name, use that
argument to create a new song and _then_ associate the objects. The method doesn't need to return anything, just create the association.

#### The `#artist_name` Method

Build a method `some_song.artist_name` that returns the name of the artist of
the given song.

This method should use, or extend, the has many/belongs to relationship you're
building out. If a song has an artist, you can call: `some_song.artist` and
return an actual instance of the `Artist` class. Since every artist has a name,
`some_song.artist.name` should return the name of the `Artist` instance
associated with the given song. Your `#artist_name` method should utilize this
relationship.

**Note:** We like our code to be robust, i.e. not easily breakable. Make sure
your `#artist_name` method will not break if the given song does not have an
artist. In this case, your method should return `nil`.

#### The `.song_count` Method

You'll be required to write a class method that returns the total number of
songs that have been created. How can we get access to total number of songs
from the artist class?

### The `Author` and `Post` Classes

Once you have all the tests passing for the `Artist` and `Song` classes, begin working through the tests for `Author` and `Post`. As with artists and songs, an author should have many posts and a post should belong to an author:

![Author and Posts](https://curriculum-content.s3.amazonaws.com/module-1/ruby-oo-relationships/has-many-lab/Image_139_CodeObjectsRelations%28C%29.png)

Once again, because of the has many/belongs to relationship between your
classes, the `Author` tests rely on some code in the `Post` class and vice
versa. You will have to build out both the classes as you go.

We recommend starting out by getting some of the initial `Author` tests passing
and switching to write code in the `Post` class as directed by the test output.
