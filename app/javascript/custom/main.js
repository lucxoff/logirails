document.addEventListener("turbo:load", function() {
    // Hide alert or notice message
    let messagesEls = document.getElementsByClassName("message");
    if(messagesEls.length > 0) {
        for (let i = 0; i < messagesEls.length; i++) {
            setTimeout(() => {
                messagesEls.item(i).remove();
            }, 2500)
        }
    }


    // Button click
    let buttons = document.getElementsByClassName("dashboard-item-actions-btn");
    let actionsMenu = document.getElementsByClassName("dashboard-item-actions-menu");

    if(!!buttons || !!actionsMenu) {
        for(let i=0; i < buttons.length; i++) {
            buttons[i].addEventListener('click', () => {
                if(actionsMenu[i].style.display == 'block') {
                    actionsMenu[i].style.display = 'none';
                } else {
                    actionsMenu[i].style.display = 'block';
                }
            });
    
            document.addEventListener('click', (event) => {
                
                if(window.location.pathname == "/dashboard") {
                    const isClickedInside = buttons[i].contains(event.target);
            
                    if (!isClickedInside) {
                        actionsMenu[i].style.display = 'none';
                    }
                }
            });
        }
        
    }

    
})

