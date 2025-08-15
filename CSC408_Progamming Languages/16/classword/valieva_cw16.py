# Khadi Valieva (w10118633)
# Dr. Sengupta
# CSC 408
# 20 November 20204

# 
# Classwork 16
#

import math

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def to_polar(self):
        r = math.sqrt(self.x**2 + self.y**2)
        theta = math.atan2(self.y, self.x)
        return (r, theta)

    def print_cartesian(self):
        print(f"Cartesian Coordinates: (x: {self.x}, y: {self.y})")

    def print_polar(self):
        r, theta = self.to_polar()
        print(f"Polar Coordinates: (r: {r:.2f}, θ: {theta:.2f} radians)")

    def compare(self, other):
        are_equal = self.x == other.x and self.y == other.y
        print(f"Comparing Point({self.x}, {self.y}) with Point({other.x}, {other.y}): {are_equal}")
        return are_equal

    def distance(self, other):
        dist = math.sqrt((self.x - other.x)**2 + (self.y - other.y)**2)
        print(f"Distance between Point({self.x}, {self.y}) and Point({other.x}, {other.y}): {dist:.2f}")
        return dist

# Instantiate an object of the Point class
point1 = Point(3, 4)

# Example usage
point1.print_cartesian()  # cartesian coordinates: (x: 3, y: 4)
point1.print_polar()      # polar coordinates: (r: 5.00, θ: 0.93 radians)

point2 = Point(3, 4)
point1.compare(point2)    # comparing Point(3, 4) with Point(3, 4): True

point3 = Point(1, 1)
point1.distance(point3)   # distance between Point(3, 4) and Point(1, 1): 2.83
