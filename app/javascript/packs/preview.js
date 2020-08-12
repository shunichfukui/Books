if (window.location.pathname === '/books/new') {
  document.addEventListener('DOMContentLoaded', function(){
    const ImageList = document.getElementById('sbox9')

   
    const createImageHTML = (blob) => {
      const imageElement = document.createElement('div')
 
      const blobImage = document.createElement('img')
      blobImage.setAttribute('src', blob)
    
      imageElement.appendChild(blobImage)
      ImageList.appendChild(imageElement)
    }

    document.getElementById('books_tag_image').addEventListener('change', function(e){
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      };

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob)
    });
  });
}