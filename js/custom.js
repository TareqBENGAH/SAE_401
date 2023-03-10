
/** Menu toggle sur le header mobile */
document.querySelector('.menu_icon_mobile').addEventListener('click', toggle_menu);


function toggle_menu(){
    document.querySelector('.block_menu_mobile').classList.toggle('ouvert');
    if(document.querySelector('.ouvert')){
        document.querySelector('.menu_icon_mobile img').style.transform ='rotate(45deg)';
    }
    else{
        document.querySelector('.menu_icon_mobile img').style.transform ='rotate(0deg)';
    }
}

