# Guide to Solving Parrot

After running `rspec` we are getting this error messages.

```bash
#parrot
  should say "Squawk!" by default (FAILED - 1)
  should return the default phrase (FAILED - 2)
  should output the given phrase (FAILED - 3)
  should return the given phrase (FAILED - 4)

Failures:

  1) #parrot should say "Squawk!" by default
     Failure/Error: parrot
     NameError:
       undefined local variable or method `parrot' for #<RSpec::ExampleGroups::Parrot:0x007faeb2a53210>
```

`Undefined method parrot` means we haven't defined our method in our `parrot.rb` file. Lets do that and see our error message change.

```ruby
def parrot
end
```

Now our next error message is `expected: 1 time with arguments: ("Squawk!")`. Here we want to pass an arguments `phrase` to our `parrot` method and set it equal to `"Squawk!"`. We can do that while we pass in the argument.


```ruby
def parrot(phrase = "Squawk!")
end
```

```bash
#parrot
  should say "Squawk!" by default (FAILED - 1)
  should return the default phrase (FAILED - 2)
  should output the given phrase (FAILED - 3)
  should return the given phrase (FAILED - 4)

Failures:

  1) #parrot should say "Squawk!" by default
     Failure/Error: expect($stdout).to receive(:puts).with("Squawk!")
       (#<IO:0x007fba190c6518>).puts("Squawk!")
           expected: 1 time with arguments: ("Squawk!")
           received: 0 times
```

This error message means, it was looking for an output with `puts`. But we never told our method to `puts` our `phrase`.

```ruby
def parrot(phrase = "Squawk!")
  puts phrase
end
```

Two of our four tests are passing now. The next two error messages are checking the if our method is returning the phrase as its return value.

```ruby
def parrot(phrase = "Squawk!")
  puts phrase
  return phrase
end
```

All our test should be passing at this point.
