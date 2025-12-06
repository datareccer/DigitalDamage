import sqlite3

DB = "recovery_agent.db"

def init_db():
    con = sqlite3.connect(DB)
    cur = con.cursor()
    cur.execute("""
    CREATE TABLE IF NOT EXISTS intelligence (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        category TEXT,
        key TEXT,
        value TEXT,
        notes TEXT,
        timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    )
    """)
    con.commit()
    con.close()

def store(category, key, value, notes=""):
    con = sqlite3.connect(DB)
    cur = con.cursor()
    cur.execute("INSERT INTO intelligence (category, key, value, notes) VALUES (?, ?, ?, ?)",
                (category, key, value, notes))
    con.commit()
    con.close()

def fetch(category):
    con = sqlite3.connect(DB)
    cur = con.cursor()
    cur.execute("SELECT key, value, notes, timestamp FROM intelligence WHERE category=?", (category,))
    rows = cur.fetchall()
    con.close()
    return rows
