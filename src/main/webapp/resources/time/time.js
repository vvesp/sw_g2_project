/*const time = document.getElementById('time'),
greeting = document.getElementById('greeting'),
name = document.getElementById('name'),
focus = document.getElementById('focus');
*/
// show Time
const showAmPm = true;
function showTime(){
    let today = new Date(),
    hour = today.getHours(),
    min = today.getMinutes(),
    sec = today.getSeconds();

    //Set AM or FM
    const amPm = hour >= 12 ? 'PM' : 'AM';

    // 12hr Format
    hour = hour % 12 || 12;

    // Output Time
    document.getElementById('time').innerHTML = `${hour}<span>:</span>${addZero(min)}<span>:</span>${addZero(sec)}
    ${showAmPm ? amPm : ''}`;
    setTimeout(showTime, 1000); 
}

// Add Zero
function addZero(n){
    return (parseInt(n, 10)< 10 ? '0' : '') +n;
}


// Run
showTime();