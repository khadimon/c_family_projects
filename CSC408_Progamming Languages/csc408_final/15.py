def create_temperature_dict():  
    temperature = {
        "Week1": {
            "Monday": 25, "Tuesday": 32, "Wednesday": 28,
            "Thursday": 29, "Friday": 35
        },
        "Week2": {
            "Monday": 35, "Tuesday": 12, "Wednesday": 18,
            "Thursday": 19, "Friday": 15
        }
    }
    return temperature  

def calculate_week1_total(temperature):  
    week1_temperatures = temperature["Week1"]  
    total = sum(week1_temperatures.values())  
    return total  

def calculate_wednesday_friday_total(temperature):  
    week1 = temperature["Week1"]  
    week2 = temperature["Week2"]  
    wednesday_sum = week1["Wednesday"] + week2["Wednesday"]  
    friday_sum = week1["Friday"] + week2["Friday"]  
    return [wednesday_sum, friday_sum]  

def main():  
    temperature = create_temperature_dict()  
    week1_total = calculate_week1_total(temperature)  
    print(f"Total temperature for Week1: {week1_total}")  
    wednesday_friday_total = calculate_wednesday_friday_total(temperature)  
    print(f"Total Wednesday-Friday Temperatures: wednesday_friday_total") 

if __name__ == "__main__":  
    main() 