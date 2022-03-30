function myMenu(x) {
    x.classList.toggle("change");
    var tmp = document.getElementById("nav-items");
    if (tmp.style.display === "block") {
        tmp.style.display = "none";
    } else {
        tmp.style.display = "block";
    }
}

function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 53.3853, lng: -6.2588 },
      zoom: 13,
      mapTypeControl: false,
    });
    
    const box = document.getElementById("searchBox");
    const input = document.getElementById("input");
    const options = {
      fields: ["formatted_address", "geometry", "name"],
      strictBounds: false,
      types: ["address"],
    };
  
    map.controls[google.maps.ControlPosition.TOP_LEFT].push(box);
  
    const autocomplete = new google.maps.places.Autocomplete(input, options);
  
    autocomplete.bindTo("bounds", map);
  
    const infowindow = new google.maps.InfoWindow();
    const infowindowContent = document.getElementById("infowindow-content");
  
    infowindow.setContent(infowindowContent);
  
    const marker = new google.maps.Marker({
      map,
      anchorPoint: new google.maps.Point(0, -29),
    });
  
    autocomplete.addListener("place_changed", () => {
      infowindow.close();
      marker.setVisible(false);
  
      const place = autocomplete.getPlace();
  
      if (!place.geometry || !place.geometry.location) {
        window.alert("No details available for input: '" + place.name + "'");
        return;
      }
  
      marker.setPosition(place.geometry.location);
      marker.setVisible(true);
      infowindowContent.children["place-name"].textContent = place.name;
      infowindowContent.children["place-address"].textContent = place.formatted_address;
      infowindow.open(map, marker);
    });
}

function storeDataUpload() {
    var itemList = JSON.parse(localStorage.getItem('itemList') || "[]");
    var items = {
        imageFile: document.getElementById("upload_myFile").value,
        description: document.getElementById("upload_decription").value,
        title: document.getElementById("upload_title").value,
        brand: document.getElementById("upload_brand").value,
        color: document.getElementById("upload_color").value,
        style: document.getElementById("upload_style").value,
        condition: document.getElementById("upload_condition").value,
        address: document.getElementById("input").value,
        price: document.getElementById("upload_price").value
    };

    for(let i = 0; i < items.length; i++) {
        if(items[i] == "") {
            alert("Please fill out form correctly!");
        }
    }

    itemList.push(items);
    localStorage.setItem("itemList", JSON.stringify(itemList));
}

function validateUploadForm() {
    var imageFile = document.getElementById("upload_myFile").value;
    var description = document.getElementById("upload_decription").value;
    var title = document.getElementById("upload_title").value;
    var brand = document.getElementById("upload_brand").value;
    var color = document.getElementById("upload_color").value;
    var style = document.getElementById("upload_style").value;
    var condition = document.getElementById("upload_condition").value;
    var address = document.getElementById("input").value;
    var price = document.getElementById("upload_price").value;
    
    if (imageFile == null || imageFile == "", description == null || description == "", title == null || title == "", brand == null || brand == "", color == null || color == "", style == null || style == "", condition == null || condition == "", address == null || address == "", price == null || price == "") {
        alert("Please Fill All Required Field");
        return false;
    }
}

function uploadInfoTable() {
    var arr = JSON.parse(localStorage.getItem("itemList"));
    var tbl = document.getElementById("itemTable");
    
    for(let i = 0; i < arr.length; i++) {
        var row = tbl.insertRow();
        var img = row.insertCell();
        var des = row.insertCell();
        var tit = row.insertCell();
        var bra = row.insertCell();
        var col = row.insertCell();
        var sty = row.insertCell();
        var cond = row.insertCell();
        var add = row.insertCell();
        var pri = row.insertCell();

        img.innerHTML = arr[i].imageFile;
        des.innerHTML = arr[i].description;
        tit.innerHTML = arr[i].title;
        bra.innerHTML = arr[i].brand;
        col.innerHTML = arr[i].color;
        sty.innerHTML = arr[i].style;
        cond.innerHTML = arr[i].condition;
        add.innerHTML = arr[i].address;
        pri.innerHTML = arr[i].price;
    }
}

function storeDataContact() {
    var contactList = JSON.parse(localStorage.getItem('contactList') || "[]");
    var contact = {
        fname: document.getElementById("contact_fname").value,
        lname: document.getElementById("contact_lname").value,
        email: document.getElementById("contact_email").value,
        contactAddress: document.getElementById("input").value,
        subjectMatter: document.getElementById("contact_subjectMatter").value,
        contactDescription: document.getElementById("contact_contactDescription").value
    };

    contactList.push(contact);
    localStorage.setItem("contactList", JSON.stringify(contactList));
}

function validateContactForm() {
    var fname = document.getElementById("contact_fname").value;
    var lname = document.getElementById("contact_lname").value;
    var email = document.getElementById("contact_email").value;
    var address = document.getElementById("input").value;
    var subjectMatter = document.getElementById("contact_subjectMatter").value;
    var description = document.getElementById("contact_contactDescription").value;
    
    if (fname == null || fname == "", lname == null || lname == "", email == null || email == "", address == null || address == "", subjectMatter == null || subjectMatter == "", description == null || description == "") {
        alert("Please Fill All Required Field");
        return false;
    }
}

function contactInfoTable() {
    var arr = JSON.parse(localStorage.getItem("contactList"));
    var tbl = document.getElementById("contactTable");
    
    for(let i = 0; i < arr.length; i++) {
        var row = tbl.insertRow();
        var fn = row.insertCell();
        var ln = row.insertCell();
        var em = row.insertCell();
        var inp = row.insertCell();
        var sub = row.insertCell();
        var des = row.insertCell();

        fn.innerHTML = arr[i].fname;
        ln.innerHTML = arr[i].lname;
        em.innerHTML = arr[i].email;
        inp.innerHTML = arr[i].contactAddress;
        sub.innerHTML = arr[i].subjectMatter;
        des.innerHTML = arr[i].contactDescription;
}

}

function DOM_Tree(e, ul = document.getElementById('tree')) {
    for (let i = 0; i < e.childNodes.length - 1; i++) {
        if (e.childNodes[i].id != 'tree') {
            let li = document.createElement('li');
            let el = e.childNodes[i];
            if (e.childNodes[i].id != undefined) {
                li.innerText = e.childNodes[i].nodeName + ' ' + e.childNodes[i].id;
                ul.append(li);
            }
            let ul1 = document.createElement('ul');
            DOM_Tree(e.childNodes[i], ul1);
            ul.append(ul1);
        }
    }
}

function printDOM() {
    DOM_Tree(document.body);
}

function validateLoginForm() {
    var emailAdd = document.getElementById("username").value;
    var password = document.getElementById("password").value;
   
    if (emailAdd == null || emailAdd == "", password == null || password == "") {
        alert("Please Fill All Required Field");
        return false;
    }
}

function validateRegisterForm() {
    var emailAdd = document.getElementById("username").value;
    var password = document.getElementById("password").value;
   
    if (emailAdd == null || emailAdd == "", password == null || password == "") {
        alert("Please Fill All Required Field");
        return false;
    }
}