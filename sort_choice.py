from sys import argv

from func_test import check_memory, timer


def sort_choice(arr: list) -> list:
    """
    Сортировка выбором O(n^2).
    """

    new_arr = []
    for _ in range(len(arr)):
        smallest = find_smallest(arr)
        new_arr.append(arr.pop(smallest))
    return new_arr


def find_smallest(arr: list) -> int:
    smallest = arr[0]
    smallest_index = 0
    for i in range(1, len(arr)):
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index


@check_memory
@timer
def test(len_arr: int):
    arr = []
    for i in range(len_arr, -1, -1):
        arr.append(i)
    sort_choice(arr)


if __name__ == "__main__":
    len_array = argv[-1]
    test(int(len_array))
