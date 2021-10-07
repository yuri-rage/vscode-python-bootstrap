# Python Bootstrap for VS Code (Windows)

I use MSYS2 and a zsh terminal as the default for VS Code under Windows 10.

Unfortunately, as of v2021.9.1246542782, the [VS Code Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python) does not play well with the Python version installed under MSYS2.

Rather than disabling MSYS2 Python, one can install [Python for Windows](https://www.python.org/downloads/) as usual, and use this bootstrap repository to overcome the limitations.

The new project created by `bootstrap.ps1` will be in the directory one level up from where it was invoked, and the workspace `settings.json` file will use PowerShell as the default terminal for the project.

## Usage:
    git clone https://github.com/yuri-rage/vscode-python-bootstrap.git
    cd vscode-python-bootstrap
    .\bootstrap <new project name>

See also: _[My VS Code settings repository](https://github.com/yuri-rage/vscode-configuration)_

---
### License
<small>Copyright &copy; 2021 -- Yuri

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</small>