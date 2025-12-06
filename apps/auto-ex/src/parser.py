def parse_obd_dump(file_path):
    data = []
    with open(file_path) as f:
        for line in f:
            if ":" in line:
                key, value = line.split(":", 1)
                data.append((key.strip(), value.strip()))
    return data
