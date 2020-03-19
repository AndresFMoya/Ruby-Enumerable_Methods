[![Build Status](https://travis-ci.org/AndresFMoya/Ruby-Enumerable_Methods.svg?branch=master)](https://travis-ci.org/AndresFMoya/Ruby-Enumerable_Methods)

# Enumerable Methods

This project consists of implement and Test using RSpec one version of Ruby’s enumerable methods.

## Technologies used

- Ruby
- RSpec
- IDE (VS Code)

### The objective is to add new methods into the existing Enumerable module. Such methods are as follows

1. #my_each, a method that is identical to #each but (obviously) without using #each.
2. #my_each_with_index in the same way.
3. #my_select in the same way.
4. #my_all? (continue as above)
5. #my_any?
6. #my_none?
7. #my_count
8. #my_map (Accepting either a proc or a block.)
9. #my_inject
10. #my_inject is tested by creating a method called #multiply_els which multiplies all the elements of the array together.

### Tests for Enumerable methods using RSPec

```
Enumerable
  When block is given
    #my_each
      should iterate from every item on the array
  When block is given
    #my_select
      should returns an array containing all elements of enum for which the given block returns a true value.
  When the block returns false to any element
    #my_none?
      should returns true if the block never returns true for all elements
  When the block returns true to any elemend
    #my_none?
      should returns false if the block never returns true for all elements
  When block returns false to every element
    #my_any?
      should returns false if the block ever returns false or nil.
  When no block is given
    #my_each_with_index
      should returns an Enumerator
  When the block returns false to any element
    #my_all?
      should returns true if the block never returns false or nil
  When block is no given
    #my_select
      should returns an Enumerator
  When the block returns true to every element
    #my_all
      should returns true if the block never returns false or nil
  When no block is given
    #my_each
      should returns an Enumerator
  When block is given
    #my_each_with_index
      should Calls block with two arguments, the item and its index, for each item in enum
  When block returns true to any element
    #my_any?
      should returns true if the block ever returns a value other than false or nil.

      Finished in 0.0144 seconds (files took 0.15821 seconds to load) 12 examples, 0 failures
```


## 🤝 Contributing

Contributions, issues and feature requests are welcome! Feel free to check [issues page](https://github.com/AndresFMoya/Ruby-Enumerable_Methods/issues).

1. Fork it (https://github.com/AndresFMoya/Ruby-Enumerable_Methods/fork)
2. Create your working branch (git checkout -b [choose-a-name])
3. Commit your changes (git commit -am 'what this commit will fix/add/improve')
4. Push to the branch (git push origin [chosen-name])
5. Create a new pull request


## Contributors

- Raymond Oluoch [GitHub](https://github.com/rOluochKe)
- Andrés F. Moya [GitHub](https://github.com/AndresFMoya)


## Show your support

Give a ⭐️ if you like this project!


## License

This project is [MIT](https://github.com/AndresFMoya/Ruby-Enumerable_Methods/blob/develop/LICENSE) licensed.


## Contact
- **Andrés Moya** - [@andresfmoya](https://github.com/andresfmoya) I will love to hear about you at one of the following places! :heart:

- [LinkedIn](https://www.linkedin.com/in/andres-f-moya/)
- [Twitter](https://www.twitter.com/andmedev/) 
- <andresfmoya@gmail.com>.
