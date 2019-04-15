
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap material admin template">
    <meta name="author" content="">

    <title>Live Channel</title>

    <link rel="apple-touch-icon" href="../libs/assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="../libs/assets/images/favicon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="../libs/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="../libs/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="../libs/assets/css/site.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

    <!-- Plugins -->
    <link rel="stylesheet" href="../libs/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="../libs/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="../libs/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="../libs/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="../libs/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="../libs/global/vendor/flag-icon-css/flag-icon.css">
    <link rel="stylesheet" href="../libs/global/vendor/waves/waves.css">
        <link rel="stylesheet" href="../libs/global/vendor/asscrollable/asScrollable.css">


    <!-- Fonts -->
    <link rel="stylesheet" href="../libs/global/fonts/material-design/material-design.min.css">
    <link rel="stylesheet" href="../libs/global/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>

    <!--[if lt IE 9]>
    <script src="../libs/global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->

    <!--[if lt IE 10]>
    <script src="../libs/global/vendor/media-match/media.match.min.js"></script>
    <script src="../libs/global/vendor/respond/respond.min.js"></script>
    <![endif]-->

    <!-- Scripts -->
    <script src="../libs/global/vendor/breakpoints/breakpoints.js"></script>


    <script>
      Breakpoints();
    </script>
  </head>
  <style>
    .modal-mask {
        position: fixed;
        z-index: 9998;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, .5);
        display: table;
        transition: opacity .3s ease;
    }

    .modal-wrapper {
        display: table-cell;
        vertical-align: middle;
    }

    .modal-container {
      width: 600px;
        margin: 0px auto;
        padding: 20px 30px;
        background-color: #fff;
        border-radius: 2px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, .33);
        transition: all .3s ease;
        font-family: Helvetica, Arial, sans-serif;
        max-height: calc(100vh - 22px);
        overflow-y: auto;
    }

    .modal-header h3 {
        margin-top: 0;
        color: #42b983;
    }

    .modal-default-button {
        float: right;
    }

    /*
    * The following styles are auto-applied to elements with
    * transition="modal" when their visibility is toggled
    * by Vue.js.
    *
    * You can easily play with the modal transition by editing
    * these styles.
    */

    .modal-enter {
        opacity: 0;
    }

    .modal-leave-active {
        opacity: 0;
    }

        .modal-enter .modal-container,
        .modal-leave-active .modal-container {
            -webkit-transform: scale(1.1);
            transform: scale(1.1);
        }
   
  </style>
  <body class="animsition" >
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <?php 
    include 'dashboard.html';
    ?>

    <!-- Page -->
    <div class="page" id="linktable" >
      <div class="page-header">
        <!-- <h1 class="page-title">Live Channel </h1> -->
        <div class="page-header-actions">
          <button type="button" class="btn btn-raised btn-primary btn-block active waves-effect waves-classic"data-toggle="tooltip"
            data-original-title="Add new" v-on:click="showPopup()" >
            <i class="icon md-edit" aria-hidden="true"></i>
          </button>
          <!-- <button type="button" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip"
            data-original-title="Refresh">
            <i class="icon md-refresh-alt" aria-hidden="true"></i>
          </button>
          <button type="button" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip"
            data-original-title="Setting">
            <i class="icon md-settings" aria-hidden="true"></i>
          </button> -->
        </div>
      </div>
      <!-- Page Content -->
      <div class="panel">
        <header class="panel-heading">
          <div class="panel-actions"></div>
          <h3 class="panel-title">Live Channel Links </h3>
         
        </header>
        <div class="panel-body">
          <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Url</th>
                <th>Created</th>
                <th>Modified</th>
                <th></th>
              </tr>
            </thead>
            <tbody v-for="items in info">
              <tr>
                <td>
                    {{items.id}}
                </td>
                <td>
                    {{items.name}}
                </td>
                <td>{{items.description}}
                </td>
                <td>
                   {{items.url}} 
                </td>
                <td>
                  {{items.created}}
                </td>
                <td>
                  {{items.modified}}
                </td>
                <td>
                    <button type= "button" class="btn btn-pure btn-primary waves-effect waves-classic" v-on:click ="showEditPopup(); getContentById(items)">
                      <i class="material-icons">create</i>
                      </button>
                  <button type= "button" class="btn btn-pure btn-primary waves-effect waves-classic" v-on:click ="deleteLinks(items.id)">
                    <i class="material-icons">delete</i>
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

        <create-new-link :info="info"  v-show="popupState" v-on:close ="popupState = false"></create-new-link>
  
        <!-- v-show="show" -->
        <edit-new-links 
                        
                        :value="contentbyid"
                        v-show="EditpopupState" v-on:close ="EditpopupState = false"
        ></edit-new-links>
      <!-- End Page Content -->
        
    
     
      
    </div>

    <template id = "add-new-links" >
      <div  class = "modal-mask">
      <div class = "modal-wrapper">
        <div class="modal-container">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click = "$emit('close')">
          <span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="exampleFormModalLabel">Add New Links</h4>
            
          </div>
          <div class="modal-body">
        <div class="col-xl-10 form-group">
          <input input type="text" class="form-control" placeholder="name"v-model="name"/>
        </div>
        <div class="col-xl-10 form-group">
          <input type= "text" class="form-control" placeholder= "url" v-model="url"/>
        </div>
        <div class="col-xl-10 form-group">
          <input type="text" class="form-control" placeholder="description" v-model ="description"/>
        </div>
        <div class="col-xl-10 form-group">
          <input type="date"class= "form-control" placeholder="Input datetime" v-model="date"/>
        </div>
        <button class="btn btn-primary" v-on:click="createNew" type="submit">Add new link</button>
      </div>
    </div>
        </div>
      </div>
    </template>
 
    <!-- End Page -->
    <template id = "edit-new-links" >
      <div class ="modal-mask">
        <div class = "modal-wrapper">
          <div class="modal-container">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click = "$emit('close')">
            <span aria-hidden="true">×</span>
              </button>
              <h4 class="modal-title">Edit Link</h4>
            </div>
            <div class="modal-body container-fluid">
          <div class="col-xl-4 form-group">
            <input input type="text" class="form-control" v-model="value.name"/>
          </div>
          <div class="col-xl-4 form-group">
            <input type= "text" class="form-control" v-model="value.url"/>
          </div>
          <div class="col-xl-4 form-group">
            <input type="text" class="form-control" v-model ="value.description"/>
          </div>
          <div class="col-xl-4 form-group">
            <input type="date"class= "form-control" v-model="value.date"/>
          </div>
          <button class="btn btn-primary" type="submit" v-on:click = "editLink(value)">Edit</button>
        </div>
          </div>
      </div>
      </div>
     
    </template>

      
    
    <!-- Footer -->
    <!-- Core  -->
    <script src="../libs/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="../libs/global/vendor/jquery/jquery.js"></script>
    <script src="../libs/global/vendor/popper-js/umd/popper.min.js"></script>
    <script src="../libs/global/vendor/bootstrap/bootstrap.js"></script>
    <script src="../libs/global/vendor/animsition/animsition.js"></script>
    <script src="../libs/global/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="../libs/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="../libs/global/vendor/asscrollable/jquery-asScrollable.js"></script>
    <script src="../libs/global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
    <script src="../libs/global/vendor/waves/waves.js"></script>

    <!-- Plugins -->
    <script src="../libs/global/vendor/switchery/switchery.js"></script>
    <script src="../libs/global/vendor/intro-js/intro.js"></script>
    <script src="../libs/global/vendor/screenfull/screenfull.js"></script>
    <script src="../libs/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <script src="../libs/global/vendor/asprogress/jquery-asProgress.js"></script>
        <script src="../libs/global/vendor/draggabilly/draggabilly.pkgd.js"></script>
        <script src="../libs/global/vendor/raty/jquery.raty.js"></script>

    <!-- Scripts -->
    <script src="../libs/global/js/Component.js"></script>
    <script src="../libs/global/js/Plugin.js"></script>
    <script src="../libs/global/js/Base.js"></script>
    <script src="../libs/global/js/Config.js"></script>

    <script src="../libs/assets/js/Section/Menubar.js"></script>
    <script src="../libs/assets/js/Section/GridMenu.js"></script>
    <script src="../libs/assets/js/Section/Sidebar.js"></script>
    <script src="../libs/assets/js/Section/PageAside.js"></script>
    <script src="../libs/assets/js/Plugin/menu.js"></script>

    <script src="../libs/global/js/config/colors.js"></script>
    <script src="../libs/assets/js/config/tour.js"></script>
    <script>Config.set('assets', '../libs/assets');</script>

    <!-- Page -->
    <script src="../libs/assets/js/Site.js"></script>
    <script src="../libs/global/js/Plugin/asscrollable.js"></script>
    <script src="../libs/global/js/Plugin/slidepanel.js"></script>
    <script src="../libs/global/js/Plugin/switchery.js"></script>
        <script src="../libs/global/js/Plugin/responsive-tabs.js"></script>
        <script src="../libs/global/js/Plugin/tabs.js"></script>
        <script src="../libs/global/js/Plugin/asprogress.js"></script>
        <script src="../libs/global/js/Plugin/panel.js"></script>
        <script src="../libs/global/js/Plugin/asscrollable.js"></script>
        <script src="../libs/global/js/Plugin/raty.js"></script>
        <script src="../libs/global/js/Plugin/datatables.js"></script>

        <script src="../libs/assets/examples/js/uikit/panel-structure.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  </body>
