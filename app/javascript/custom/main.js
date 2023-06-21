document.addEventListener("turbo:load", function() {    
    let messagesEls = document.getElementsByClassName("message");
    if(messagesEls.length > 0) {
        for (let i = 0; i < messagesEls.length; i++) {
            setTimeout(() => {
                messagesEls.item(i).remove();
            }, 2500)
        }
    }
})