# 1. ValidarRegistro

### Tabla de verdad

| Edad >= 14 | Acepta términos (S) | Resultado |
|:---:|:---:|---|
| V | V | Registro exitoso |
| V | F | No puedes registrarte |
| F | V | No puedes registrarte |
| F | F | No puedes registrarte |

### Pruebas de escritorio

| Edad | Respuesta | Resultado |
|---:|:---:|---|
| 13 | S | No puedes registrarte |
| 13 | N | No puedes registrarte |
| 14 | S | Registro exitoso |
| 14 | N | No puedes registrarte |
| 15 | S | Registro exitoso |
| 15 | N | No puedes registrarte |
| 14 | s | Registro exitoso |

---

# 2. ValidarEdad

## Tabla de verdad

A = Edad < 0

B = Edad > 120

| A | B | Resultado |
|:---:|:---:|---|
| V | V | Edad inválida |
| V | F | Edad inválida |
| F | V | Edad inválida |
| F | F | Edad válida |

## Pruebas de escritorio

| Edad | Resultado |
|---:|---|
| -1 | Edad inválida |
| 0 | Edad válida |
| 1 | Edad válida |
| 120 | Edad válida |
| 121 | Edad inválida |

---

# 3. Parqueadero

## Tablas de verdad

**Validación de minutos**

| Minutos < 0 | Resultado |
|:---:|---|
| V | Minutos negativos |
| F | Continúa el proceso |

**Validación del tipo de vehículo**

| Tarifa = 0 | Resultado |
|:---:|---|
| V | Tipo de vehículo no válido |
| F | Continúa el proceso |

**Validación de los primeros 15 minutos**

| Minutos <= 15 | Resultado |
|:---:|---|
| V | No paga |
| F | Se calcula el valor |

**Límite máximo del cobro**

| Valor > 30000 | Resultado |
|:---:|---|
| V | Se cobra máximo $30000 |
| F | Se conserva el valor calculado |

**Descuento por factura**

| Factura = "S" | Resultado |
|:---:|---|
| V | Se aplica el 50 % de descuento |
| F | No se aplica descuento |

## Pruebas de escritorio

| Vehículo | Minutos | Factura | Resultado |
|---|---:|:---:|---|
| Carro | 0 | N | $0 |
| Carro | 15 | N | $0 |
| Carro | 16 | N | $4000 |
| Moto | 15 | N | $0 |
| Moto | 16 | N | $2000 |
| Moto | 60 | N | $2000 |
| Moto | 61 | N | $4000 |
| Carro | 60 | S | $2000 |
| Carro | 61 | s | $4000 |
| Carro | 480 | N | $30000 |
| Moto | 901 | N | $30000 |
| Moto | 901 | S | $15000 |
| Carro | -1 | N | Minutos negativos |
| Tipo 3 | 30 | N | Tipo de vehículo no válido |

---

# 4. Semaforo

## Tabla de verdad


| Unidades < 0 | Unidades = 0 | Unidades <= 10 | Resultado |
|:---:|:---:|:---:|---|
| V | - | - | Error: cantidad inválida |
| F | V | - | ROJO: inventario agotado |
| F | F | V | AMARILLO: pedir inventario |
| F | F | F | VERDE: inventario suficiente |

## Pruebas de escritorio

| Unidades | Resultado |
|---:|---|
| -1 | Error: cantidad inválida |
| 0 | ROJO: inventario agotado |
| 1 | AMARILLO: pedir inventario |
| 10 | AMARILLO: pedir inventario |
| 11 | VERDE: inventario suficiente |

---

# 5. Bisiesto

## Tabla de verdad

A = Año MOD 4 = 0

B = Año MOD 100 <> 0

C = Año MOD 400 = 0

Condición: (A Y B) O C

| A | B | C | Resultado |
|:---:|:---:|:---:|---|
| V | V | V | Año bisiesto |
| V | V | F | Año bisiesto |
| V | F | V | Año bisiesto |
| V | F | F | No es bisiesto |
| F | V | V | Año bisiesto |
| F | V | F | No es bisiesto |
| F | F | V | Año bisiesto |
| F | F | F | No es bisiesto |

## Pruebas de escritorio

| Edad | Año | Días calculados | Resultado |
|---:|---:|---:|---|
| 29 | 2024 | 10585 | Año bisiesto |
| 29 | 2023 | 10585 | No es bisiesto |
| 29 | 2000 | 10585 | Año bisiesto |
| 29 | 1900 | 10585 | No es bisiesto |
| 29 | 2001 | 10585 | No es bisiesto |
| 29 | 2100 | 10585 | No es bisiesto |
| 29 | 2400 | 10585 | Año bisiesto |