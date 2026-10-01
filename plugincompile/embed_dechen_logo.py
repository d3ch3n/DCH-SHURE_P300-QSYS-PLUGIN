"""Resolve the Dechen bitmap marker in the existing compiled plugin."""
import base64
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
plugin = ROOT / "DCH-shure-P300-qsys-plugin.qplug"
marker = b"__DECHEN_LOGO_BASE64__"
source = plugin.read_bytes()
if marker in source:
    logo = base64.b64encode((ROOT / "Images" / "DechenLogoHeader.png").read_bytes())
    plugin.write_bytes(source.replace(marker, logo))
print(plugin)
