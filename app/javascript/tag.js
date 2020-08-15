if (location.pathname.match("tags/index")){
  window.addEventListener("load", (e) => {
  const inputElement = document.getElementById("q_tag_name_cont");
    inputElement.addEventListener("keyup", (e) => {
      const input = document.getElementById("q_tag_name_cont").value;
      const xhr = new XMLHttpRequest();
      xhr.open("GET", `search/?input=${input}`, true);
      xhr.responseType = "json";
      xhr.send();
      xhr.onload = () => {
        const tagName = xhr.response.keyword;
        const serachResult = document.getElementById('tag_search')
        serachResult.innerHTML = ''
        tagName.forEach(function(tag){
 
          const parentsElement = document.createElement('div')
          const childElement = document.createElement('div')
 
          parentsElement.setAttribute('id', 'parents')
          childElement.setAttribute('id', tag.id )
          childElement.setAttribute('class', 'child' )
 
          parentsElement.appendChild(childElement)
          childElement.innerHTML = tag.tag_name
          serachResult.appendChild(parentsElement)
 
          const clickElement = document.getElementById(tag.id)
          clickElement.addEventListener("click", () => {
            document.getElementById("q_tag_name_cont").value = clickElement.textContent;
            clickElement.remove();
          })
        })
      }
    });
  })
 };