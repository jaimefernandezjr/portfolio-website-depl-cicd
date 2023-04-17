arr = [1,2,3]

def duplicateZeros(arr):
    """
    :type arr: List[int]
    :rtype: None Do not return anything, modify arr in-place instead.
    """
    
    final = arr.copy()
    
    for i, a in enumerate(arr):
        if a == 0:
            final.insert(i, 0)
            final.pop()
    
    for i in range(len(arr)):
        arr[i] = final[i]

duplicateZeros(arr)
print(arr)
