def iterative_fibonacci(first, second, n):
    if n == 0:
        return first
    elif n == 1:
        return second
    else:
        for _ in range(2, n + 1):
            next_fib = first + second
            first, second = second, next_fib
        return second

def recursive_fibonacci(first, second, n):
    if n == 0:
        return first
    elif n == 1:
        return second
    else:
        return recursive_fibonacci(second, first + second, n - 1)

def main():
    n = int(input("Input the number for Fibonacci: "))
    first = 0  
    second = 1 


    iterative_result = iterative_fibonacci(first, second, n)
    recursive_result = recursive_fibonacci(first, second, n)

    print(f"Iterative Fibonacci for n={n}: {iterative_result}")
    print(f"Recursive Fibonacci for n={n}: {recursive_result}")

if __name__ == "__main__":
    main()