from src.parser import parse_obd_dump

def analyze(data):
    report = []
    for key, value in data:
        if "error" in key.lower():
            report.append(f"⚠️ Found error: {key} -> {value}")
    return report

if __name__ == "__main__":
    print("[Auto-EX] Ready. Place OBD logs in data/ and rerun.")
