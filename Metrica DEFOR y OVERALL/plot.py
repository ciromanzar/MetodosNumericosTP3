import matplotlib.pyplot as plt
import numpy as np

wrate=[]
wrfile = open('./stats/winrate/leagues_NBA_2016_winrate.csv', 'r')
for line in wrfile:
	wrate.append(line.rstrip(" \n"))
wrfile.close()

teams=[]
tfile = open('./stats/abreviaturas/abreviaturas_2016.txt', 'r')
for line in tfile:
	line2 = line.rstrip(" \n")
	line2 = line2.split(",")
	teams.append(line2[1])
tfile.close()		

stat=[]
statfile = open('./DefStat', 'r')
for line in statfile:
	stat.append(line.rstrip(" \n"))
statfile.close()	

per=[]
perfile = open('./stats/playerEfficiencyRate/per_2016.txt', 'r')
for line in perfile:
	line2 = line.rstrip(" \n")
	line2 = line2.split(",")
	per.append(line2[1])
perfile.close()		


poswr =[9,26,5,27,20,12,0,1,3,15,11,8,24,4,6,14,10,29,28,21,16,25,7,19,18,17,23,2,13,22]
ffactorNoAb=[]
ffile = open('./stats/fourFactors/fourFactors_2016.txt', 'r')
for line in ffile:
	line2 = line.rstrip(" \n")
	line2 = line2.split(",")
	ffactorNoAb.append(line2[1])
ffile.close()
ffactor= range(30)
for i in range(len(ffactorNoAb)):
	#print ffactorNoAb[poswr[i]] 
	ffactor[poswr[i]] = ffactorNoAb[i]		

# fig, ax = plt.subplots()
# ax.scatter(per, wrate)
# plt.ylabel('Win Rate')
# plt.xlabel('PER')
# plt.title("Dispersograma PER-WR")
# for i, txt in enumerate(teams):
#     ax.annotate(txt, (per[i],wrate[i]))

# plt.show()

# fig, ax = plt.subplots()
# ax.scatter(ffactor, wrate)
# plt.ylabel('Win Rate')
# plt.xlabel('Four Factor')
# plt.title("Dispersograma Four Factor-WR")
# for i, txt in enumerate(teams):
#     ax.annotate(txt, (ffactor[i],wrate[i]))

# plt.show()

fig, ax = plt.subplots()
ax.scatter(stat, wrate)
plt.ylabel('Win Rate')
plt.xlabel('Stat')
plt.title("Dispersograma Stat-WR")
for i, txt in enumerate(teams):
    ax.annotate(txt, (stat[i],wrate[i]))

plt.show()