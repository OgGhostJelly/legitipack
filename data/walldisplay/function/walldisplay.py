# Python script to generate the walls of whitespace using text displays.

import numpy as np
import math

# Convert a python list to the string representation of a Minecraft float array
def list2floatarr(ls: list) -> str:
    ls = [f"{x}f" for x in ls]
    return "[" + ", ".join(ls) + "]"

# Convert degrees to radians
def deg2rad(degs) -> float:
    return degs * (math.pi/180.0)

# Calculates a quaternion given the axis of rotation and the amount (angle) to rotate around it.
# used for calculating `left_rotation` and `right_rotation` in `Transformation`
def calculate_quaternion(axis, angle_rads: float) -> np.ndarray:
    # Literally just asked an AI for this formula lol
    return np.array([
        axis[0] * math.sin(angle_rads/2),
        axis[1] * math.sin(angle_rads/2),
        axis[2] * math.sin(angle_rads/2),
        math.cos(angle_rads/2),
    ])

# Setting the text display transformation.scale to 40.0 will make it 1 block long/tall 
BLOCK_SIZE = 40.0

# The `transformation` component of a minecraft:text_display
class Transformation:
    def __init__(self, translation: np.ndarray, scale: np.ndarray, right_rotation: np.ndarray, left_rotation: np.ndarray) -> None:
        # [3]float
        self.translation = translation
        # [3]float
        self.scale = scale
        # [4]float
        self.right_rotation = right_rotation
        # [4]float
        self.left_rotation = left_rotation
    
    def __str__(self) -> str:
        translation = list2floatarr(self.translation)
        scale = list2floatarr(self.scale)
        right_rotation = list2floatarr(self.right_rotation)
        left_rotation = list2floatarr(self.left_rotation)
        return f"{{translation:{translation}, scale:{scale}, right_rotation:{right_rotation}, left_rotation:{left_rotation}}}"

    def rotate_left(self, axis, angle_rads: float):
        self.left_rotation = calculate_quaternion(axis, deg2rad(angle_rads))
        return self
    
    def rotate_right(self, axis, angle_degs: float):
        self.right_rotation = calculate_quaternion(axis, deg2rad(angle_degs))
        return self

    # A transformation that is a single Minecraft block in width and height.
    def block():
        return Transformation([0.0, 0.0, 0.0], [BLOCK_SIZE, BLOCK_SIZE, 1.0], [0.0, 0.0, 0.0, 1.0], [0.0, 0.0, 0.0, 1.0])

# A singular text display wall in whitespace
class TextDisplay:
    def __init__(self, position: np.ndarray, transformation: Transformation) -> None:
        self.position = position
        self.transformation = transformation
    
    def __str__(self) -> str:
        return f"execute positioned {self.position[0]} {self.position[1]} {self.position[2]} align xyz run summon minecraft:text_display ~ ~ ~ {{alignment:\"center\",background:-1,transformation:{self.transformation}}}"

    # A text display facing in the positive z direction
    # the origin is where the entity will be spawned, if the player is too far from this position the text display will not render
    # the start and end arguments are the x and y coordinates of the bottom left and top right corners of the text display
    # the z argument is the z coordinate of the text display
    def pos_z(origin: np.ndarray, start: np.ndarray, end: np.ndarray, z: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.append(block_scale * BLOCK_SIZE, 1)

        corner = np.minimum(start, end)
        translation = np.append(corner, z) - origin + np.array([0.0, 0.0, 0.01])
        
        transformation = Transformation(translation, scale, [0.0, 0.0, 0.0, 1.0], [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)
    
    def neg_z(origin: np.ndarray, start: np.ndarray, end: np.ndarray, z: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.append(block_scale * BLOCK_SIZE, 1)

        corner = np.minimum(start, end)
        translation = np.append(corner, z) - origin + np.array([block_scale[0], 0.0, 0.99])
        
        transformation = Transformation(translation, scale, calculate_quaternion([0, 1, 0], deg2rad(180)), [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)

    def pos_x(origin: np.ndarray, start: np.ndarray, end: np.ndarray, x: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.insert(block_scale * BLOCK_SIZE, 0, 1)

        corner = np.minimum(start, end)
        translation = np.insert(corner, 0, x) - origin + np.array([0.0, 0.0, block_scale[1]])
        
        transformation = Transformation(translation, scale, calculate_quaternion([0, 1, 0], deg2rad(90)), [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)

    def neg_x(origin: np.ndarray, start: np.ndarray, end: np.ndarray, x: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.insert(block_scale * BLOCK_SIZE, 0, 1)

        corner = np.minimum(start, end)
        translation = np.insert(corner, 0, x) - origin + np.array([0.99, 0.0, 0.0])
        
        transformation = Transformation(translation, scale, calculate_quaternion([0, 1, 0], deg2rad(-90)), [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)
    
    def neg_y(origin: np.ndarray, start: np.ndarray, end: np.ndarray, y: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.insert(block_scale * BLOCK_SIZE, 1, 1)

        corner = np.minimum(start, end)
        translation = np.insert(corner, 1, y) - origin + np.array([0.0, 0.99, 0.0])
        
        transformation = Transformation(translation, scale, calculate_quaternion([1, 0, 0], deg2rad(90)), [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)

    def pos_y(origin: np.ndarray, start: np.ndarray, end: np.ndarray, y: float):
        block_scale = np.add(np.abs(end - start), 1)
        scale = np.insert(block_scale * BLOCK_SIZE, 1, 1)

        corner = np.minimum(start, end)
        translation = np.insert(corner, 1, y) - origin + np.array([0.0, 0.01, block_scale[1]])
        
        transformation = Transformation(translation, scale, calculate_quaternion([1, 0, 0], deg2rad(-90)), [0.0, 0.0, 0.0, 1.0])
        return TextDisplay(origin, transformation)

# A box made out of text displays
class Box:
    def __init__(self, origin: np.ndarray, start: np.ndarray, end: np.ndarray) -> None:
        neg_z = TextDisplay.neg_z(
            origin,
            np.array([start[0], start[1]]),
            np.array([end[0], end[1]]),
            start[2],
        )

        pos_z = TextDisplay.pos_z(
            origin,
            np.array([start[0], start[1]]),
            np.array([end[0], end[1]]),
            end[2],
        )

        neg_x = TextDisplay.neg_x(
            origin,
            np.array([start[1], start[2]]),
            np.array([end[1], end[2]]),
            start[0],
        )

        pos_x = TextDisplay.pos_x(
            origin,
            np.array([start[1], start[2]]),
            np.array([end[1], end[2]]),
            end[0],
        )

        neg_y = TextDisplay.neg_y(
            origin,
            np.array([start[0], start[2]]),
            np.array([end[0], end[2]]),
            end[1],
        )

        pos_y = TextDisplay.pos_y(
            origin,
            np.array([start[0], start[2]]),
            np.array([end[0], end[2]]),
            start[1],
        )

        self.walls = [
            neg_z,
            pos_z,
            neg_x,
            pos_x,
            neg_y,
            pos_y,
        ]

    def __str__(self) -> str:
        return "\n".join([str(w) for w in self.walls])

with open('generate.mcfunction', "w") as f:
    f.write(str(Box(
        np.array([-156, 131, -155]),
        np.array([-156, 131, -155]),
        np.array([-189, 149, -188]),
    )))
