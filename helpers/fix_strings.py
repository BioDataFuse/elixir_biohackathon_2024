#script "fixing" issues with quotation marks in turtle files
#intended mainly fo ClinVar dataset


import os


DEBUG = False
MAX_LINES = 1000

def fix_string(ttl_path):

    f = open(ttl_path,'r')
    out_f = open(ttl_path+'_new.ttl','w')

    lines_passed = 0

    for line in f:
        line = line.replace(r"\"","")
        out_f.write(line.replace('"','"""'))
        if DEBUG & lines_passed >= MAX_LINES:
            break

    f.close()
    out_f.close()

    os.remove(ttl_path)
    os.rename(ttl_path+'_new.ttl',ttl_path)

