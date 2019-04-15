
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap material admin template">
    <meta name="author" content="">
    
    <title>Live Channel Category</title>
    
    <link rel="apple-touch-icon" href="../libs/assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="../libs/assets/images/favicon.ico">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="../libs/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="../libs/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="../libs/assets/css/site.min.css">
    
    <!-- Plugins -->
    <link rel="stylesheet" href="../libs/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="../libs/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="../libs/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="../libs/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="../libs/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="../libs/global/vendor/flag-icon-css/flag-icon.css">
    <link rel="stylesheet" href="../libs/global/vendor/waves/waves.css"> 
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
    <!-- Script Vue and Axios -->
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
      Breakpoints();
    </script>
  </head>
  <body class="animsition">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <?php include 'dashboard.html';?>

    <!-- Page -->
    <div class ="page" id ="categoryTabs">
      <div class= " panel nav-tabs-horizontal">
          <div class = "panel-heading">
              <h3 class = "panel-title"> Category</h3>
              <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                <li class ="nav-item" role="presentation" v-if= "category != null" 
                    v-for= "(categories, index) in category" 
                    v-on:click ="selectCategory(categories)"> 
                    <a class="nav-link" data-toggle="tab" 
                    :href="'#TAB' + categories.id" 
                    v-bind:class="{active:index ==0}"
                    :aria-controls="categories.id" role="tab">
                     {{categories.name}}
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <div class="dropdown" style="padding-top:15%">
                        <div class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="cursor: pointer;"
                             role="tab">
                              Actions
                        </div>
                        <!--  -->
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem" 
                            data-target="#exampleNiftySlideFromBottom" 
                            data-toggle="modal" >Create category</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem" 
                            data-target="#renameTab" v-show = "items != null"
                            data-toggle="modal" >Edit category</a>
                            <a class="dropdown-item" href="javascript:void(0)"
                             role="menuitem"  v-show = "items != null"
                            v-on:click="removeCurrentCategory(items)">Delete category </a>
                            
                        </div>
                    </div>
                </li>
              </ul>
          </div>
          <div class= "panel-body">
            <div class="tab-content">
                <div class="tab-pane" :id= "'TAB' + categories.id" 
                      role="tabpanel" v-for="(categories, index) in category"
                      v-bind:class="{active:index==0}">
                  <div class= "row">
                      <div style="padding:10px;margin:0px;" > 
                          <div class="panel-action">
                            <!-- <button type= "button"  data-target="#AddNewLinksToCategory" 
                            data-toggle="modal"> Add new</button> -->
                            <div class="panel-action icon wb-close" title="Add new links" data-container="body" 
                                 data-target="#AddNewLinksToCategory" 
                                 data-toggle="modal">Add New</div>

                              <div class="panel-body" >
                                  
                               <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
                                <thead>
                                  <tr>
                                    <th>Name</th>
                                    <th>Url</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody v-for="(items, index) in group">
                                  <tr>
                                    <td>
                                        {{items.name}}
                                    </td>
                                    <td>
                                        {{items.url}}
                                    </td>
                                  <td>
                                    <button v-on:click ="removeLinks(items)">Delete</button>
                                  </td>
                                  </tr>
                                </tbody>
                               </table>
                              
                              </div>
                          </div>
                      </div>
                  </div>
                    
                  
                  </div>
               
               
            </div>
          </div>
      </div>
      <!-- modal add new category -->
      <div class="modal fade modal-slide-from-bottom" id="exampleNiftySlideFromBottom"
         aria-hidden="true" aria-labelledby="exampleModalTitle" role="dialog"
         tabindex="-1">
        <div class="modal-dialog modal-simple">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title">Add new category</h4>
                </div>
                <div class="modal-body" style="min-height:30px !important">
                    <div class="row" style="margin-bottom:0px">
                        <div class="col-12 form-group" style="margin-bottom:0px">
                            <input type="text" class="form-control" v-model="newCategoryName" placeholder="Category name">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-pure" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" v-on:click="addNewCategory(newCategoryName)" data-dismiss="modal">Save changes</button>
                </div>
            </div>
        </div>
      </div>
      <!--modal edit category-->
      <div class="modal fade modal-slide-from-bottom" id="renameTab"
         aria-hidden="true" aria-labelledby="renameTab" role="dialog"
         tabindex="-1">
        <div class="modal-dialog modal-simple">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title">Edit Category</h4>
                </div>
                <div class="modal-body" style="min-height:30px !important">
                    <div class="row" style="margin-bottom:0px">
                        <div class="col-12 form-group" style="margin-bottom:0px">
                            <input type="text" id="tab-name" class="form-control" v-model = "items.name">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-pure" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" v-on:click="renameCategory(items)" data-dismiss="modal">Save</button>
                </div>
            </div>
        </div>
      </div>
      
      
      <!-- modal add new live channel links-->
      <div class="modal fade modal-slide-from-bottom" id="AddNewLinksToCategory"
      aria-hidden="true" aria-labelledby="exampleModalTitle" role="dialog"
      tabindex="-1">
     <div class="modal-dialog modal-simple">
         <div class="modal-content">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">×</span>
                 </button>
                 <h4 class="modal-title">Add New Links</h4>
             </div>
             <div class="modal-body" style="min-height:30px !important">
                 <table>
                   <thead>
                     <tr>
                       <td>ID</td>
                       <th>Name</th>
                       <th>Url</th>
                       <th>Description</th>
                     </tr>
                   </thead>
                   <tbody>
                      <tr v-for = "links in link">
                        <td>{{links.id}}</td>
                        <td>{{links.name}}</td>
                        <td> {{links.url}}</td>
                        <td>{{links.description}}</td>
                        <td>
                          <span class="checkbox-custom checkbox-primary" style="padding:0px;margin:0px">
                            <input class="selectable-item" type="checkbox" v-model = "links.checked" v-on:click ="select(links)">
                            <label></label>
                        </span>
                        </td>
                      </tr>
                    </tbody>
                 </table>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-default btn-pure" data-dismiss="modal">Đóng</button>
                 <button type="button" class="btn btn-primary" v-on:click="addNewChannel()" data-dismiss="modal">Tạo</button>
             </div>
         </div>
     </div>
      </div>
      
     <!-- End Page -->

    
    </div>
    
  
    <!-- Footer -->
    <footer class="site-footer">
      <div class="site-footer-legal">© 2018 <a href="http://themeforest.net/item/remark-responsive-bootstrap-admin-template/11989202">Remark</a></div>
      <div class="site-footer-right">
        Crafted with <i class="red-600 icon md-favorite"></i> by <a href="https://themeforest.net/user/creation-studio">Creation Studio</a>
      </div>
    </footer>
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
        <script src="../libs/global/js/Plugin/asprogress.js"></script>
    
        <script src="../libs/assets/examples/js/uikit/progress-bars.js"></script>
    
  </body>
