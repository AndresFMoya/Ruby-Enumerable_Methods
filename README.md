# Enumerable Methods
This project consists of implement and Test using RSpec one version of Ruby’s enumerable methods. This is the second project of the main `<Ruby>` Curriculum at Microverse.

#### The objective is to add new methods onto the existing Enumerable module. Such methods are as follows

1. #my_each, a method that is identical to #each but (obviously) without using #each.
2. #my_each_with_index in the same way.
3. #my_select in the same way.
4. #my_all? (continue as above)
5. #my_any?
6. #my_none?
6. #my_count
7. #my_map (Accepting either a proc or a block.)
8. #my_inject
9. #my_inject is tested by creating a method called #multiply_els which multiplies all the elements of the array together by using 


### Write Tests for Enumerable methods using RSPec
```
Enumerable
  #my_any?
    should returns true if the block ever returns a value other than false or nil.
  When block is given
    #my_each_with_index
      should Calls block with two arguments, the item and its index, for each item in enum
  #my_select
    should returns an array containing all elements of enum for which the given block returns a true value.
  When no block is given
    #my_each
      should returns an Enumerator
  When no block is given
    #my_each_with_index
      should returns an Enumerator
  When the block returns false to any element
    #my_none?
      should returns true if the block never returns true for all elements
  When block is given
    #my_each
      should iterate from every item on the array
  When the block returns true to any elemend
    #my_none?
      should returns false if the block never returns true for all elements
  When the block returns true to every element
    #my_all
      should returns true if the block never returns false or nil
  When the block returns false to any element
    #my_all?
      should returns true if the block never returns false or nil
```

## Contributors
Raymond Oluoch https://github.com/rOluochKe
Andrés F. Moya https://github.com/AndresFMoya

