package §_-LL§
{
   import §_-E-§.§_-Fy§;
   import §_-E-§.§_-hw§;
   import §_-E-§.§_-mm§;
   import §_-PK§.§_-ZR§;
   import §_-PK§.§_-ds§;
   import §_-Ux§.§_-2E§;
   import §_-ec§.§_-GK§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar
   {
      
      public static const §_-vX§:String = "loginHelper";
      
      public static const §_-UC§:String = "highscoresCarousel";
      
      public static const §_-uf§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-S2§:String = "1-4";
      
      public static const §_-Ll§:String = "1-5";
      
      public static const §_-bP§:String = "1-6";
       
      
      private var §_-uU§:Array;
      
      private var §_-Ti§:String = "loginHelper";
      
      private var §_-aA§:§_-n§;
      
      private var §_-Vz§:§_-n§;
      
      private var §_-Jn§:§_-n§;
      
      private var §_-oR§:§_-n§;
      
      private var §_-O3§:§_-Fy§;
      
      private var §_-Rn§:§_-Fy§;
      
      private var mPageButton1:§_-Fy§;
      
      private var mPageButton2:§_-Fy§;
      
      private var mPageButton3:§_-Fy§;
      
      private var mPageButton4:§_-Fy§;
      
      private var mPageButton5:§_-Fy§;
      
      private var §_-cu§:§_-Fy§;
      
      private var §_-9h§:int = 1;
      
      private var §_-J6§:String;
      
      private var §_-fe§:Array;
      
      public var §_-K4§:§_-hw§;
      
      private var §_-6l§:Timer;
      
      private var §_-6d§:int;
      
      private var §_-0F§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-Vz§ = new §_-n§(§_-bP§);
         this.§_-Jn§ = new §_-n§(§_-S2§);
         this.§_-oR§ = new §_-n§(§_-Ll§);
         this.§_-6l§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-9h§;
      }
      
      public function §_-47§(param1:XML, param2:§_-hw§, param3:§_-2E§, param4:MovieClip = null) : void
      {
         this.§_-K4§ = new §_-hw§(param1,param2,param3,param4);
         this.§_-O3§ = this.§_-K4§.getItemByName("Button_ArrowLeft") as §_-Fy§;
         this.§_-Rn§ = this.§_-K4§.getItemByName("Button_ArrowRight") as §_-Fy§;
         this.mPageButton1 = this.§_-K4§.getItemByName("Button_Page1") as §_-Fy§;
         this.mPageButton2 = this.§_-K4§.getItemByName("Button_Page2") as §_-Fy§;
         this.mPageButton3 = this.§_-K4§.getItemByName("Button_Page3") as §_-Fy§;
         this.mPageButton4 = this.§_-K4§.getItemByName("Button_Page4") as §_-Fy§;
         this.mPageButton5 = this.§_-K4§.getItemByName("Button_Page5") as §_-Fy§;
         this.§_-cu§ = this.§_-K4§.getItemByName("Button_Resume") as §_-Fy§;
         this.§_-O3§.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.§_-Rn§.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.§_-cu§.mClip.addEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.changeState(this.§_-Ti§);
         this.§_-QI§(false);
         var _loc5_:§_-hw§;
         (_loc5_ = this.§_-K4§.getItemByName("HighscoreSidebar") as §_-hw§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-j6§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-8j§);
         if(this.§_-6l§)
         {
            this.§_-6l§.stop();
            this.§_-6l§.removeEventListener(TimerEvent.TIMER,this.§_-JL§);
         }
         this.§_-6l§.reset();
         this.§_-6l§.start();
         this.§_-6l§.addEventListener(TimerEvent.TIMER,this.§_-JL§);
         this.§_-6d§ = 1;
      }
      
      private function §_-j6§(param1:MouseEvent) : void
      {
         this.§_-0F§ = true;
      }
      
      private function §_-8j§(param1:MouseEvent) : void
      {
         this.§_-0F§ = false;
      }
      
      private function §_-JL§(param1:TimerEvent) : void
      {
         if(this.§_-Ti§ == §_-UC§ && !this.§_-0F§)
         {
            ++this.§_-6d§;
            if(this.§_-6d§ > 3)
            {
               this.§_-6d§ = 1;
            }
            this.showHighscores("1-" + (this.§_-6d§ + 3));
         }
      }
      
      public function §_-tD§() : void
      {
         var _loc1_:§_-hw§ = null;
         this.§_-QI§(false);
         this.§_-O3§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.§_-Rn§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         this.§_-cu§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-LJ§);
         if(this.§_-6l§)
         {
            this.§_-6l§.stop();
            this.§_-6l§.removeEventListener(TimerEvent.TIMER,this.§_-JL§);
         }
         if(this.§_-K4§)
         {
            _loc1_ = this.§_-K4§.getItemByName("HighscoreSidebar") as §_-hw§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-j6§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-8j§);
            this.§_-K4§.clear();
            this.§_-K4§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-9h§ = param1;
         this.mPageButton1.setComponentState(§_-ds§.§_-Wl§);
         this.mPageButton2.setComponentState(§_-ds§.§_-Wl§);
         this.mPageButton3.setComponentState(§_-ds§.§_-Wl§);
         this.mPageButton4.setComponentState(§_-ds§.§_-Wl§);
         this.mPageButton5.setComponentState(§_-ds§.§_-Wl§);
         (this["mPageButton" + param1] as §_-Fy§).setComponentState(§_-ds§.§_-IX§);
      }
      
      private function §_-QI§(param1:Boolean) : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-LJ§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-O3§.mClip:
               _loc2_ = Math.max(this.§_-9h§ - 1,1);
               break;
            case this.§_-Rn§.mClip:
               _loc2_ = Math.min(this.§_-9h§ + 1,5);
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
            case this.§_-cu§.mClip:
               this.§_-Q6§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-fe§)
         {
            this.§_-Sf§(this.§_-fe§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-vX§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-QI§(false);
               break;
            case §_-uf§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-QI§(true);
               break;
            case §_-UC§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-QI§(true);
               this.showHighscores("1-4");
         }
         this.§_-Ti§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-n§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-J6§ != param1)
         {
            this.§_-J6§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-9h§);
         }
         if(this.§_-K4§)
         {
            _loc3_ = this.§_-K4§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-K4§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-QI§(false);
               break;
            case CLASSICO_2:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-QI§(false);
               break;
            case CLASSICO_3:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-QI§(false);
               break;
            case §_-bP§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-Vz§;
               this.§_-QI§(true);
               break;
            case §_-S2§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-Jn§;
               this.§_-QI§(true);
               break;
            case §_-Ll§:
               if(this.§_-K4§)
               {
                  this.§_-K4§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-oR§;
               this.§_-QI§(true);
               break;
            default:
               this.§_-QI§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-v2§)
         {
            if(_loc2_.§_-Kh§)
            {
               this.§_-Sf§(_loc2_.§_-Kh§,this.§_-9h§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-n§.§_-dh§,this.§_-Hd§);
         }
      }
      
      private function §_-Hd§(param1:Event) : void
      {
         var _loc2_:§_-n§ = param1.currentTarget as §_-n§;
         _loc2_.removeEventListener(§_-n§.§_-dh§,this.§_-Hd§);
         this.§_-Sf§(_loc2_.§_-Kh§,1);
      }
      
      private function §_-Sf§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-fe§ = param1;
         if(!this.§_-K4§)
         {
            return;
         }
         var _loc4_:Class = §_-GK§.§_-dR§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-K4§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-uU§ = [];
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
               this.§_-uU§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-K4§)
         {
            (this.§_-K4§.getItemByName("TextField_LoginHelper") as §_-mm§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-K4§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-Q6§() : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-ZR§ = null;
         if(this.§_-K4§)
         {
            this.§_-K4§.mClip.parent.setChildIndex(this.§_-K4§.mClip,this.§_-K4§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-K4§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-J6§ = null;
         this.§_-Vz§.§_-vF§();
         this.§_-Jn§.§_-vF§();
         this.§_-oR§.§_-vF§();
      }
   }
}
