from sys import argv
from typing import Optional

from func_test import check_memory, timer


def binary_search(arr: list, item) -> Optional[int]:
    """
    Бинарный поиск. O(lig(n))
    """

    low = 0
    high = len(arr) - 1

    counter = 0
    while low <= high:
        mid = (low + high) // 2
        target = arr[mid]
        counter += 1
        if target == item:
            print(f"Выполнено итераций: {counter}")
            return mid
        elif target > item:
            high = mid - 1
        else:
            low = mid + 1
    return None


@check_memory
@timer
def test(len_arr: int):
    arr = []
    for i in range(len_arr):
        arr.append(i)
    binary_search(arr, len_arr // 2 + 1)


if __name__ == "__main__":
    len_array = argv[-1]
    test(int(len_array))
