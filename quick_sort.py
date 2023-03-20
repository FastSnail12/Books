from random import randint
from sys import argv

from func_test import check_memory, timer


def quick_sort(arr: list) -> list:
    """
    Быстрая сортировка.
    Средний случай: O(n * lig(n)).
    Худший случай: O(n^2).
    """
    if len(arr) <= 1:
        return arr
    else:
        number = randint(0, len(arr) - 1)
        support_element = arr[number]

        before_arr = [i for i in arr[1:] if i <= support_element]
        after_arr = [i for i in arr[1:] if i > support_element]

        return (
            quick_sort(before_arr) + [support_element] + quick_sort(after_arr)
        )


@check_memory
@timer
def test(len_arr: int):
    arr = []
    for i in range(len_arr, -1, -1):
        arr.append(i)
    quick_sort(arr)


if __name__ == "__main__":
    len_array = argv[-1]
    test(int(len_array))
