import time
import tracemalloc


def timer(func):
    def _wrapper(*args, **kwargs):
        start = time.perf_counter()
        rezult = func(*args, **kwargs)
        end = time.perf_counter()
        print(f"Время выполнения алгоритма: {end - start}")
        return rezult

    return _wrapper


def check_memory(func):
    def _wrapper(*args, **kwargs):
        tracemalloc.start()
        result = func(*args, **kwargs)
        memory_res = tracemalloc.get_traced_memory()[-1]
        if memory_res >= 1024 * 1024:
            memory_res = memory_res / 1024 * 1024
            print(f"Алгоритм использовал : {memory_res} Mb")
        elif memory_res >= 1024:
            memory_res = memory_res / 1024
            print(f"Алгоритм использовал : {memory_res} Kb")
        else:
            print(f"Алгоритм использовал : {memory_res} bytes")
        tracemalloc.stop()
        return result

    return _wrapper
