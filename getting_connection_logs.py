from dateutil import parser
import subprocess

output_file = open("connection_logs.log", "w")

executed = subprocess.getoutput('docker logs --timestamps lab1-container')

connections = []
logs = executed.split("\n")
for log in logs:
    date_i = log.find("Z") + 1
    date_s = log[0:date_i]
    date = parser.parse(date_s)
    if date.hour >= 12 and date.hour < 13:
        connections.append(log)
output = "\n".join(connections)
print(output)
output_file.write(output)
output_file.close()