
const url = `https://localhost:44379/api/Activities/`

var contenido = document.querySelector('#contenido')

const tpl_id = document.createElement('td');
const tpl_place = document.createElement('td');
const tpl_type = document.createElement('td');
const tpl_zone = document.createElement('td');
    
function Traer() {
    fetch(url)
    .then(res => res.json())
    .then(Activities => {
        console.log(Activities)
        Activities.forEach(Activities => {
            let a_id = document.createElement('tr')
            a_id.appendChild(
                document.createTextNode(`${Activities.id_act}`),
            )
            let a_place = document.createElement('tr')
            a_place.appendChild(
                document.createTextNode(`${Activities.place}`),
            )
            let a_type = document.createElement('tr')
            a_type.appendChild(
                document.createTextNode(`${Activities.Types.type}`),
            )
            let a_zone = document.createElement('tr')
            a_zone.appendChild(
                document.createTextNode(`${Activities.Zones.zone}`),
            )
            tpl_id.appendChild(a_id)
            tpl_place.appendChild(a_place)
            tpl_type.appendChild(a_type)
            tpl_zone.appendChild(a_zone)
        });
        contenido.appendChild(tpl_id)
        contenido.appendChild(tpl_place)
        contenido.appendChild(tpl_type)
        contenido.appendChild(tpl_zone)
    })
}






