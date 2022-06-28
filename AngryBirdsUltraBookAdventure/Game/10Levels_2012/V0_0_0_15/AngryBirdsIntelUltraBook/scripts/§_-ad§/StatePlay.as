package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-E0§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-BK§;
   import §_-eS§.§_-Za§;
   import §_-gU§.§_-02s§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §_-iq§
   {
      
      public static const §_-pk§:String = "StatePlay";
      
      public static const §_-04v§:int = 50;
      
      protected static const §_-5i§:String = "MightyEagleButtonVisible";
      
      protected static const §_-Ad§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §_-LQ§:String = "MightyEagleButtonHide";
       
      
      protected var §_-09E§:§_-BK§;
      
      protected var §_-01A§:§_-dd§;
      
      protected var §_-i1§:String;
      
      protected var §_-01Y§:Boolean;
      
      private var §_-vW§:Vector.<int>;
      
      private var §_-sH§:Boolean;
      
      private var §_-080§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§_-09E§ = new §_-BK§();
         this.§_-vW§ = new Vector.<int>(32);
         super(param1,param2);
         this.§_-vW§[3] = 5000;
         this.§_-vW§[7] = 5000;
         this.§_-vW§[8] = 5000;
         this.§_-vW§[9] = 5000;
         this.§_-vW§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelPlay[0]);
      }
      
      protected function §_-09z§() : void
      {
      }
      
      private function §_-Rv§(param1:TimerEvent) : void
      {
         (§_-s0§.getItemByName("TextField_METimer") as §_-0Eo§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §_-pX§.§_-j4§();
         super.levelStarted();
         if(§_-s0§.getItemByName("Button_MightyEagle"))
         {
            §_-s0§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §_-pX§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §_-s0§.getItemByName("TextField_METimer").setVisibility(false);
         §_-s0§.getItemByName("Container_MEScore").setVisibility(false);
         §_-s0§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §_-s0§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§_-09E§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§_-05N§.§_-Xp§ != null)
         {
            _loc1_ = new Bitmap(§_-05N§.§_-Xp§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§_-s0§.getItemByName("MovieClip_AvatarPlaceholder") as §_-k6§).changeMovieClip(_loc2_);
            §_-s0§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§_-i1§ = §_-5i§;
         this.§_-01A§ = null;
         this.§_-01Y§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§_-s0§.getItemByName("Button_Pause") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§_-01A§ != null)
         {
            this.§_-01A§.stop();
            this.§_-01A§ = null;
         }
      }
      
      protected function §_-08z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§_-sH§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§_-vW§.length)
            {
               _loc1_ += this.§_-vW§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§_-sH§ = true;
               §_-Za§.§_-Ve§(§_-Za§.§_-jk§,LevelManager.§_-HM§);
            }
         }
         if(this.§_-080§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §_-3O§() : void
      {
         var _loc1_:int = §_-JC§.getScore();
         var _loc2_:int = this.§_-09E§.getValue();
         if(_loc2_ < _loc1_ && this.§_-sH§)
         {
            this.§_-080§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-02s§.isOpen)
         {
            return §_-nG§.STATE_STATUS_RUNNING;
         }
         if(§ in§.§_-Dc§.objects.mSardineCanAdded)
         {
            (§_-s0§.getItemByName("Container_MEScore") as §_-gt§).setVisibility(true);
         }
         this.§_-08z§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§_-i1§ == §_-5i§ && !§ in§.§_-Dc§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§_-i1§ == §_-5i§ || this.§_-i1§ == §_-Ad§) && § in§.§_-Dc§.slingshot.mSlingShotState == §_-E0§.§_-pu§)
         {
            this.hideMightyEagleButton();
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§_-i1§ = §_-Ad§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
         (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§_-01A§ == null)
         {
            this.§_-01A§ = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§_-i1§ = §_-LQ§;
         this.§_-01A§.onComplete = this.onHideMightyEagle;
         this.§_-01A§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§_-01A§ = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§_-01A§.play();
         this.§_-i1§ = §_-LQ§;
      }
      
      override public function getVictoryState() : String
      {
         if(§ in§.§_-Dc§.objects.mMightyEagleAdded)
         {
            return §_-iz§.§_-pk§;
         }
         return §_-08x§.§_-pk§;
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      override public function getLoserState() : String
      {
         return §_-rF§.§_-pk§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §_-MG§.§_-0Eg§();
               mNextState = this.§_-03M§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ in§.§_-LI§)
         {
            switch(param1.keyCode)
            {
               case 49:
                  break;
               case 50:
                  break;
               case 51:
                  break;
               case 52:
               case 53:
                  §_-MG§.§_-0Eg§();
                  mNextState = §_-MG§.§_-pk§;
                  break;
               case 54:
                  §_-MG§.§_-4t§();
                  mNextState = §_-MG§.§_-pk§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         if(param3 is §_-Mu§)
         {
            if(param1 == §_-wU§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-Hy§.§_-7h§();
            }
            else if(param1 == §_-wU§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-Hy§.§_-6Z§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-02s§.§_-fl§();
               break;
            case "PAUSE":
               mNextState = this.§_-g4§();
               break;
            case "RESTART_LEVEL":
               §_-MG§.§_-0Eg§();
               mNextState = §_-MG§.§_-pk§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      protected function §_-g4§() : String
      {
         return §_-08C§.§_-pk§;
      }
      
      protected function useMightyEagle() : void
      {
         § in§.§_-Dc§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§);
         §_-s0§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§_-01Y§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§_-3O§();
      }
   }
}
