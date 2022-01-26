package §_-m7§
{
   import §_-1p§.§_-K9§;
   import §_-58§.§_-53§;
   import §_-58§.§_-8c§;
   import §_-58§.§_-WC§;
   import §_-58§.§_-sg§;
   import §_-Ay§.§_-nw§;
   import §_-J-§.§_-9C§;
   import §_-J-§.§_-BT§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar implements §_-53§
   {
      
      public static const §_-xo§:String = "loginHelper";
      
      public static const §else§:String = "highscoresCarousel";
      
      public static const §_-Zk§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-6g§:String = "1-4";
      
      public static const §_-3X§:String = "1-5";
      
      public static const §_-l0§:String = "1-6";
       
      
      private var §_-IK§:Array;
      
      private var §_-po§:String = "loginHelper";
      
      private var §_-1q§:§_-lH§;
      
      private var §_-nf§:§_-lH§;
      
      private var §_-bJ§:§_-lH§;
      
      private var §_-QS§:§_-lH§;
      
      private var §_-Mo§:§_-8c§;
      
      private var §_-DY§:§_-8c§;
      
      private var mPageButton1:§_-8c§;
      
      private var mPageButton2:§_-8c§;
      
      private var mPageButton3:§_-8c§;
      
      private var mPageButton4:§_-8c§;
      
      private var mPageButton5:§_-8c§;
      
      private var §_-Bv§:§_-8c§;
      
      private var §_-z8§:int = 1;
      
      private var §_-eP§:String;
      
      private var §_-te§:Array;
      
      private var §_-LK§:§_-WC§;
      
      private var §_-Ji§:Timer;
      
      private var §_-8Z§:int;
      
      private var §_-cQ§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-nf§ = new §_-lH§(§_-l0§);
         this.§_-bJ§ = new §_-lH§(§_-6g§);
         this.§_-QS§ = new §_-lH§(§_-3X§);
         this.§_-Ji§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-z8§;
      }
      
      public function set container(param1:§_-WC§) : void
      {
         this.§_-LK§ = param1;
      }
      
      public function get container() : §_-WC§
      {
         return this.§_-LK§;
      }
      
      public function §_-87§(param1:XML, param2:§_-WC§, param3:§_-K9§, param4:MovieClip = null) : void
      {
         this.§_-LK§ = new §_-WC§(param1,param2,param3,param4);
         this.§_-Mo§ = this.§_-LK§.getItemByName("Button_ArrowLeft") as §_-8c§;
         this.§_-DY§ = this.§_-LK§.getItemByName("Button_ArrowRight") as §_-8c§;
         this.mPageButton1 = this.§_-LK§.getItemByName("Button_Page1") as §_-8c§;
         this.mPageButton2 = this.§_-LK§.getItemByName("Button_Page2") as §_-8c§;
         this.mPageButton3 = this.§_-LK§.getItemByName("Button_Page3") as §_-8c§;
         this.mPageButton4 = this.§_-LK§.getItemByName("Button_Page4") as §_-8c§;
         this.mPageButton5 = this.§_-LK§.getItemByName("Button_Page5") as §_-8c§;
         this.§_-Bv§ = this.§_-LK§.getItemByName("Button_Resume") as §_-8c§;
         this.§_-Mo§.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.§_-DY§.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.§_-Bv§.mClip.addEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.changeState(this.§_-po§);
         this.dynamic(false);
         var _loc5_:§_-WC§;
         (_loc5_ = this.§_-LK§.getItemByName("HighscoreSidebar") as §_-WC§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-pS§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-vP§);
         if(this.§_-Ji§)
         {
            this.§_-Ji§.stop();
            this.§_-Ji§.removeEventListener(TimerEvent.TIMER,this.§_-jF§);
         }
         this.§_-Ji§.reset();
         this.§_-Ji§.start();
         this.§_-Ji§.addEventListener(TimerEvent.TIMER,this.§_-jF§);
         this.§_-8Z§ = 1;
      }
      
      private function §_-pS§(param1:MouseEvent) : void
      {
         this.§_-cQ§ = true;
      }
      
      private function §_-vP§(param1:MouseEvent) : void
      {
         this.§_-cQ§ = false;
      }
      
      private function §_-jF§(param1:TimerEvent) : void
      {
         if(this.§_-po§ == §else§ && !this.§_-cQ§)
         {
            ++this.§_-8Z§;
            if(this.§_-8Z§ > 3)
            {
               this.§_-8Z§ = 1;
            }
            this.showHighscores("1-" + (this.§_-8Z§ + 3));
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-WC§ = null;
         this.dynamic(false);
         this.§_-Mo§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.§_-DY§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         this.§_-Bv§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-IX§);
         if(this.§_-Ji§)
         {
            this.§_-Ji§.stop();
            this.§_-Ji§.removeEventListener(TimerEvent.TIMER,this.§_-jF§);
         }
         if(this.§_-LK§)
         {
            _loc1_ = this.§_-LK§.getItemByName("HighscoreSidebar") as §_-WC§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-pS§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-vP§);
            this.§_-LK§.clear();
            this.§_-LK§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-z8§ = param1;
         this.mPageButton1.setComponentState(§_-BT§.§_-Oe§);
         this.mPageButton2.setComponentState(§_-BT§.§_-Oe§);
         this.mPageButton3.setComponentState(§_-BT§.§_-Oe§);
         this.mPageButton4.setComponentState(§_-BT§.§_-Oe§);
         this.mPageButton5.setComponentState(§_-BT§.§_-Oe§);
         (this["mPageButton" + param1] as §_-8c§).setComponentState(§_-BT§.§_-Gc§);
      }
      
      private function dynamic(param1:Boolean) : void
      {
         if(this.§_-LK§)
         {
            this.§_-LK§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-IX§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-Mo§.mClip:
               _loc2_ = Math.max(this.§_-z8§ - 1,1);
               break;
            case this.§_-DY§.mClip:
               _loc2_ = Math.min(this.§_-z8§ + 1,5);
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
            case this.§_-Bv§.mClip:
               this.§_-YT§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-te§)
         {
            this.§_-5N§(this.§_-te§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-xo§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.dynamic(false);
               break;
            case §_-Zk§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.dynamic(true);
               break;
            case §else§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.dynamic(true);
               this.showHighscores("1-4");
         }
         this.§_-po§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-lH§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-eP§ != param1)
         {
            this.§_-eP§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-z8§);
         }
         if(this.§_-LK§)
         {
            _loc3_ = this.§_-LK§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-LK§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.dynamic(false);
               break;
            case CLASSICO_2:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.dynamic(false);
               break;
            case CLASSICO_3:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.dynamic(false);
               break;
            case §_-l0§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-nf§;
               this.dynamic(true);
               break;
            case §_-6g§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-bJ§;
               this.dynamic(true);
               break;
            case §_-3X§:
               if(this.§_-LK§)
               {
                  this.§_-LK§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-QS§;
               this.dynamic(true);
               break;
            default:
               this.dynamic(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-j§)
         {
            if(_loc2_.§_-xa§)
            {
               this.§_-5N§(_loc2_.§_-xa§,this.§_-z8§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-lH§.§_-Ni§,this.§_-in§);
         }
      }
      
      private function §_-in§(param1:Event) : void
      {
         var _loc2_:§_-lH§ = param1.currentTarget as §_-lH§;
         _loc2_.removeEventListener(§_-lH§.§_-Ni§,this.§_-in§);
         this.§_-5N§(_loc2_.§_-xa§,1);
      }
      
      private function §_-5N§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-te§ = param1;
         if(!this.§_-LK§)
         {
            return;
         }
         var _loc4_:Class = §_-nw§.§_-Xm§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-LK§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-IK§ = [];
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
               this.§_-IK§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-LK§)
         {
            (this.§_-LK§.getItemByName("TextField_LoginHelper") as §_-sg§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-LK§)
         {
            this.§_-LK§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-LK§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-YT§() : void
      {
         if(this.§_-LK§)
         {
            this.§_-LK§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-9C§ = null;
         if(this.§_-LK§)
         {
            this.§_-LK§.mClip.parent.setChildIndex(this.§_-LK§.mClip,this.§_-LK§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-LK§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-eP§ = null;
         this.§_-nf§.§_-2a§();
         this.§_-bJ§.§_-2a§();
         this.§_-QS§.§_-2a§();
      }
   }
}
