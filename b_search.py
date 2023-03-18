def binary_search(arr, item):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2
        target = arr[mid]

        if target == item:
            return mid
        elif target > item:
            high = mid - 1
        else:
            low = mid + 1
    return None
