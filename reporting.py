
import dateaubase
# import datetime.datetime


def report_daily_avg(date):

    _, conn = dateaubase.create_connection()
    Start = dateaubase.date_to_epoch("2019-01-20 00:00:00")
    # dt_start = pd.to_datetime(date)
    # dt_end = ##add timedelta of 1 day
    End = dateaubase.date_to_epoch("2019-01-21 00:00:00")

    Project = 'pilEAUte'
    Location = [
        'Pilote reactor 2',
        'Pilote sludge recycle',
        'Pilote effluent',
        'Copilote reactor 2',
        'Copilote sludge recycle',
        'Copilote effluent',
    ]
    equip_list = [
        'AIT-240',
        'AIT-260',
        'TurbR200',
        'AIT-340',
        'AIT-360',
        'TurbR300',
    ]
    param_list = [
        'TSS',
        'TSS',
        'Turbidity',
        'TSS',
        'TSS',
        'Turbidity',
    ]

    extract_list = {}
    for i in range(len(Location)):  # len(param_list)):
        extract_list[i] = {
            'Start': Start,
            'End': End,
            'Project': Project,
            'Location': Location[i],
            'Parameter': param_list[i],
            'Equipment': equip_list[i]
        }

    df = dateaubase.extract_data(conn, extract_list)
    return df.mean()
    
print(report_daily_avg('dummy'))