package §_-TQ§
{
   import §_-8J§.§_-8s§;
   import §_-Ys§.§_-7o§;
   import §_-Ys§.§_-TM§;
   import §_-of§.§_-H4§;
   import §_-of§.§_-Yk§;
   import §_-of§.§_-rt§;
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar
   {
      
      public static const §_-bZ§:String = "loginHelper";
      
      public static const §_-qi§:String = "highscoresCarousel";
      
      public static const §_-9d§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-Nv§:String = "1-4";
      
      public static const §_-BT§:String = "1-5";
      
      public static const §_-oO§:String = "1-6";
       
      
      private var §_-CI§:Array;
      
      private var §_-eB§:String = "loginHelper";
      
      private var §_-ij§:§_-Lw§;
      
      private var §_-1U§:§_-Lw§;
      
      private var §_-Tv§:§_-Lw§;
      
      private var §_-Ul§:§_-Lw§;
      
      private var §_-Oj§:§_-Yk§;
      
      private var §_-QM§:§_-Yk§;
      
      private var mPageButton1:§_-Yk§;
      
      private var mPageButton2:§_-Yk§;
      
      private var mPageButton3:§_-Yk§;
      
      private var mPageButton4:§_-Yk§;
      
      private var mPageButton5:§_-Yk§;
      
      private var §_-v7§:§_-Yk§;
      
      private var override:int = 1;
      
      private var §_-wI§:String;
      
      private var §_-7K§:Array;
      
      public var §_-wB§:§_-H4§;
      
      private var §_-8B§:Timer;
      
      private var §_-hA§:int;
      
      private var §_-tJ§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-1U§ = new §_-Lw§(§_-oO§);
         this.§_-Tv§ = new §_-Lw§(§_-Nv§);
         this.§_-Ul§ = new §_-Lw§(§_-BT§);
         this.§_-8B§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.override;
      }
      
      public function §_-HV§(param1:XML, param2:§_-H4§, param3:§_-8s§, param4:MovieClip = null) : void
      {
         this.§_-wB§ = new §_-H4§(param1,param2,param3,param4);
         this.§_-Oj§ = this.§_-wB§.getItemByName("Button_ArrowLeft") as §_-Yk§;
         this.§_-QM§ = this.§_-wB§.getItemByName("Button_ArrowRight") as §_-Yk§;
         this.mPageButton1 = this.§_-wB§.getItemByName("Button_Page1") as §_-Yk§;
         this.mPageButton2 = this.§_-wB§.getItemByName("Button_Page2") as §_-Yk§;
         this.mPageButton3 = this.§_-wB§.getItemByName("Button_Page3") as §_-Yk§;
         this.mPageButton4 = this.§_-wB§.getItemByName("Button_Page4") as §_-Yk§;
         this.mPageButton5 = this.§_-wB§.getItemByName("Button_Page5") as §_-Yk§;
         this.§_-v7§ = this.§_-wB§.getItemByName("Button_Resume") as §_-Yk§;
         this.§_-Oj§.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.§_-QM§.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.§_-v7§.mClip.addEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.changeState(this.§_-eB§);
         this.§_-EW§(false);
         var _loc5_:§_-H4§;
         (_loc5_ = this.§_-wB§.getItemByName("HighscoreSidebar") as §_-H4§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-cn§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-J5§);
         if(this.§_-8B§)
         {
            this.§_-8B§.stop();
            this.§_-8B§.removeEventListener(TimerEvent.TIMER,this.§_-u8§);
         }
         this.§_-8B§.reset();
         this.§_-8B§.start();
         this.§_-8B§.addEventListener(TimerEvent.TIMER,this.§_-u8§);
         this.§_-hA§ = 1;
      }
      
      private function §_-cn§(param1:MouseEvent) : void
      {
         this.§_-tJ§ = true;
      }
      
      private function §_-J5§(param1:MouseEvent) : void
      {
         this.§_-tJ§ = false;
      }
      
      private function §_-u8§(param1:TimerEvent) : void
      {
         if(this.§_-eB§ == §_-qi§ && !this.§_-tJ§)
         {
            ++this.§_-hA§;
            if(this.§_-hA§ > 3)
            {
               this.§_-hA§ = 1;
            }
            this.showHighscores("1-" + (this.§_-hA§ + 3));
         }
      }
      
      public function §_-tV§() : void
      {
         var _loc1_:§_-H4§ = null;
         this.§_-EW§(false);
         this.§_-Oj§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.§_-QM§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         this.§_-v7§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-jf§);
         if(this.§_-8B§)
         {
            this.§_-8B§.stop();
            this.§_-8B§.removeEventListener(TimerEvent.TIMER,this.§_-u8§);
         }
         if(this.§_-wB§)
         {
            _loc1_ = this.§_-wB§.getItemByName("HighscoreSidebar") as §_-H4§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-cn§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-J5§);
            this.§_-wB§.clear();
            this.§_-wB§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.override = param1;
         this.mPageButton1.setComponentState(§_-TM§.§_-vF§);
         this.mPageButton2.setComponentState(§_-TM§.§_-vF§);
         this.mPageButton3.setComponentState(§_-TM§.§_-vF§);
         this.mPageButton4.setComponentState(§_-TM§.§_-vF§);
         this.mPageButton5.setComponentState(§_-TM§.§_-vF§);
         (this["mPageButton" + param1] as §_-Yk§).setComponentState(§_-TM§.§_-Y2§);
      }
      
      private function §_-EW§(param1:Boolean) : void
      {
         if(this.§_-wB§)
         {
            this.§_-wB§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-jf§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-Oj§.mClip:
               _loc2_ = Math.max(this.override - 1,1);
               break;
            case this.§_-QM§.mClip:
               _loc2_ = Math.min(this.override + 1,5);
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
            case this.§_-v7§.mClip:
               this.§_-h4§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-7K§)
         {
            this.§for §(this.§_-7K§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-bZ§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-EW§(false);
               break;
            case §_-9d§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-EW§(true);
               break;
            case §_-qi§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-EW§(true);
               this.showHighscores("1-4");
         }
         this.§_-eB§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-Lw§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-wI§ != param1)
         {
            this.§_-wI§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.override);
         }
         if(this.§_-wB§)
         {
            _loc3_ = this.§_-wB§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-wB§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-EW§(false);
               break;
            case CLASSICO_2:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-EW§(false);
               break;
            case CLASSICO_3:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-EW§(false);
               break;
            case §_-oO§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-1U§;
               this.§_-EW§(true);
               break;
            case §_-Nv§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-Tv§;
               this.§_-EW§(true);
               break;
            case §_-BT§:
               if(this.§_-wB§)
               {
                  this.§_-wB§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-Ul§;
               this.§_-EW§(true);
               break;
            default:
               this.§_-EW§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-TS§)
         {
            if(_loc2_.§_-Ei§)
            {
               this.§for §(_loc2_.§_-Ei§,this.override);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-Lw§.§_-FE§,this.§_-cz§);
         }
      }
      
      private function §_-cz§(param1:Event) : void
      {
         var _loc2_:§_-Lw§ = param1.currentTarget as §_-Lw§;
         _loc2_.removeEventListener(§_-Lw§.§_-FE§,this.§_-cz§);
         this.§for §(_loc2_.§_-Ei§,1);
      }
      
      private function §for §(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-7K§ = param1;
         if(!this.§_-wB§)
         {
            return;
         }
         var _loc4_:Class = §_-XO§.§_-O3§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-wB§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-CI§ = [];
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
               this.§_-CI§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-wB§)
         {
            (this.§_-wB§.getItemByName("TextField_LoginHelper") as §_-rt§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-wB§)
         {
            this.§_-wB§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-wB§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-h4§() : void
      {
         if(this.§_-wB§)
         {
            this.§_-wB§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-7o§ = null;
         if(this.§_-wB§)
         {
            this.§_-wB§.mClip.parent.setChildIndex(this.§_-wB§.mClip,this.§_-wB§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-wB§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-wI§ = null;
         this.§_-1U§.§_-L9§();
         this.§_-Tv§.§_-L9§();
         this.§_-Ul§.§_-L9§();
      }
   }
}
