#!/usr/bin/env python3
"""Testdatei: Docstring mit Text."""
import math
from dataclasses import dataclass

MAX_ITEMS = 16          # Zahl
RATIO = 3.14159         # Float
MASK = 0xFF
LABEL = "Tab\t \"quoted\" und %d"
RAW = r"C:\temp\neu"


@dataclass
class Point:
    x: float = 0.0


class Shape:
    """Basisklasse."""
    @property
    def name(self) -> str:
        return self.__class__.__name__


class Circle(Shape):
    def __init__(self, r: float) -> None:
        self.r = r

    def area(self) -> float:
        return math.pi * self.r ** 2


def total(xs: list[int], default: int | None = None) -> int:
    try:
        return sum(x for x in xs if x > 0) or (default or 0)
    except TypeError as err:
        print(f"Fehler: {err!r}")
        raise
    finally:
        pass
