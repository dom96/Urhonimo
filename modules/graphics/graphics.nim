
when defined(windows):
  const Header = "D3D9Graphics.h"

else:
  const Header = "OGLGraphics.h"

type Graphics* {.importc: "Urho3D::Graphics", header: Header.} = object

proc getHeight*(g: var Graphics): cint {.
  importcpp: "GetHeight", header: Header.}
proc getWidth*(g: var Graphics): cint {.
  importcpp: "GetWidth", header: Header.}
