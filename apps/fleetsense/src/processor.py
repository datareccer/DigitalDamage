def load_csv(file):
    rows = []
    with open(file) as f:
        for line in f:
            parts = line.strip().split(",")
            rows.append(parts)
    return rows

def basic_stats(rows):
    if not rows:
        return {"error": "empty dataset"}
    return {"records": len(rows)}