</html>

<script>
Vue.component('create-new-link', {
  template: "#add-new-links",
  props:['info'],
  data(){
    return{
      name:'',
      url:'',
      description:'',
      date:'', 
    }
  },
  methods: {
      createNew: function(){
        axios.post('http://localhost:81/IPTV/api/index.php/add_new_live_channel', {name: this.name, url: this.url, description: this.description, created: this.date})
        .then(response => {
          this.info.push(response.data.tree_data[0]);
          this.$emit('close');
        });
        
      }
    }
  })

Vue.component('edit-new-links', {
  template: "#edit-new-links",
  props: ['value'],
  data(){
      return{
        name:'',
        url:'',
        description:'',
        date:'',
        show:false
      }
  },
  methods:{
    editLink(value){
      axios.post('http://localhost:81/IPTV/api/index.php/edit_live_channel/' + value.id, {
        name: value.name, 
        url:value.url,
        description: value.description
        }).
      then(response => {
            // this.name = event.target.value;
            // this.$emit('change', this.name);
            // this.$emit('ischange', true);
            this.$emit('close');
          })
    }
  }
})
new Vue({
  el: '#linktable',
  data () {
      return {
        info: [],
        interval: null,
        name:'',
        url:'',
        description:'',
        date:'',
        EditpopupState: false,
        popupState: false,
        tree_data: [],
        contentbyid:[]
      
      }
    },
    mounted () {
      this.getAllLink();
      formModel = this;
    },
    methods:{
      getContentById(item){
        this.contentbyid = item;

      },
      getAllLink(){
        axios
          .get('http://localhost:81/IPTV/api/index.php/get_all_live_channel_1')
          .then(response => {
            this.info = response.data.tree_data;
           
          })
          
      },
      deleteLinks(id){
        axios.delete('http://localhost:81/IPTV/api/index.php/delete_live_channel/' + id).
        then(response => {
        
          // var newChanel = response.data.tree_data[0];
          var indexOfItem = this.info.map(function (x) { return x.id; }).indexOf(id);
          this.info.splice(indexOfItem, 1);
        })
      },
      showPopup: function() {
      this.popupState = true;
    },
    closePopup: function() {
      this.popupState = false;
    },
      showEditPopup: function() {
      this.EditpopupState = true;
      },
      closeEditPopup1: function() {
      this.EditpopupState = false;
      },
      
  }
})
</script>

