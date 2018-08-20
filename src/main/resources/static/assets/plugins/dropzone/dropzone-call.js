 Dropzone.autoDiscover = false;

 $(document).ready(function () {
     $("#id_dropzone").dropzone({
         maxFiles: 6,
         paramName: "file",
         uploadMultiple: true,
         acceptedFiles: ".jpg,.gif,.png",
         dictMaxFilesExceeded: "您最多只能上传6个文件！",
         dictResponseError: '文件上传失败!',
         dictInvalidFileType: "你不能上传该类型文件,文件类型只能是*.jpg,*.gif,*.png。",
         dictFallbackMessage: "浏览器不受支持",
         dictFileTooBig: "文件过大上传文件最大支持.",
         url: "doFoodAdd",
         init: function () {
             this.on("addedfile", function (file) {
                 console.log("File " + file.name + "uploaded");
             });
             this.on("removedfile", function (file) {
                 console.log("File " + file.name + "removed");
             });
             this.on("successmultiple", function (file, response) {
                 console.log(file);
                 console.log(response);
             });
         }
     });
 })
