from typing import Optional

from func_test import check_memory, timer


@check_memory
@timer
def binary_search(arr: list, item) -> Optional[int]:
    """
    Бинарный поиск. O(lig(n))
    """

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


if __name__ == "__main__":
    z = binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 5)
