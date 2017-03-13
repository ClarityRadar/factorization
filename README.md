# Riddle

Every number could be decomposed as a multiplication of prime numbers, each of which raised to a corresponding power.

For example the number 720_720, has this list as an output:
`[[2, 4], [3, 2], [5, 1], [7, 1], [11, 1], [13, 1]]`

The first element of each tuple is a prime divisor of 720_720
and the second element - the power of that divisor.

```
720_720 == (2 ** 4) * (3 ** 2) * (5 ** 1) * (7 ** 1) * (11 ** 1) * (13 ** 1)
```

## Implementation

### NumberDivisors
TODO

### PrimeDivisors
TODO

### Tuples
```ruby
tuples = Riddle::Tuples.new(720_720)
tuples_list = tuples.to_a

puts tuples_list.to_s # => [[2, 4], [3, 2], [5, 1], [7, 1], [11, 1], [13, 1]]
```
