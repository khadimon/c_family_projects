import math

class Point:
    def __init__(self, x=0, y=0):
        self.x = x
        self.y = y
    
    def translatePoint(self, deltaX, deltaY):
        self.x += deltaX
        self.y += deltaY
    
    def distanceOrigin(self):
        return math.sqrt(self.x**2 + self.y**2)
    
    def __str__(self):
        return f"Point({self.x}, {self.y})"
    
    def __add__(self, other):
        return Point(self.x + other.x, self.y + other.y) 
    
class Point: 
    def __init__(self, x=0, y=0): 
        self.x = x 
        self.y = y 
    def translate_point(self, delta_x, delta_y): 
        self.x += delta_x 
        self.y += delta_y 
    def distance_from_origin(self): 
        return math.sqrt(self.x**2 + self.y**2) 
    def __str__(self): 
        return f"Point({self.x}, {self.y})" 
    def __add__(self, other): 
        return Point(self.x + other.x, self.y + other.y)