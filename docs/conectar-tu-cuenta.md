# Conectar tu cuenta de Empify

Volver al [README](../README.md).

[Empify](https://empify.com.ar) es una plataforma argentina para crear ebooks con IA y venderlos con tienda propia. La cuenta gratis alcanza para empezar. Al conectarla, tu IA puede leer tus ebooks, tus ventas y tus visitas, y las habilidades de la parte 2 trabajan con tus datos reales. La conexión es una dirección web, `https://empify.com.ar/api/mcp`, no un programa para instalar.

Detalle y ayuda oficial al día: https://empify.com.ar/conectar-ia

## Qué puede hacer tu IA con tu cuenta

- Mostrar tu plan, cuánto usaste de tus cupos del mes y si tenés Mercado Pago conectado.
- Listar tus ebooks y leer uno: el índice, el texto de un capítulo que le pidas, la portada y los textos de la página de venta.
- Contarte tus ventas (pesos y dólares por separado) y tus visitas, por período y por ebook.
- Validar una idea de ebook y escribir textos de anuncio para uno de tus ebooks (si tildás el permiso de "crear" al conectar).

## Qué no puede hacer

- Publicar ni cambiar tu tienda ni tus ebooks.
- Tocar precios, cobros ni reembolsos.
- Borrar nada.
- Publicar anuncios en Meta ni en ningún otro lado: solo escribe el texto.
- Ver datos de tus compradores: nombres, mails ni nada de ellos.
- Leer el Radar de ideas de tu cuenta: para eso, le pegás lo que ves (habilidad `elegir-idea-con-el-radar`).

## Claude en 5 pasos

Funciona en claude.ai y en la aplicación de escritorio. Los planes gratis permiten una conexión propia; Pro y superiores permiten varias.

1. Entrá a **Personalización** y abrí **Conectores**.
2. Tocá **Añadir** y elegí **Añadir conector personalizado**.
3. Escribí el nombre `Empify`, pegá la dirección `https://empify.com.ar/api/mcp` y tocá **Continuar**. Dejá la autenticación como viene (las opciones marcadas **Detectado**) y tocá **Añadir**.
4. Tocá **Conectar**. Se abre Empify: entrá con tu cuenta, mirá los permisos (por defecto, solo ver) y tocá **Aceptar y volver**. Si querés que además valide ideas y escriba textos de anuncio, tildá esa casilla antes.
5. Abrí una conversación nueva y probá con un pedido de los de abajo. La primera vez Claude puede pedirte permiso para usar cada herramienta: podés permitirla una vez o siempre.

Probado con Claude en español. Si tu Claude está en inglés, los menús son **Customize**, **Connectors**, **Add custom connector**, **Continue**, **Add** y **Connect**. En Team y Enterprise, la primera vez la agrega quien administra la cuenta. Agregarla desde el celular no está confirmado por Claude: hacelo desde la web o el escritorio, y después la usás también en la app.

## Claude Code

Si instalaste el complemento, la conexión ya viene declarada: dentro de Claude Code escribí `/mcp`, elegí `empify` y seguí el navegador para entrar a tu cuenta. Sin el complemento:

```bash
claude mcp add --transport http empify https://empify.com.ar/api/mcp
```

## Ocho pedidos para probar la conexión

1. "¿Cuál de mis ebooks vendió más este mes?"
2. "¿De dónde vienen las visitas de mi tienda y cuántas terminan en compra?"
3. "Armame tres textos de anuncio para mi ebook de repostería."
4. "Validá esta idea: guía de huerta en balcón."
5. "¿Cuánto me queda de cupo este mes en mi plan?"
6. "Leé la página de venta de mi último ebook y decime qué mejorarías."
7. "Hacé el repaso semanal de mi cuenta."
8. "¿Qué ebooks míos todavía no tienen la tienda publicada?"

## Otras IA

Solo lo probamos con Claude. Los pasos que da cada fabricante están en https://empify.com.ar/conectar-ia, y hay un bloque de instrucciones para pegar en [`otras-ia/`](../otras-ia/instrucciones-empify.md).

Si la conexión no anda, corré `/empify:doctor` o mirá las [preguntas frecuentes](preguntas-frecuentes.md).
