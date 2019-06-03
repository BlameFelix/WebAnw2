function loadDoc(){

    //Request to the server
    var xhr;
    // 1. Create a new XMLHttpRequest object

        //for Mozilla,Safari,IE7+
    if (window.XMLHttpRequest){
        xhr = new XMLHttpRequest();
    }
        // for IE6 and older
    else if (window.ActiveXObject){
        xhr = new ActiveXObject("Microsoft.XMLHTTP);
    }

    // 2. if anything is changing at the server
    xhr.onreadystatechange = xhrReadyStateHandler(){

        if(this.readyState == 4 && this.status ==200){
            document.getElementById("load").onclick = function();
        }

        else{

            alert("Es ist ein Fehler beim Laden aufgetreten:\n" + xhr.responseCode);
        }
    };

    // 3. Configure it: GET-request for the URL /article/.../load
    xhr.open("GET", "../HTMLCode/Detail.html", true);
    // 4. Send the request over the network
    xhr.send();

    xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded")
}


function send(){
    var xhr;
    if (window.XMLHttpRequest){
        xhr=new XMLHttpRequest();
    }
    else if (window.ActiveXObject){
        xhr = new ActiveXObject('MSXML2.XMLHTTP');
    }
    else{
        return false;
    }


// 4. This will be called after the response is received
    xhr.onload = function() {

        // analyze HTTP status of the response, if it won't be 200
        // Status: 200,400,404,403
        if (xhr.status != 200) {

            // Return the state of the request and send the Error-Type
            //statusText: 200=ok, 404= Not Found, 403= Forbidden
            alert(`Error ${xhr.status}: ${xhr.statusText}`);
        }

        // show the result
        else {

            // responseText is the server
            alert(`Done, got ${xhr.response.length} bytes`);
        }
    };


// if the request won't be correct
    xhr.onerror = function() {
        alert("Request failed");
    };

// Server Response

    /*
    readyState:
    Status-Text      =  NUMBER  Description

    UNSENT           =  0;      initial state
    OPENED           =  1;      open called
    HEADERS_RECEIVED =  2;      response headers received
    LOADING          =  3;      response is loading (a data packed is received)
    DONE             =  4;      request complete

    */

xhr.onreadystatechange = xhrResponseeHandler(){

    if (xhr.readyState === XMLHttpRequest.DONE){

        if (httpRequest.status === 200){
            alert(xhr.responseText);
        }
        else{
            alert("There was a problem with the request")
        }

    }
}

var xmldoc = xhr.responseXML;
var load = xmldoc.getElementsByTagName('root').item(0);
alert(load.firstChild.data);


/*

   xhr.responseType = 'json';

    xhr.send();

// the response should be an URL
    xhr.onload = function() {
        let responseObj = xhr.response;
        alert(responseObj.URL);
    };

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 3) {
            // loading
        }
        if (xhr.readyState == 4) {
            // request finished
        }
    };

    let headers = xhr;
    headers.getAllResponseHeaders();
    headers.split('\r\n');
    headers.reduce((result, current) => {
            let [name, value] = current.split(': ');
            result[name] = value;
            return result;
        },
        {}
    );

// if there would be no answer
    xhr.abort();
*/