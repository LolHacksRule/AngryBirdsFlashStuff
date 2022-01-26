package §_-ic§
{
   import §_-QM§.§_-Ns§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-qq§;
   import §_-TW§.§_-r6§;
   import §_-p7§.§_-WY§;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-fA§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar
   {
      
      public static const set:String = "loginHelper";
      
      public static const §_-PP§:String = "highscoresCarousel";
      
      public static const §_-JL§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-Dh§:String = "1-4";
      
      public static const §_-9a§:String = "1-5";
      
      public static const §_-PM§:String = "1-6";
       
      
      private var §_-h3§:Array;
      
      private var §_-cX§:String = "loginHelper";
      
      private var §_-u1§:§_-EN§;
      
      private var §_-JN§:§_-EN§;
      
      private var §_-lA§:§_-EN§;
      
      private var §_-o2§:§_-EN§;
      
      private var §_-Zb§:§_-r6§;
      
      private var §_-e7§:§_-r6§;
      
      private var mPageButton1:§_-r6§;
      
      private var mPageButton2:§_-r6§;
      
      private var mPageButton3:§_-r6§;
      
      private var mPageButton4:§_-r6§;
      
      private var mPageButton5:§_-r6§;
      
      private var §_-Ix§:§_-r6§;
      
      private var §_-Bm§:int = 1;
      
      private var §_-Jz§:String;
      
      private var §_-NW§:Array;
      
      public var §_-EU§:§_-qq§;
      
      private var §_-7Z§:Timer;
      
      private var §_-lF§:int;
      
      private var §_-V0§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         super();
         this.§_-JN§ = new §_-EN§(§_-PM§);
         this.§_-lA§ = new §_-EN§(§_-Dh§);
         this.§_-o2§ = new §_-EN§(§_-9a§);
         this.§_-7Z§ = new Timer(3000);
      }
      
      public function get currentPage() : int
      {
         return this.§_-Bm§;
      }
      
      public function §_-MC§(param1:XML, param2:§_-qq§, param3:§_-Ns§, param4:MovieClip = null) : void
      {
         this.§_-EU§ = new §_-qq§(param1,param2,param3,param4);
         this.§_-Zb§ = this.§_-EU§.getItemByName("Button_ArrowLeft") as §_-r6§;
         this.§_-e7§ = this.§_-EU§.getItemByName("Button_ArrowRight") as §_-r6§;
         this.mPageButton1 = this.§_-EU§.getItemByName("Button_Page1") as §_-r6§;
         this.mPageButton2 = this.§_-EU§.getItemByName("Button_Page2") as §_-r6§;
         this.mPageButton3 = this.§_-EU§.getItemByName("Button_Page3") as §_-r6§;
         this.mPageButton4 = this.§_-EU§.getItemByName("Button_Page4") as §_-r6§;
         this.mPageButton5 = this.§_-EU§.getItemByName("Button_Page5") as §_-r6§;
         this.§_-Ix§ = this.§_-EU§.getItemByName("Button_Resume") as §_-r6§;
         this.§_-Zb§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.§_-e7§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.§_-Ix§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.changeState(this.§_-cX§);
         this.§_-9o§(false);
         var _loc5_:§_-qq§;
         (_loc5_ = this.§_-EU§.getItemByName("HighscoreSidebar") as §_-qq§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-tf§);
         _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-LM§);
         if(this.§_-7Z§)
         {
            this.§_-7Z§.stop();
            this.§_-7Z§.removeEventListener(TimerEvent.TIMER,this.§_-SJ§);
         }
         this.§_-7Z§.reset();
         this.§_-7Z§.start();
         this.§_-7Z§.addEventListener(TimerEvent.TIMER,this.§_-SJ§);
         this.§_-lF§ = 1;
      }
      
      private function §_-tf§(param1:MouseEvent) : void
      {
         this.§_-V0§ = true;
      }
      
      private function §_-LM§(param1:MouseEvent) : void
      {
         this.§_-V0§ = false;
      }
      
      private function §_-SJ§(param1:TimerEvent) : void
      {
         if(this.§_-cX§ == §_-PP§ && !this.§_-V0§)
         {
            ++this.§_-lF§;
            if(this.§_-lF§ > 3)
            {
               this.§_-lF§ = 1;
            }
            this.showHighscores("1-" + (this.§_-lF§ + 3));
         }
      }
      
      public function §_-XY§() : void
      {
         var _loc1_:§_-qq§ = null;
         this.§_-9o§(false);
         this.§_-Zb§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.§_-e7§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         this.§_-Ix§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Zd§);
         if(this.§_-7Z§)
         {
            this.§_-7Z§.stop();
            this.§_-7Z§.removeEventListener(TimerEvent.TIMER,this.§_-SJ§);
         }
         if(this.§_-EU§)
         {
            _loc1_ = this.§_-EU§.getItemByName("HighscoreSidebar") as §_-qq§;
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-tf§);
            _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-LM§);
            this.§_-EU§.clear();
            this.§_-EU§ = null;
         }
      }
      
      public function choosePage(param1:int) : void
      {
         this.§_-Bm§ = param1;
         this.mPageButton1.setComponentState(§_-WL§.§_-t0§);
         this.mPageButton2.setComponentState(§_-WL§.§_-t0§);
         this.mPageButton3.setComponentState(§_-WL§.§_-t0§);
         this.mPageButton4.setComponentState(§_-WL§.§_-t0§);
         this.mPageButton5.setComponentState(§_-WL§.§_-t0§);
         (this["mPageButton" + param1] as §_-r6§).setComponentState(§_-WL§.§_-1M§);
      }
      
      private function §_-9o§(param1:Boolean) : void
      {
         if(this.§_-EU§)
         {
            this.§_-EU§.getItemByName("HighscoreHolderControls").visible = param1;
         }
      }
      
      private function §_-Zd§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.currentTarget)
         {
            case this.§_-Zb§.mClip:
               _loc2_ = Math.max(this.§_-Bm§ - 1,1);
               break;
            case this.§_-e7§.mClip:
               _loc2_ = Math.min(this.§_-Bm§ + 1,5);
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
            case this.§_-Ix§.mClip:
               this.§_-Af§();
               return;
         }
         this.choosePage(_loc2_);
         if(this.§_-NW§)
         {
            this.§_-UC§(this.§_-NW§,_loc2_);
         }
      }
      
      public function changeState(param1:String) : void
      {
         switch(param1)
         {
            case set:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Container_HighscoreLogin").setVisibility(true);
               }
               this.§_-9o§(false);
               break;
            case §_-JL§:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-9o§(true);
               break;
            case §_-PP§:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Container_HighscoreLogin").setVisibility(false);
               }
               this.§_-9o§(true);
               this.showHighscores("1-4");
         }
         this.§_-cX§ = param1;
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc2_:§_-EN§ = null;
         var _loc3_:MovieClip = null;
         if(this.§_-Jz§ != param1)
         {
            this.§_-Jz§ = param1;
            this.choosePage(1);
         }
         else
         {
            this.choosePage(this.§_-Bm§);
         }
         if(this.§_-EU§)
         {
            _loc3_ = this.§_-EU§.getItemByName("Highscore_Holder").mClip;
            while(_loc3_.numChildren > 0)
            {
               _loc3_.removeChildAt(0);
            }
            this.§_-EU§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Mamut").setVisibility(false);
         }
         switch(param1)
         {
            case CLASSICO_1:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Classico1").setVisibility(true);
               }
               this.§_-9o§(false);
               break;
            case CLASSICO_2:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Classico2").setVisibility(true);
               }
               this.§_-9o§(false);
               break;
            case CLASSICO_3:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Classico3").setVisibility(true);
               }
               this.§_-9o§(false);
               break;
            case §_-PM§:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Pepsi").setVisibility(true);
               }
               _loc2_ = this.§_-JN§;
               this.§_-9o§(true);
               break;
            case §_-Dh§:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Cheetos").setVisibility(true);
               }
               _loc2_ = this.§_-lA§;
               this.§_-9o§(true);
               break;
            case §_-9a§:
               if(this.§_-EU§)
               {
                  this.§_-EU§.getItemByName("Logo_Mamut").setVisibility(true);
               }
               _loc2_ = this.§_-o2§;
               this.§_-9o§(true);
               break;
            default:
               this.§_-9o§(false);
         }
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.§if§)
         {
            if(_loc2_.§_-uy§)
            {
               this.§_-UC§(_loc2_.§_-uy§,this.§_-Bm§);
            }
         }
         else
         {
            _loc2_.addEventListener(§_-EN§.§_-eD§,this.§_-YK§);
         }
      }
      
      private function §_-YK§(param1:Event) : void
      {
         var _loc2_:§_-EN§ = param1.currentTarget as §_-EN§;
         _loc2_.removeEventListener(§_-EN§.§_-eD§,this.§_-YK§);
         this.§_-UC§(_loc2_.§_-uy§,1);
      }
      
      private function §_-UC§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         this.§_-NW§ = param1;
         if(!this.§_-EU§)
         {
            return;
         }
         var _loc4_:Class = §_-WY§.§_-fs§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§_-EU§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§_-h3§ = [];
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
               this.§_-h3§.push(_loc10_);
               _loc5_.addChild(_loc10_);
            }
            _loc7_++;
         }
      }
      
      public function showHelpText(param1:String) : void
      {
         if(this.§_-EU§)
         {
            (this.§_-EU§.getItemByName("TextField_LoginHelper") as §_-iD§).setText(param1);
         }
      }
      
      public function hideLogos() : void
      {
         if(this.§_-EU§)
         {
            this.§_-EU§.getItemByName("Logo_Classico1").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Classico2").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Classico3").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Pepsi").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Cheetos").setVisibility(false);
            this.§_-EU§.getItemByName("Logo_Mamut").setVisibility(false);
         }
      }
      
      public function §_-Af§() : void
      {
         if(this.§_-EU§)
         {
            this.§_-EU§.getItemByName("Popup_NewHighscore").setVisibility(false);
         }
      }
      
      public function showNewHighscore() : void
      {
         var _loc1_:§_-fA§ = null;
         if(this.§_-EU§)
         {
            this.§_-EU§.mClip.parent.setChildIndex(this.§_-EU§.mClip,this.§_-EU§.mClip.parent.numChildren - 1);
            _loc1_ = this.§_-EU§.getItemByName("Popup_NewHighscore");
            _loc1_.setVisibility(true);
         }
         this.reloadAllScores();
      }
      
      public function reloadAllScores() : void
      {
         this.§_-Jz§ = null;
         this.§_-JN§.§_-67§();
         this.§_-lA§.§_-67§();
         this.§_-o2§.§_-67§();
      }
   }
}
