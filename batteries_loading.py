def checkio(stones):
    '''
    minimal possible weight difference between stone piles
    '''
    
    def particione(stones):
        stones.sort(reverse=True)
        left = 0
        rigth = 0
        part_1 = []
        part_2 = []
        for s in stones:
            if left<rigth:
                left = left + s
                part_1.append(s)
            else:
                rigth = rigth + s
                part_2.append(s)
                
        return (part_1, part_2)
    
    def simple_way(stones):
        stones.sort(reverse=True)
        left = 0
        rigth = 0
        for s in stones:
            if left<rigth:
                left = left + s
            else:
                rigth = rigth + s
                
        return abs(left-rigth)

    def hard_way(stones):
        stones.sort(reverse=True)
        i = 2
        j = len(stones)-1
        
        left = stones[0] + stones[1]
        rigth = stones[j]
        
        while (i!=j):
            if left<rigth:
                left = left + stones[i]
                i = i +1
            else:
                rigth = rigth + stones[j]
                j = j - 1
        
        print(left, rigth)
        return abs(left-rigth)

    if (len(stones)<5):
        return simple_way(stones[:])
    else:
        print(hard_way(stones[:]), simple_way(stones[:]))
        return min(hard_way(stones[:]), simple_way(stones[:]))

if __name__ == '__main__':
    assert checkio([10,10]) == 0, 'First, with equal weights'
    assert checkio([10]) == 10, 'Second, with a single stone'
    assert checkio([5, 8, 13, 27, 14]) == 3, 'Third'
    assert checkio([5,5,6,5]) == 1, 'Fourth'
    assert checkio([12, 30, 30, 32, 42, 49]) == 9, 'Fifth'
    assert checkio([1, 1, 1, 3]) == 0, "Six, don't forget - you can hold different quantity of parts"
    print ('All is ok')
