# Examen Parcial

## Pregunta 3
![image](https://github.com/user-attachments/assets/aa9c4414-cfb1-4dbd-a8b3-76a18690347b)

## Pregunta 4
Blue se mueve con las teclas WASD, Black con las flechas direccionales y White con IJKL.
![image](https://github.com/user-attachments/assets/0dbb1280-af91-4e3b-b84f-af57bb1016dd)

En blue.gd:
```gd
	var direction = Vector2(
		Input.get_axis('blueLeft', 'blueRight'),
		Input.get_axis('blueUp', 'blueDown')
	)
```

## Pregunta 5
Los objetos utilizan get_slide_collision() para acceder al nombre del objeto con el que están colisionando.
![image](https://github.com/user-attachments/assets/91854340-6ec0-4af8-a408-c48a2f8276ae)

En blue.gd:
```gd
for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		print("Blue is touching ", collision.get_collider().name)
```
