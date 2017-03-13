# Riddle

Every number could be decomposed as a multiplication of prime numbers, each of which raised to a corresponding power.

For example the number 720_720 evaluates to:
`[[2, 4], [3, 2], [5, 1], [7, 1], [11, 1], [13, 1]]`

The first element of each tuple is a prime divisor of 720_720
and the second element - the power of that divisor.

```
720_720 == (2 ** 4) * (3 ** 2) * (5 ** 1) * (7 ** 1) * (11 ** 1) * (13 ** 1)
```

## Implementation

We will list below concise code samples which should get you up to speed with the
implementation of this riddle.

### Tuples
`Riddle::Tuples` holds the solution of this riddle.

```ruby
tuples = Riddle::Tuples.new(720_720)
tuples_list = tuples.to_a

puts tuples_list.to_s # => [[2, 4], [3, 2], [5, 1], [7, 1], [11, 1], [13, 1]]
```

### PrimeDivisors
Retruns only the divisors which are prime numbers.

### NumberDivisors
Returns all of the divisors for a given number.
