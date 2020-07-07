"""App configuration."""
from os import environ

class Config:
    """Set configuration vars from .env file."""

    # General Config
    RUN_JUPYTER = environ.get('RUN_JUPYTER')

    # Database

