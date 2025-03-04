from .asyn import AsyncIPFSFileSystem
from fsspec import register_implementation

from ._version import get_versions
__version__ = get_versions()['version']
del get_versions

register_implementation(AsyncIPFSFileSystem.protocol, AsyncIPFSFileSystem)

__all__ = ["__version__", "AsyncIPFSFileSystem"]

if __name__ == '__name__':
    print('bro')