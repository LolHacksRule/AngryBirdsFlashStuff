package §_-T-§
{
   import §_-02x§.§_-o7§;
   import §_-0AB§.§_-dd§;
   import §_-0Dg§.§_-hi§;
   import §_-0EZ§.§_-48§;
   import §_-0Ea§.§_-AY§;
   import §_-6C§.§_-k6§;
   import §_-7§.§_-Ce§;
   import §_-7§.§_-EJ§;
   import §_-7§.§_-on§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-00u§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-08x§;
   import §_-ad§.§_-MG§;
   import §_-ad§.§_-iz§;
   import §_-dJ§.§_-xW§;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Za§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-qb§;
   import §_-x8§.§_-nG§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §_-e3§ extends StatePlay
   {
      
      private static const §_-C8§:Number = -5 * 1000;
      
      private static const §_-06Q§:Number = 10 * 1000;
      
      public static const §_-04v§:int = 50;
      
      public static var §_-00p§:String;
       
      
      private var §_-b9§:Number = -5000.0;
      
      private var §_-FG§:int = 0;
      
      private var §_-BW§:Number = 0;
      
      private var §_-fS§:Number = 0;
      
      private var §_-GI§:Number;
      
      protected var §_-KW§:§_-48§;
      
      private var §_-1I§:§_-qb§;
      
      private var §_-CS§:Boolean = false;
      
      private var §_-03R§:Boolean = false;
      
      private var §_-Jv§:§_-Ce§;
      
      public function §_-e3§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§_-00u§) : §_-hi§
      {
         return new §_-o7§(param1);
      }
      
      protected function §_-UV§() : void
      {
         this.§_-KW§ = §_-rG§.§_-kj§.§_-0z§(LevelManager.§_-N9§(LevelManager.§_-HM§).name,LevelManager.§_-HM§);
      }
      
      protected function §_-O3§() : void
      {
         (§ in§.§_-HY§ as §_-rG§).§_-Cw§(LevelManager.§_-HM§,this.§_-KW§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-OY§.§_-Ve§(§_-Za§.§_-ku§,LevelManager.§_-HM§);
         this.§_-UV§();
         this.§_-O3§();
         this.§_-1I§.levelStarted(this.§_-KW§,LevelManager.§_-HM§);
         this.§_-CS§ = false;
         this.§_-03R§ = false;
         §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-1I§.activate();
         if(this.§_-CS§)
         {
            §_-JC§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
         }
         §_-s0§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§_-GI§ = 2500;
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.include);
         this.§_-0-6§();
         §_-on§.§_-09P§(§_-s0§);
      }
      
      override public function init() : void
      {
         §_-I8§ = true;
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_FacebookLevelPlay[0]);
         this.§_-1I§ = new §_-qb§(§_-s0§);
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
         §_-09z§();
      }
      
      private function §_-RX§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§_-KW§.data)
         {
            if(_loc2_.u == param1)
            {
               if(_loc2_.a)
               {
                  return _loc2_.a;
               }
            }
         }
         return null;
      }
      
      private function §_-2e§(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:Array = [];
         if(_loc2_.length % 3 > 0)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            _loc2_ = _loc2_.slice(_loc2_.length % 3);
         }
         while(_loc2_.length > 0)
         {
            _loc3_.push(_loc2_.substr(0,3));
            _loc2_ = _loc2_.substr(3);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_ + ",";
         }
         return _loc2_.substr(0,_loc2_.length - 1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!AngryBirdsFP11.§_-LI§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-on§.isOpen || §_-EJ§.§_-Kf§())
         {
            return §_-nG§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§_-1I§.run(param1);
         this.§_-4x§(param1);
         if(!§ in§.§_-Dc§.objects.mSardineCanAdded)
         {
            this.§_-HW§(param1);
         }
         if(mNextState == §_-08x§.§_-pk§)
         {
            if(!this.§_-CS§)
            {
               §_-JC§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
               this.§_-CS§ = true;
            }
            if(_loc2_ || this.§_-03R§)
            {
               this.§_-GI§ -= param1;
               if(this.§_-GI§ < 0 || this.§_-03R§)
               {
                  return §_-nG§.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == §_-iz§.§_-pk§)
            {
               return §_-nG§.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return §_-nG§.STATE_STATUS_COMPLETED;
            }
         }
         var _loc3_:int = super.run(param1);
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function §_-001§(param1:MouseEvent) : void
      {
         this.§_-03R§ = true;
         §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§_-HM§;
         var _loc2_:int = §_-JC§.getScore();
         §_-OY§.§_-Ve§(§_-Za§.§_-yA§,_loc1_,_loc2_);
         var _loc3_:Array = (§ in§.§_-Dc§ as §_-xW§).§_-fK§();
         §_-OY§.§_-Zr§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "showTutorial":
               §_-on§.§_-5a§(§_-s0§,"ALL",true);
               §_-on§.§_-09P§(§_-s0§,true);
               break;
            case "PAUSE":
               mNextState = §_-g4§();
               break;
            case "RESTART_LEVEL":
               §_-MG§.§_-0Eg§();
               mNextState = §_-MG§.§_-pk§;
               break;
            case "CLOSE_TUTORIAL":
               §_-on§.§_-fl§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §_-on§.§_-fl§();
               break;
            case "ZOOM_IN":
               §_-JC§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §_-JC§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§_-1I§.§_-Id§ = false;
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function onHideMightyEagle() : void
      {
      }
      
      override protected function useMightyEagle() : void
      {
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = §_-JC§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§);
         var _loc4_:int;
         if((_loc4_ = §_-09E§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§_-09E§.getValue() + param1 * §_-04v§);
            §_-09E§.assign(_loc4_);
         }
         this.§_-1I§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      private function §_-HW§(param1:Number) : void
      {
         if((§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§).§_-T8§() == "End")
         {
            §_-s0§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§).§_-0Du§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-1I§.deActivate();
         §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
         § in§.§_-Dc§.§_-Qu§();
         this.§_-Xx§();
         this.§_-0-6§();
      }
      
      private function §_-Xx§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§_-b9§ > §_-06Q§)
         {
            _loc1_ = Math.round(1000 / this.§_-b9§ * this.§_-FG§);
            _loc2_ = LevelManager.§_-HM§;
            _loc3_ = (§ in§.§_-HY§ as §_-rG§).§_-Mh§();
            §_-OY§.§_-7a§(_loc1_,_loc2_,§_-AY§.§_-H3§,_loc3_);
         }
      }
      
      private function §_-4x§(param1:Number) : void
      {
         this.§_-b9§ += param1;
         if(this.§_-b9§ > 0)
         {
            ++this.§_-FG§;
         }
         if(this.§_-BW§ != § in§.§_-Ab§() || this.§_-fS§ != § in§.§_-q8§())
         {
            this.§_-0-6§();
         }
      }
      
      private function §_-0-6§() : void
      {
         this.§_-b9§ = §_-C8§;
         this.§_-FG§ = 0;
         this.§_-BW§ = § in§.§_-Ab§();
         this.§_-fS§ = § in§.§_-q8§();
      }
      
      private function §_-Qy§(param1:§_-dd§) : void
      {
         if(param1)
         {
            param1.§_-02V§();
         }
      }
   }
}
