<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpaWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="myCarousel" data-interval="500" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox" style="width: 100%; height: 500px">

            <div class="item active">
                <img src="https://cdn.pixabay.com/photo/2017/09/11/11/22/essential-oils-2738555__340.jpg" alt="Chania" width="100%" height="100%">
                <div class="carousel-caption">
                    <h3>Chania</h3>
                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                </div>
            </div>

            <div class="item">
                <img src="https://cdn.pixabay.com/photo/2018/02/27/03/36/spa-3184610__340.jpg" alt="Chania" width="100%" height="100%">
                <div class="carousel-caption">
                    <h3>Chania</h3>
                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                </div>
            </div>

            <div class="item">
                <img src="https://cdn.pixabay.com/photo/2017/09/11/11/22/essential-oils-2738555__340.jpg" alt="Flower" width="100%" height="100%">
                <div class="carousel-caption">
                    <h3>Flowers</h3>
                    <p>Beautiful flowers in Kolymbari, Crete.</p>
                </div>
            </div>

            <div class="item">
                <img src="https://cdn.pixabay.com/photo/2014/03/11/22/56/wellness-285587__340.jpg" alt="Flower" width="100%" height="100%">
                <div class="carousel-caption">
                    <h3>Flowers</h3>
                    <p>Beautiful flowers in Kolymbari, Crete.</p>
                </div>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">
       <div class="row" style="text-align:center;align-items:center">
           <h2>Dịch vụ nổi bật</h2>
           <div class="row" >
               <div class="col-md-3"></div>
               <div class="col-md-6" style="align-items:center">
                     <ul class="nav nav-tabs">
                        <li class="active"><a href="#home">Cơ bản</a></li>
                        <li><a href="#menu1">Chuyên Xâu</a></li>
                        <li><a href="#menu2">Combo DexTo </a></li>
                        <li><a href="#menu3">Body</a></li>
                    </ul>
               </div>
               <div class="col-md-3"></div>
            
           </div>
           
       </div>
        
        

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
               <div class="row" style="height:500px">
                   
                    <div class="col-sm-4" style="height:100%;border:solid;border-width:3px">.col-sm-4</div>
                      <div class="col-sm-4"  style="height:100%;border:solid;border-width:3px">.col-sm-4</div>
                      <div class="col-sm-4"  style="height:100%;border:solid;border-width:3px">.col-sm-4</div>

               </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <h3>Menu 1</h3>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>Menu 2</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3>Menu 3</h3>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $(".nav-tabs a").click(function () {
                $(this).tab('show');
            });
        });
    </script>



</asp:Content>