</html>
<script>
 
new Vue ({
  el: '#categoryTabs',
  data: function(){
    return{
      category: [],
      activeBoard: null,
      group: [],
      index:'',
      newCategoryName:'',
      items:[],
      link:[],
      currentChannelLinks: ''
   
    
     
      
    }
  },
  
  mounted () {
    //Load all category
      this.getAllCategory();
      //this.getAllGroup();
      this.getAllLinks();
      formModel = this;
    },
  methods: {
   
    selectCategory(category){
      this.activeBoard = category;
      this.items = this.activeBoard;
      console.log(this.items.name);
      console.log('Select board ' + this.activeBoard.id);
      this.getAllGroup();
    },
    getAllCategory(){
      axios.get('http://localhost:81/IPTV/api/index.php/get_all_live_category').
      then(response =>{
        this.category = response.data.tree_data;
        if (this.category.length > 0) {
                            this.activeBoard = this.category[0].tree_data;
                            //Select fist category as default for first load
                            this.selectCategory(this.category[0]);
                        }
        // this.activeBoard= this.category[0].tree_data;
      })
    },
    getAllGroup(){
      
      // console.log(this.index);
      if (this.activeBoard != null)
       {
        this.index = this.activeBoard.id;
        
        axios.get('http://localhost:81/IPTV/api/index.php/get_channels_by_category_1/' + this.index).
        then(response =>{
        this.group = response.data.tree_data;    

      })
       }
    },
    addNewCategory(){
      axios.post('http://localhost:81/IPTV/api/index.php/add_new_live_category', {name: this.newCategoryName })
      .then(response=>{
        this.getAllCategory();
      })
    },
    renameCategory(items){
      axios.post('http://localhost:81/IPTV/api/index.php/edit_live_category/' + items.id, 
      { name: items.name})
      .then(response => {
        this.getAllCategory();
        // console.log(items.name);
      })
    },
    removeCurrentCategory(items){
     axios.delete('http://localhost:81/IPTV/api/index.php/delete_live_category/' + items.id)
     .then(response =>{
      this.getAllCategory();
     })
    },
    removeLinks(items){
      axios.delete('http://localhost:81/IPTV/api/index.php/delete_live_group_1/' + items.id)
      .then(response => {
        this.getAllGroup();
        console.log(items.id);
      })
    },
    getAllLinks(){
      axios.get('http://localhost:81/IPTV/api/index.php/get_all_live_channel_1')
      .then(response => {
        this.link = response.data.tree_data;
      })
    },
    select(links){
      this.currentChannelLinks = links.id;
      console.log(this.currentChannelLinks);
    },
    addNewChannel(){
      var i = this.currentChannelLinks;
      console.log('Current channel id ' + i);
      var y = this.activeBoard.id;
      console.log( 'Current tab id' +y);
      axios.post('http://localhost:81/IPTV/api/index.php/add_new_live_group', {
        live_category_id : y,
        live_channel_id : i
      })
      .then(response=>{
        this.getAllGroup();
      })
      

    }
  }

})
</script>