<template>
    <div class="container">

     <div class="form-group">
            <label for="exampleInputEmail1">Folder Name</label>
           <input id="text" type="text" class="form-control"  v-model="folderName" required autofocus>
     </div>

        <div class="large-12 medium-12 small-12 filezone">
            <input type="file" id="files" ref="files" multiple v-on:change="handleFiles()"/>
            
                    
            <p>
                Drop your files here <br>or click to search
            </p>
        </div>

        <div v-for="(file, key) in files"  class="file-listing">
            <img class="preview" v-bind:ref="'preview'+parseInt(key)"/>
             <img id="previewIcon" :src="file.fileSrc"  v-if="filetype = 1" />
            {{ file.name }}
            
            <div class="success-container" v-if="file.id > 0">
                Success
                <input type="hidden" :name="input_name" :value="file.id"/>
            </div>
            <div class="remove-container" v-else>
                <a class="remove" v-on:click="removeFile(key)">Remove</a>
            </div>
            <progress :value="percent" max="100"></progress>% {{percent}}

        </div>

        <a class="submit-button" v-on:click="submitFiles()" v-show="files.length > 0">Submit</a>
        <a class="submit-button" v-on:click="clearFiles()" v-show="files.length > 0">Clear</a>
    </div>
</template>

<script>

export default {
    
     props: ['input_name', 'post_url'],
    data() {
        console.log("here");
        return {
            files: [],
            filetype:"0",
            fileSrc:"",
            folderName:"",
            percent:0
            //post_url: "files/upload-file"
        }
        
    },
    methods: {
       handleFiles() {
            let uploadedFiles = this.$refs.files.files;
            for(var i = 0; i < uploadedFiles.length; i++) {

                this.files.push(uploadedFiles[i]);
            }
            
            this.getImagePreviews();
            console.log(this.files)
        },
       getImagePreviews(){
           
            for( let i = 0; i < this.files.length; i++ ){  
                const str = this.files[i].name
                const extension = str.slice((str.lastIndexOf(".") - 1 >>> 0) + 2)  
                if ( /\.(jpe?g|png|gif)$/i.test( this.files[i].name ) ) {
                    let reader = new FileReader();
                    reader.addEventListener("load", function(){
                        this.$refs['preview'+parseInt(i)][0].src = reader.result;
                    }.bind(this), false);
                    reader.readAsDataURL( this.files[i] );
                }
            
                switch(extension) {
                    case "css":
                       
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/css.png';
                        break;
                    case "docx":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/docx.png';
                        break;

                    case "fla":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/fla.png';
                        break;

                    case "html":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/html.png';
                        break;

                    case "ind":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/ind.png';
                        break;
                    
                    case "ini":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/ini.png';
                        break;
                    
                    case "jsf":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/jsf.png';
                        break;
                    
                    case "mkv":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/mkv.png';
                        break;
                    
                    case "mov":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/mov.png';
                        break;
                    
                    case "pdf":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/pdf.png';
                        break;
                    
                    case "pptx":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/pptx.png';
                        break;
                    
                    case "proj":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/proj.png';
                        break;

                    case "pub":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/pub.png';
                        break;
                    
                    case "md":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/readme.png';
                        break;

                    case "txt":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/text.png';
                        break;
                    
                    case "tiff":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/tiff.png';
                        break;
                    
                    case "wav":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/wav.png';
                        break;
                    
                    case "xls":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/xls.png';
                        break;
                    
                    case "xlsx":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/xls.png';
                        break;
                    
                    case "zip":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/zip.png';
                        break;
                    
                    case "php":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/php.png';
                        break;
                    
                    case "js":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/js.png';
                        break;
                    
                    case "py":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/py.png';
                        break;

                    case "rb":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/rb.png';
                        break;

                    case "rar":
                        this.filetype = 1;
                        this.files[i].fileSrc = '/files/rar.png';
                        break;
                    default:
                       this.$nextTick(function(){
                         this.$refs['preview'+parseInt(i)][0].src = '/files/generic.png';
                    });
                 }
            }

         
            
      },
       removeFile( key ){
            this.files.splice( key, 1 );
            this.getImagePreviews();
    },
    makeid(length) {
            var result           = '';
            var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            var charactersLength = characters.length;
            for ( var i = 0; i < length; i++ ) {
                result += characters.charAt(Math.floor(Math.random() * charactersLength));
            }
            return result;  
    },
    msg(header, message){
        this.$swal(header, message, 'OK');
       //alert("kindly add a folder name");
    },
    clearFiles() {
        this.files = [];
    },
    submitFiles() {
        if(!this.folderName){
           this.msg('Folder Name', 'kindly add a folder name');
        return 0;
            
        }
        let folderIndexName = this.folderName + "_" + this.makeid(13)
        
    for( let i = 0; i < this.files.length; i++ ){
        const str = this.files[i].name
        const extension = str.slice((str.lastIndexOf(".") - 1 >>> 0) + 2) 
        if(this.files[i].id) {
            continue;
        }
        console.log(extension);
        let formData = new FormData();
        formData.append('file', this.files[i]);
        formData.append('folderName', this.folderName);
        formData.append('folderIndexName', folderIndexName);
        formData.append('fileType', extension);
        
       axios({
                method: 'post', //CHANGE TO POST
                url: '/' + this.post_url,      
                data: formData,
                onUploadProgress: function( progressEvent ) {
                    this.percent = parseInt( Math.round( ( progressEvent.loaded * 100 ) / progressEvent.total ) );
                }.bind(this)
                
        }).then(function(data) {
            this.files[i].id = data['data']['id'];
            this.files.splice(i, 1, this.files[i]);
            this.removeFile( i );
            console.log('success');
        }.bind(this)).catch(function(data) {
            this.percent = 0;
            console.log('error');
        });
    }
}

    }
        }
</script>

<style scoped>
      input[type="file"]{
        opacity: 0;
        width: 100%;
        height: 200px;
        position: absolute;
        cursor: pointer;
    }
    .filezone {
        outline: 2px dashed white;
        outline-offset: -10px;
        background: #2196F3;
        color: white;
        padding: 10px 10px;
        min-height: 200px;
        position: relative;
        cursor: pointer;
    }
    .filezone:hover {
        background: #c0c0c0;
    }

    .filezone p {
        font-size: 1.2em;
        text-align: center;
        padding: 50px 50px 50px 50px;
    }
    div.file-listing img{
        max-width: 90%;
    }

    div.file-listing{
        margin: auto;
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    div.file-listing img{
        height: 100px;
    }
    div.success-container{
        text-align: center;
        color: green;
    }

    div.remove-container{
        text-align: center;
    }

    div.remove-container a{
        color: red;
        cursor: pointer;
    }

    a.submit-button{
        display: block;
        margin: auto;
        text-align: center;
        width: 200px;
        padding: 10px;
        text-transform: uppercase;
        background-color: #CCC;
        color: white;
        font-weight: bold;
        margin-top: 20px;
    }
</style>