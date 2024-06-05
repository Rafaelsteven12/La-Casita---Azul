document.addEventListener('DOMContentLoaded', function () {
   fetchGalleryImages();

   function fetchGalleryImages() {
       fetch('fetch_images.php')
           .then(response => response.json())
           .then(data => {
               const galleryData = document.getElementById('gallery-data');
               galleryData.innerHTML = '';

               data.forEach((image, index) => {
                   const row = document.createElement('tr');

                   const cellIndex = document.createElement('td');
                   cellIndex.textContent = index + 1;
                   row.appendChild(cellIndex);

                   const cellImagePath = document.createElement('td');
                   const img = document.createElement('img');
                   img.src = image.image_path;
                   img.alt = `Image ${index + 1}`;
                   img.style.width = '100px';
                   img.style.height = '100px';
                   cellImagePath.appendChild(img);
                   row.appendChild(cellImagePath);

                   const cellAction = document.createElement('td');
                   const deleteButton = document.createElement('button');
                   deleteButton.textContent = 'Delete';
                   deleteButton.classList.add('btn', 'btn-danger', 'btn-sm');
                   deleteButton.addEventListener('click', function () {
                       deleteImage(image.id);
                   });
                   cellAction.appendChild(deleteButton);
                   row.appendChild(cellAction);

                   galleryData.appendChild(row);
               });
           });
   }

   function deleteImage(imageId) {
       if(confirm('Are you sure you want to delete this image?')) {
           fetch(`delete_image.php?id=${imageId}`, { method: 'GET' })
               .then(response => response.text())
               .then(data => {
                   alert(data);
                   fetchGalleryImages();
               });
       }
   }
});
