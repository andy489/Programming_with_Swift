var potentialOverflow = Int16.max
// potentialOverflow equals 32767, which is the maximum value an Int16 can hold
print(potentialOverflow)

// potentialOverflow += 1 will cause an error

potentialOverflow = potentialOverflow &+ 1
print(potentialOverflow)
