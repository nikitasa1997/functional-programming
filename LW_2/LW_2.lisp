
(defun rec-square (x)
    (if (null x) ; Проверим, пуст ли список?
        () ; Если да, то возвратим пустой список или, что тоже, nil
        (cons (square (first x)) (rec-square (rest x))) ; иначе вычислить квадрат первого элемента
        ; и добавим полученное значение к результату рекурсивного вызова от оставшейся части
    )
)

(defun map-square (x)
    (mapcar #'square x) ; принимает на вход функцию f от N аргументов и N спиcков
    ; и возвращает результирующий список получившийся применением f
    ; последовательно к первым элементам, ко вторым, и.т.д
    ; В данном случае мы применяем square к каждому элементу списка
)

(defun square (x) ; Вычисляет квадрат числа
    (* x x)
)

(pprint (rec-square '()))
(pprint (rec-square '(1 2)))
(pprint (rec-square '(4 5 6)))

(pprint (map-square '()))
(pprint (map-square '(1 2)))
(pprint (map-square '(4 5 6)))
