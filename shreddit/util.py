"""This module contains common utilities for the rest of the package.
"""


class ShredditError(Exception):
    def __init__(self, value=None):
        self.value = value if value else "No information provided"

    def __str__(self):
        return repr(self.value)
