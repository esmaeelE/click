"""
click automatic option generator
"""

import click

from commands import build
from commands import deploy


@click.group(help="CLI tool to manage full development cycle of projects")
def cli():
    pass


cli.add_command(build.build)
cli.add_command(deploy.deploy)

def main():
    cli()