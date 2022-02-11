import os
import pathlib
import subprocess
import unittest

# Ensure we're running in the correct folder so we don't destroy anything important
cwd = pathlib.Path(os.getcwd())
assert cwd.name == "test"
assert cwd.parent.name == "SenSchema"

if not pathlib.Path("kaitaistruct.py").exists():
    print("Creating link to kaitai struct compiler")
    os.symlink(
        "3rdparty/kaitai_struct_python_runtime/kaitaistruct.py", "kaitaistruct.py"
    )

print("Cleaning up...")
for file in cwd.glob("cs3tbl/*.py"):
    if file.name == "__init__.py":
        continue
    print(f"Removing {file}")
    file.unlink()

print("Generating parser code")
os.chdir("cs3tbl")
proc = subprocess.run(
    [
        "kaitai-struct-compiler",
        "-t",
        "python",
        "--python-package",
        ".",
        "-I",
        "../../schemas/",
        "../../schemas/cs3.ksy",
    ]
)
if proc.returncode != 0:
    raise RuntimeError(f"kaitai-struct-compiler returned {proc.returncode}")
os.chdir("..")

print("Setup done.")

print("Loading tests.")
suite = unittest.TestSuite(
    unittest.TestLoader().discover(start_dir=path, pattern="test_*.py")
    for path in pathlib.Path("tbl").iterdir()
)

print("Running tests.")
unittest.TextTestRunner().run(suite)
