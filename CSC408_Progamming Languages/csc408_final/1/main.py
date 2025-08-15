p1 = Point(12, 14)
p2 = Point(1, 2)

print("Initial points:")
print("p1:", p1)
print("p2:", p2)

distance = p1.distanceOrigin()
print(f"\nDistance of p1 from origin: {distance}")
p1.translatePoint(2, 3)
print(f"\nAfter translating p1 by (2,3):")
print("p1:", p1)

p3 = p1 + p2
print(f"\nSum of p1 and p2:")
print("p3:", p3) 




