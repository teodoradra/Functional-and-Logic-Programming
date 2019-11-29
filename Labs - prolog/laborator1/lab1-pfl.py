
'''
---Transform a list into a set.

trans(l) =     [],      l=[]
            trans(l2,...), noOcc(l1,l2,...)>=1
            l1 c+ trans(l2,..)

noOcc(e,l1,...) =  0   , l=[]
                 1 + noOcc(l1, l2...)
                 noOcc(l1,l2...)

'''



def noOcc(e,l):
    if l == []:
        return 0
    elif l[0]== e:
        return 1 + noOcc(e,l[1:])
    else:
        return noOcc(e,l[1:])

def transf(l):
    if l == []:
        return []
    if noOcc(l[0],l[1:]) >= 1:
        return transf(l[1:])

    elif noOcc(l[0],l[1:]) == 0:
        return[l[0]]+ transf(l[1:])


l1 = [1,5,7,5,6,8,9,1,1,1,3,4]
set = transf(l1)
print(set)


'''
---Union of 2 sets---

2 sets A and B:

union(A,B) =    B if A = []
                A if b = []
                a1 union(a2,..., B) if a1 <> B
                union(a2,..., B), otherwise
                
'''

def belongs(e,l):
    if l == []:
        return False
    elif e == l[0]:
        return True
    else:
        return belongs(e,l[1:])


def union(set1, set2):
    if set1 == []:
        return set2
    elif set2 == []:
        return set1
    elif not belongs(set1[0],set2):
        return [set1[0]] + union(set1[1:], set2)
    else:
        return union(set1[1:], set2)

set1 = [1,2,3]
set2 = [2,3,4]
print(union(set1,set2))
