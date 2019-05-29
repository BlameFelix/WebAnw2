
//Request to the server

// 1. Create a new XMLHttpRequest object
let xhr = new XMLHttpRequest();

// 2. Configure it: GET-request for the URL /article/.../load
xhr.open('GET', '../../HTMLCode/');

// 3. Send the request over the network
xhr.send();

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

//looking for events
xhr.onprogress = function(event) {
    if (event.lengthComputable) {
        alert(`Received ${event.loaded} of ${event.total} bytes`);
    } else {
        alert(`Received ${event.loaded} bytes`); // no Content-Length
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