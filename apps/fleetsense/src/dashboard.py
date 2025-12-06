from src.processor import load_csv, basic_stats

def render_dashboard(file):
    rows = load_csv(file)
    stats = basic_stats(rows)
    print("=== FleetSense Dashboard ===")
    print(stats)
