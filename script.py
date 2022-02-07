import json
import os

f = open('code_test.json')
data = json.load(f)
path = os.getcwd()


def myfunc(e):
    return e['eventTime']


os.mkdir('GroupRecord')
os.mkdir('SortedGroupRecord')
os.chdir('GroupRecord')

for event in data['Records']:
    try:
        k = open(event['eventName'] + '.json')
        rec = json.load(k)
        rec['Records'].append(event)
        with open(event['eventName'] + '.json', "w") as outfile:
            json.dump(rec, outfile)
    except FileNotFoundError:
        item = {"Records": [event]}
        with open(event['eventName'] + '.json', "w") as outfile:
            json.dump(item, outfile)

files = [f for f in os.listdir('.') if os.path.isfile(f)]

for fi in files:
    k = open(fi)
    rec = json.load(k)
    rec['Records'].sort(key=myfunc, reverse=True)

    with open(path + '\\' + 'SortedGroupRecord' '\\' + fi, "w") as outfile:
        json.dump(rec, outfile)


