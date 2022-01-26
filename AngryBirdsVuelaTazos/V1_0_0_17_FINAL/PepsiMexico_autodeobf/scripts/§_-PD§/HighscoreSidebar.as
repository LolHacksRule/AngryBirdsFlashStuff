package §_-PD§
{
   import §_-0S§.§_-z1§;
   import §_-6r§.§_-Tk§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-MD§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-qp§;
   import §_-Ur§.§_-ru§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar implements §_-MD§
   {
      
      public static const §_-x1§:String = "loginHelper";
      
      public static const §_-IT§:String = "highscoresCarousel";
      
      public static const §_-Jf§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-a2§:String = "1-4";
      
      public static const §_-pl§:String = "1-5";
      
      public static const §_-Vv§:String = "1-6";
       
      
      private var §_-XI§:Array;
      
      private var §_-xz§:String = "loginHelper";
      
      private var §_-sr§:§_-gP§;
      
      private var §_-vA§:§_-gP§;
      
      private var §_-UJ§:§_-gP§;
      
      private var §_-F4§:§_-gP§;
      
      private var §_-vs§:§_-qp§;
      
      private var §_-uI§:§_-qp§;
      
      private var mPageButton1:§_-qp§;
      
      private var mPageButton2:§_-qp§;
      
      private var mPageButton3:§_-qp§;
      
      private var mPageButton4:§_-qp§;
      
      private var mPageButton5:§_-qp§;
      
      private var §_-0G§:§_-qp§;
      
      private var §_-uw§:int = 1;
      
      private var §_-m§:String;
      
      private var §_-xk§:Array;
      
      private var §_-gH§:§_-k4§;
      
      private var §_-Hu§:Timer;
      
      private var §_-uL§:int;
      
      private var §_-gE§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-vA§ = new §_-gP§(§_-Vv§);
         this.§_-UJ§ = new §_-gP§(§_-a2§);
         this.§_-F4§ = new §_-gP§(§_-pl§);
         this.§_-Hu§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-uw§;
      }
      
      public function set container(param1:§_-k4§) : void
      {
         this.§_-gH§ = param1;
      }
      
      public function get container() : §_-k4§
      {
         return this.§_-gH§;
      }
      
      public function §_-bp§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null) : void
      {
         this.§_-gH§ = new §_-k4§(param1,param2,param3,param4);
         this.§_-vs§ = this.§_-gH§.getItemByName("Button_ArrowLeft") as §_-qp§;
         this.§_-uI§ = this.§_-gH§.getItemByName("Button_ArrowRight") as §_-qp§;
         this.mPageButton1 = this.§_-gH§.getItemByName("Button_Page1") as §_-qp§;
         this.mPageButton2 = this.§_-gH§.getItemByName("Button_Page2") as §_-qp§;
         this.mPageButton3 = this.§_-gH§.getItemByName("Button_Page3") as §_-qp§;
         this.mPageButton4 = this.§_-gH§.getItemByName("Button_Page4") as §_-qp§;
         this.mPageButton5 = this.§_-gH§.getItemByName("Button_Page5") as §_-qp§;
         this.§_-0G§ = this.§_-gH§.getItemByName("Button_Resume") as §_-qp§;
         this.§_-vs§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.§_-uI§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.§_-0G§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.changeState(this.§_-xz§);
         this.§_-yX§(false);
         var _loc5_:§_-k4§;
         (_loc5_ = this.§_-gH§.getItemByName("HighscoreSidebar") as §_-k4§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-uN§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-x§);
         if(this.§_-Hu§)
         {
            this.§_-Hu§.stop();
            this.§_-Hu§.removeEventListener(TimerEvent.TIMER,this.§_-xr§);
         }
         this.§_-Hu§.reset();
         this.§_-Hu§.start();
         this.§_-Hu§.addEventListener(TimerEvent.TIMER,this.§_-xr§);
         this.§_-uL§ = 1;
      }
      
      private function §_-uN§(param1:MouseEvent) : void
      {
         this.§_-gE§ = true;
      }
      
      private function §_-x§(param1:MouseEvent) : void
      {
         this.§_-gE§ = false;
      }
      
      private function §_-xr§(param1:TimerEvent) : void
      {
         if(this.§_-xz§ == §_-IT§ && !this.§_-gE§)
         {
            ++this.§_-uL§;
            if(this.§_-uL§ > 3)
            {
               this.§_-uL§ = 1;
            }
            this.showHighscores("1-" + (this.§_-uL§ + 3));
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-k4§ = null;
         this.§_-yX§(false);
         this.§_-vs§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.§_-uI§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         this.§_-0G§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
         if(this.§_-Hu§)
         {
            this.§_-Hu§.stop();
            this.§_-Hu§.removeEventListener(TimerEvent.TIMER,this.§_-xr§);
         }
         if(this.§_-gH§)
         {
            _loc1_ = this.§_-gH§.getItemByName("HighscoreSidebar") as §_-k4§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-uN§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-x§);
            this.§_-gH§.clear();
            this.§_-gH§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-uw§ = param1;
         this.mPageButton1.setComponentState(§_-h3§.§_-sp§);
         this.mPageButton2.setComponentState(§_-h3§.§_-sp§);
         this.mPageButton3.setComponentState(§_-h3§.§_-sp§);
         this.mPageButton4.setComponentState(§_-h3§.§_-sp§);
         this.mPageButton5.setComponentState(§_-h3§.§_-sp§);
         (this["mPageButton" + param1] as §_-qp§).setComponentState(§_-h3§.§_-1M§);
      }
      
      private function §_-yX§(param1:Boolean) : void
      {
         if(this.§_-gH§)
         {
            this.§_-gH§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-Lj§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-vs§.mClip:
               _loc2_ = Math.max(this.§_-uw§ - 1,1);
               break;
            case this.§_-uI§.mClip:
               _loc2_ = Math.min(this.§_-uw§ + 1,5);
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
            case this.§_-0G§.mClip:
               this.§_-V3§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-xk§)
         {
            this.§_-7-§(this.§_-xk§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case §_-x1§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-yX§(false);
               break;
            case §_-Jf§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-yX§(true);
               break;
            case §_-IT§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-yX§(true);
               this.showHighscores("1-4");
         }
         this.§_-xz§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-gP§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-m§ != param1)
         {
            this.§_-m§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-uw§);
         }
         if(this.§_-gH§)
         {
            _loc3_ = this.§_-gH§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-gH§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-yX§(false);
               break;
            case CLASSICO_2:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-yX§(false);
               break;
            case CLASSICO_3:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-yX§(false);
               break;
            case §_-Vv§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-vA§;
               this.§_-yX§(true);
               break;
            case §_-a2§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-UJ§;
               this.§_-yX§(true);
               break;
            case §_-pl§:
               if(this.§_-gH§)
               {
                  this.§_-gH§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-F4§;
               this.§_-yX§(true);
               break;
            default:
               this.§_-yX§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§_-ZQ§)
         {
            if(_loc2_.§_-G2§)
            {
               this.§_-7-§(_loc2_.§_-G2§,this.§_-uw§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-gP§.§_-at§,this.§_-Qa§);
         }
      }
      
      private function §_-Qa§(param1:Event) : void
      {
         var _loc2_:§_-gP§ = param1.currentTarget as §_-gP§;
         _loc2_.removeEventListener(§_-gP§.§_-at§,this.§_-Qa§);
         this.§_-7-§(_loc2_.§_-G2§,1);
      }
      
      private function §_-7-§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-xk§ = param1;
         if(!this.§_-gH§)
         {
            return;
         }
         var _loc4_:Class = §_-z1§.§_-tn§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-gH§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-XI§ = [];
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
               this.§_-XI§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-gH§)
         {
            (this.§_-gH§.getItemByName("TextField_LoginHelper") as §_-V1§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-gH§)
         {
            this.§_-gH§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-gH§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-V3§() : void
      {
         if(this.§_-gH§)
         {
            this.§_-gH§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-Tk§ = null;
         if(this.§_-gH§)
         {
            this.§_-gH§.mClip.parent.setChildIndex(this.§_-gH§.mClip,this.§_-gH§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-gH§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-m§ = null;
         this.§_-vA§.§_-qI§();
         this.§_-UJ§.§_-qI§();
         this.§_-F4§.§_-qI§();
      }
   }
}
