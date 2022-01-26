package §_-Kn§
{
   import §_-Jx§.§_-Tc§;
   import §_-Jx§.§_-dI§;
   import §_-W7§.§_-jT§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-6o§;
   import §_-hf§.§_-WL§;
   import §_-hf§.§_-ca§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar implements §_-ca§
   {
      
      public static const §_-D4§:String = "loginHelper";
      
      public static const §_-DF§:String = "highscoresCarousel";
      
      public static const §_-Po§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-yR§:String = "1-4";
      
      public static const §_-jR§:String = "1-5";
      
      public static const §_-eu§:String = "1-6";
       
      
      private var §_-FZ§:Array;
      
      private var §_-2q§:String = "loginHelper";
      
      private var §_-zT§:§_-Mr§;
      
      private var §_-SO§:§_-Mr§;
      
      private var §_-sd§:§_-Mr§;
      
      private var §_-ds§:§_-Mr§;
      
      private var §_-ix§:§_-6o§;
      
      private var §_-JP§:§_-6o§;
      
      private var mPageButton1:§_-6o§;
      
      private var mPageButton2:§_-6o§;
      
      private var mPageButton3:§_-6o§;
      
      private var mPageButton4:§_-6o§;
      
      private var mPageButton5:§_-6o§;
      
      private var §_-jV§:§_-6o§;
      
      private var §_-U4§:int = 1;
      
      private var §_-Pp§:String;
      
      private var §_-Ac§:Array;
      
      private var §_-tQ§:§_-WL§;
      
      private var §_-hR§:Timer;
      
      private var §_-dM§:int;
      
      private var §_-Pz§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-SO§ = new §_-Mr§(§_-eu§);
         this.§_-sd§ = new §_-Mr§(§_-yR§);
         this.§_-ds§ = new §_-Mr§(§_-jR§);
         this.§_-hR§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-U4§;
      }
      
      public function set container(param1:§_-WL§) : void
      {
         this.§_-tQ§ = param1;
      }
      
      public function get container() : §_-WL§
      {
         return this.§_-tQ§;
      }
      
      public function §_-cC§(param1:XML, param2:§_-WL§, param3:§_-fA§, param4:MovieClip = null) : void
      {
         this.§_-tQ§ = new §_-WL§(param1,param2,param3,param4);
         this.§_-ix§ = this.§_-tQ§.getItemByName("Button_ArrowLeft") as §_-6o§;
         this.§_-JP§ = this.§_-tQ§.getItemByName("Button_ArrowRight") as §_-6o§;
         this.mPageButton1 = this.§_-tQ§.getItemByName("Button_Page1") as §_-6o§;
         this.mPageButton2 = this.§_-tQ§.getItemByName("Button_Page2") as §_-6o§;
         this.mPageButton3 = this.§_-tQ§.getItemByName("Button_Page3") as §_-6o§;
         this.mPageButton4 = this.§_-tQ§.getItemByName("Button_Page4") as §_-6o§;
         this.mPageButton5 = this.§_-tQ§.getItemByName("Button_Page5") as §_-6o§;
         this.§_-jV§ = this.§_-tQ§.getItemByName("Button_Resume") as §_-6o§;
         this.§_-ix§.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.§_-JP§.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.§_-jV§.mClip.addEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.changeState(this.§_-2q§);
         this.§_-GV§(false);
         var _loc5_:§_-WL§;
         (_loc5_ = this.§_-tQ§.getItemByName("HighscoreSidebar") as §_-WL§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-Ww§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-d6§);
         if(this.§_-hR§)
         {
            this.§_-hR§.stop();
            this.§_-hR§.removeEventListener(TimerEvent.TIMER,this.§_-IT§);
         }
         this.§_-hR§.reset();
         this.§_-hR§.start();
         this.§_-hR§.addEventListener(TimerEvent.TIMER,this.§_-IT§);
         this.§_-dM§ = 1;
      }
      
      private function §_-Ww§(param1:MouseEvent) : void
      {
         this.§_-Pz§ = true;
      }
      
      private function §_-d6§(param1:MouseEvent) : void
      {
         this.§_-Pz§ = false;
      }
      
      private function §_-IT§(param1:TimerEvent) : void
      {
         if(this.§_-2q§ == §_-DF§ && !this.§_-Pz§)
         {
            ++this.§_-dM§;
            if(this.§_-dM§ > 3)
            {
               this.§_-dM§ = 1;
            }
            this.showHighscores("1-" + (this.§_-dM§ + 3));
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-WL§ = null;
         this.§_-GV§(false);
         this.§_-ix§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.§_-JP§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         this.§_-jV§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-E4§);
         if(this.§_-hR§)
         {
            this.§_-hR§.stop();
            this.§_-hR§.removeEventListener(TimerEvent.TIMER,this.§_-IT§);
         }
         if(this.§_-tQ§)
         {
            _loc1_ = this.§_-tQ§.getItemByName("HighscoreSidebar") as §_-WL§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-Ww§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-d6§);
            this.§_-tQ§.clear();
            this.§_-tQ§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-U4§ = param1;
         this.mPageButton1.setComponentState(§_-Tc§.§_-SQ§);
         this.mPageButton2.setComponentState(§_-Tc§.§_-SQ§);
         this.mPageButton3.setComponentState(§_-Tc§.§_-SQ§);
         this.mPageButton4.setComponentState(§_-Tc§.§_-SQ§);
         this.mPageButton5.setComponentState(§_-Tc§.§_-SQ§);
         (this["mPageButton" + param1] as §_-6o§).setComponentState(§_-Tc§.§_-WJ§);
      }
      
      private function §_-GV§(param1:Boolean) : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-E4§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-ix§.mClip:
               _loc2_ = Math.max(this.§_-U4§ - 1,1);
               break;
            case this.§_-JP§.mClip:
               _loc2_ = Math.min(this.§_-U4§ + 1,5);
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
            case this.§_-jV§.mClip:
               this.§_-Ji§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-Ac§)
         {
            this.§_-LN§(this.§_-Ac§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-D4§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-GV§(false);
               break;
            case §_-Po§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-GV§(true);
               break;
            case §_-DF§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-GV§(true);
               this.showHighscores("1-4");
         }
         this.§_-2q§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-Mr§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-Pp§ != param1)
         {
            this.§_-Pp§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-U4§);
         }
         if(this.§_-tQ§)
         {
            _loc3_ = this.§_-tQ§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-tQ§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-GV§(false);
               break;
            case CLASSICO_2:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-GV§(false);
               break;
            case CLASSICO_3:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-GV§(false);
               break;
            case §_-eu§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-SO§;
               this.§_-GV§(true);
               break;
            case §_-yR§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-sd§;
               this.§_-GV§(true);
               break;
            case §_-jR§:
               if(this.§_-tQ§)
               {
                  this.§_-tQ§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-ds§;
               this.§_-GV§(true);
               break;
            default:
               this.§_-GV§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-ML§)
         {
            if(_loc2_.§_-3r§)
            {
               this.§_-LN§(_loc2_.§_-3r§,this.§_-U4§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-Mr§.§_-YR§,this.§_-JQ§);
         }
      }
      
      private function §_-JQ§(param1:Event) : void
      {
         var _loc2_:§_-Mr§ = param1.currentTarget as §_-Mr§;
         _loc2_.removeEventListener(§_-Mr§.§_-YR§,this.§_-JQ§);
         this.§_-LN§(_loc2_.§_-3r§,1);
      }
      
      private function §_-LN§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-Ac§ = param1;
         if(!this.§_-tQ§)
         {
            return;
         }
         var _loc4_:Class = §_-jT§.§_-kv§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-tQ§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-FZ§ = [];
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
               this.§_-FZ§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-tQ§)
         {
            (this.§_-tQ§.getItemByName("TextField_LoginHelper") as §_-0J§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-tQ§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-Ji§() : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-dI§ = null;
         if(this.§_-tQ§)
         {
            this.§_-tQ§.mClip.parent.setChildIndex(this.§_-tQ§.mClip,this.§_-tQ§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-tQ§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-Pp§ = null;
         this.§_-SO§.§_-f8§();
         this.§_-sd§.§_-f8§();
         this.§_-ds§.§_-f8§();
      }
   }
}
