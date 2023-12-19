let input=document.getElementById("inputbox")
let buttons=document.querySelectorAll("button");

let string=""//  takking empty string to store input and result
let arr= Array.from(buttons) //convert node list into array and store into arr 
arr.forEach(button=>{ //iterates for each button
    button.addEventListener('click',(e) => {
        if(e.target.innerHTML== '='){
            string = eval(string);
            input.value= string;
        }

        else if(e.target.innerHTML=='AC'){
            string = "";
            input.value = string;
        }
        else if(e.target.innerHTML == 'DEL'){
            string=string.substring(0,string.length-1);
            input.value=string;
        }
        else{
        string += e.target.innerHTML;
        input.value = string;
    }
    })
})

