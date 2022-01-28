package §_-iZ§
{
   import §_-7V§.§_-C§;
   import §_-7V§.§_-LB§;
   import §_-9k§.§_-X7§;
   import §_-Ll§.§_-4G§;
   import §_-Ll§.§_-5r§;
   import §_-Ll§.§_-FU§;
   import §_-Ll§.§_-JL§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-bo§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar implements §_-5r§
   {
      
      public static const §_-qH§:String = "loginHelper";
      
      public static const §_-N0§:String = "highscoresCarousel";
      
      public static const §_-LI§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-Xw§:String = "1-4";
      
      public static const §_-9o§:String = "1-5";
      
      public static const §_-bL§:String = "1-6";
       
      
      private var §_-5f§:Array;
      
      private var §_-2H§:String = "loginHelper";
      
      private var §_-uS§:§_-2f§;
      
      private var §_-z-§:§_-2f§;
      
      private var §_-HQ§:§_-2f§;
      
      private var §_-7l§:§_-2f§;
      
      private var §_-R1§:§_-FU§;
      
      private var §_-BB§:§_-FU§;
      
      private var mPageButton1:§_-FU§;
      
      private var mPageButton2:§_-FU§;
      
      private var mPageButton3:§_-FU§;
      
      private var mPageButton4:§_-FU§;
      
      private var mPageButton5:§_-FU§;
      
      private var §_-py§:§_-FU§;
      
      private var §_-Px§:int = 1;
      
      private var §_-nr§:String;
      
      private var §_-E8§:Array;
      
      private var §_-Sb§:§_-4G§;
      
      private var §_-eP§:Timer;
      
      private var §_-9y§:int;
      
      private var §_-4g§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-z-§ = new §_-2f§(§_-bL§);
         this.§_-HQ§ = new §_-2f§(§_-Xw§);
         this.§_-7l§ = new §_-2f§(§_-9o§);
         this.§_-eP§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-Px§;
      }
      
      public function set container(param1:§_-4G§) : void
      {
         this.§_-Sb§ = param1;
      }
      
      public function get container() : §_-4G§
      {
         return this.§_-Sb§;
      }
      
      public function §_-yA§(param1:XML, param2:§_-4G§, param3:§_-bo§, param4:§_-t6§, param5:MovieClip = null) : void
      {
         this.§_-Sb§ = new §_-4G§(param1,param2,param3,param5);
         this.§_-R1§ = this.§_-Sb§.getItemByName("Button_ArrowLeft") as §_-FU§;
         this.§_-BB§ = this.§_-Sb§.getItemByName("Button_ArrowRight") as §_-FU§;
         this.mPageButton1 = this.§_-Sb§.getItemByName("Button_Page1") as §_-FU§;
         this.mPageButton2 = this.§_-Sb§.getItemByName("Button_Page2") as §_-FU§;
         this.mPageButton3 = this.§_-Sb§.getItemByName("Button_Page3") as §_-FU§;
         this.mPageButton4 = this.§_-Sb§.getItemByName("Button_Page4") as §_-FU§;
         this.mPageButton5 = this.§_-Sb§.getItemByName("Button_Page5") as §_-FU§;
         this.§_-py§ = this.§_-Sb§.getItemByName("Button_Resume") as §_-FU§;
         this.§_-R1§.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.§_-BB§.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.§_-py§.mClip.addEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.changeState(this.§_-2H§);
         this.§_-pP§(false);
         var _loc6_:§_-4G§;
         (_loc6_ = this.§_-Sb§.getItemByName("HighscoreSidebar") as §_-4G§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-cm§);
         _loc6_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-1i§);
         if(this.§_-eP§)
         {
            this.§_-eP§.stop();
            this.§_-eP§.removeEventListener(TimerEvent.TIMER,this.§_-Bt§);
         }
         this.§_-eP§.reset();
         this.§_-eP§.start();
         this.§_-eP§.addEventListener(TimerEvent.TIMER,this.§_-Bt§);
         this.§_-9y§ = 1;
      }
      
      private function §_-cm§(param1:MouseEvent) : void
      {
         this.§_-4g§ = true;
      }
      
      private function §_-1i§(param1:MouseEvent) : void
      {
         this.§_-4g§ = false;
      }
      
      private function §_-Bt§(param1:TimerEvent) : void
      {
         if(this.§_-2H§ == §_-N0§ && !this.§_-4g§)
         {
            ++this.§_-9y§;
            if(this.§_-9y§ > 3)
            {
               this.§_-9y§ = 1;
            }
            this.showHighscores("1-" + (this.§_-9y§ + 3));
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-4G§ = null;
         this.§_-pP§(false);
         this.§_-R1§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.§_-BB§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         this.§_-py§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-sP§);
         if(this.§_-eP§)
         {
            this.§_-eP§.stop();
            this.§_-eP§.removeEventListener(TimerEvent.TIMER,this.§_-Bt§);
         }
         if(this.§_-Sb§)
         {
            _loc1_ = this.§_-Sb§.getItemByName("HighscoreSidebar") as §_-4G§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-cm§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-1i§);
            this.§_-Sb§.clear();
            this.§_-Sb§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-Px§ = param1;
         this.mPageButton1.setComponentState(§_-LB§.§_-bI§);
         this.mPageButton2.setComponentState(§_-LB§.§_-bI§);
         this.mPageButton3.setComponentState(§_-LB§.§_-bI§);
         this.mPageButton4.setComponentState(§_-LB§.§_-bI§);
         this.mPageButton5.setComponentState(§_-LB§.§_-bI§);
         (this["mPageButton" + param1] as §_-FU§).setComponentState(§_-LB§.§_-z6§);
      }
      
      private function §_-pP§(param1:Boolean) : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-sP§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-R1§.mClip:
               _loc2_ = Math.max(this.§_-Px§ - 1,1);
               break;
            case this.§_-BB§.mClip:
               _loc2_ = Math.min(this.§_-Px§ + 1,5);
               break;
            case this.mPageButton1.mClip:
               _loc2_ = 1;
               break;
            case this.mPageButton2.mClip:
               _loc2_ = 2;
               break;
            case this.mPageButton3.mClip:
               _loc2_ = 3;
               break;
            case this.mPageButton4.mClip:
               _loc2_ = 4;
               break;
            case this.mPageButton5.mClip:
               _loc2_ = 5;
               break;
            case this.§_-py§.mClip:
               this.§_-LL§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-E8§)
         {
            this.§_-4x§(this.§_-E8§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-qH§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-pP§(false);
               break;
            case §_-LI§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-pP§(true);
               break;
            case §_-N0§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-pP§(true);
               this.showHighscores("1-4");
         }
         this.§_-2H§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-2f§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-nr§ != param1)
         {
            this.§_-nr§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-Px§);
         }
         if(this.§_-Sb§)
         {
            _loc3_ = this.§_-Sb§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-Sb§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-pP§(false);
               break;
            case CLASSICO_2:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-pP§(false);
               break;
            case CLASSICO_3:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-pP§(false);
               break;
            case §_-bL§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-z-§;
               this.§_-pP§(true);
               break;
            case §_-Xw§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-HQ§;
               this.§_-pP§(true);
               break;
            case §_-9o§:
               if(this.§_-Sb§)
               {
                  this.§_-Sb§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-7l§;
               this.§_-pP§(true);
               break;
            default:
               this.§_-pP§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-7w§)
         {
            if(_loc2_.§_-1D§)
            {
               this.§_-4x§(_loc2_.§_-1D§,this.§_-Px§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-2f§.§_-lc§,this.§_-Jr§);
         }
      }
      
      private function §_-Jr§(param1:Event) : void
      {
         var _loc2_:§_-2f§ = param1.currentTarget as §_-2f§;
         _loc2_.removeEventListener(§_-2f§.§_-lc§,this.§_-Jr§);
         this.§_-4x§(_loc2_.§_-1D§,1);
      }
      
      private function §_-4x§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-E8§ = param1;
         if(!this.§_-Sb§)
         {
            return;
         }
         var _loc4_:Class = §_-X7§.§_-IA§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-Sb§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-5f§ = [];
         var _loc6_:int = 0;
         while(_loc6_ < 50)
         {
            param1.push({
               "nickName":"",
               "score":""
            });
            _loc6_++;
         }
         var _loc7_:int = 0;
         while(_loc7_ < 10)
         {
            _loc8_ = _loc7_ + (param2 - 1) * 10;
            if(_loc9_ = param1[_loc8_])
            {
               (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
               _loc10_.TextField_Name.text = _loc9_.nickName;
               _loc10_.TextField_Points.text = _loc9_.score;
               _loc10_.y = _loc10_.height * _loc7_;
               this.§_-5f§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-Sb§)
         {
            (this.§_-Sb§.getItemByName("TextField_LoginHelper") as §_-JL§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-Sb§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-LL§() : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-C§ = null;
         if(this.§_-Sb§)
         {
            this.§_-Sb§.mClip.parent.setChildIndex(this.§_-Sb§.mClip,this.§_-Sb§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-Sb§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-nr§ = null;
         this.§_-z-§.§_-EI§();
         this.§_-HQ§.§_-EI§();
         this.§_-7l§.§_-EI§();
      }
   }
}
