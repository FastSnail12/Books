"""
Решение задачи методом «разделяй и властвуй ~ состоит из двух шагов:
1. Сначала определяется базовый случай. Это должен быть простейший
случай из всех возможных.
2. Задача делится или сокращается до тех пор, пока не будет сведена к ба­
зовому случаю.

Задача:
    Представьте, что вы фермер, владеющий земельным участком.
    Вы хотите равномерно разделить землю на одинаковые квадратные участ­
    ки. Участки должны быть настолько большими, насколько это возможно.
"""


def min_square(length: int, width: int) -> int:
    if length > width:
        length, width = width, length
    if width / length == 2.0:
        return length
    else:
        new_length = width - (width // length) * length
        result = min_square(new_length, length)
        return result


if __name__ == "__main__":
    x = min_square(2, 3)
    print(x)
