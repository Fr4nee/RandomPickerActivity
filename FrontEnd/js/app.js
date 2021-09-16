var imgs = ['assets/1.png',
            'assets/2.png',
            'assets/3.png',
            'assets/4.png',
            'assets/5.png'
        ]
fondoActual = 0;
var fond = document.getElementById('fondo')

function CF() {
    setInterval(CambiarFondo, 2500);
}

function CambiarFondo() {
    fond.style.backgroundImage = 
    "url(" + imgs[++fondoActual % imgs.length] +  ")"
}