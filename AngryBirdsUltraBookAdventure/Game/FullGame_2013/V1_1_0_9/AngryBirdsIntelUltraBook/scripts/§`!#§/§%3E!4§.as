package §`!#§
{
   import §"!i§.LevelManager;
   import §,!h§.§0d§;
   import §,@§.§'!6§;
   import §0b§.§"V§;
   import §2!U§.§0!>§;
   import §2!U§.§3!;§;
   import §2!U§.§=<§;
   import §2!U§.StatePlay;
   import §2m§.§<!?§;
   import §2y§.§7!p§;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §8!H§.§9![§;
   import §9j§.§7!c§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §<-§.§5Z§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §]F§.§^v§;
   import §^!m§.§3v§;
   import §^!m§.§4!i§;
   import §^!m§.§^!S§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §>!4§ extends StatePlay
   {
      
      private static const §36§:Number = -5 * 1000;
      
      private static const §8$§:Number = 10 * 1000;
      
      private static const §]!s§:Number = 50;
      
      private static const §^!_§:Number = 0.05;
      
      public static const §>!b§:int = 50;
      
      public static var §`!e§:String;
       
      
      private var §0!J§:Number = -5000.0;
      
      private var §><§:int = 0;
      
      private var §7!b§:Number = 0;
      
      private var § null§:Number = 0;
      
      private var §?!k§:Number;
      
      protected var §[!+§:§'!6§;
      
      private var §"s§:§7!c§;
      
      private var §"§:Boolean = false;
      
      private var §-N§:Boolean = false;
      
      private var §?k§:Number = 0;
      
      private var §2!l§:Number = 0;
      
      private var §=!J§:§^!S§;
      
      public function §>!4§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§5G§) : §3!K§
      {
         return new §0d§(param1);
      }
      
      protected function §;,§() : void
      {
         this.§[!+§ = §<t§.§!V§.§2!v§(LevelManager.§`r§(LevelManager.§"L§).name,LevelManager.§"L§);
      }
      
      protected function §[!;§() : void
      {
         (§,!s§.§]!J§ as §<t§).§;!T§(LevelManager.§"L§,this.§[!+§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §!!K§.§&!v§(§5Z§.§[@§,LevelManager.§"L§);
         this.§;,§();
         this.§[!;§();
         this.§"s§.levelStarted(this.§[!+§,LevelManager.§"L§);
         this.§"§ = false;
         this.§-N§ = false;
         §5!P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"s§.activate();
         if(this.§"§)
         {
            §5!P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
         }
         §'!Q§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§?!k§ = 2500;
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§-x§);
         this.§;!X§();
         §3v§.§'%§(§'!Q§);
      }
      
      override public function init() : void
      {
         §]!E§ = true;
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_FacebookLevelPlay[0]);
         this.§"s§ = new §7!c§(§'!Q§);
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         §-s§();
      }
      
      private function §&D§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§[!+§.data)
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
      
      private function §4!1§(param1:int) : String
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
         if(!AngryBirdsFP11.§?C§)
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
         if(§3v§.isOpen || §4!i§.§+!V§())
         {
            return §9![§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§"s§.run(param1);
         this.§&_§(param1);
         if(!§,!s§.§=!I§.objects.mSardineCanAdded)
         {
            this.§^!>§(param1);
         }
         this.§#&§(param1);
         if(mNextState == §=<§.§'!q§)
         {
            if(!this.§"§)
            {
               §5!P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
               this.§"§ = true;
            }
            if(_loc2_ || this.§-N§)
            {
               this.§?!k§ -= param1;
               if(this.§?!k§ < 0 || this.§-N§)
               {
                  return §9![§.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == §0!>§.§'!q§)
            {
               return §9![§.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return §9![§.STATE_STATUS_COMPLETED;
            }
         }
         var _loc3_:int = super.run(param1);
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function §34§(param1:MouseEvent) : void
      {
         this.§-N§ = true;
         §5!P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§"L§;
         var _loc2_:int = §5!P§.getScore();
         §!!K§.§&!v§(§5Z§.§0O§,_loc1_,_loc2_);
         var _loc3_:Array = (§,!s§.§=!I§ as §"V§).§1!;§();
         §!!K§.§9s§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         if(param1 == 1)
         {
            if(§,!s§.§=!I§.slingshot.mDragging)
            {
               §,!s§.§=!I§.slingshot.shoot();
               §5!P§.changeGameState(§3!K§.§5B§);
               return;
            }
            §,!s§.§=!I§.camera.stopDragging();
         }
         switch(param2)
         {
            case "showTutorial":
               §3v§.§;-§(§'!Q§,"ALL",true);
               §3v§.§'%§(§'!Q§,true);
               break;
            case "PAUSE":
               mNextState = §8!S§();
               break;
            case "RESTART_LEVEL":
               §3!;§.§0!1§();
               mNextState = §3!;§.§'!q§;
               break;
            case "CLOSE_TUTORIAL":
               §3v§.§6S§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §3v§.§6S§();
               break;
            case "ZOOM_IN":
               this.§?k§ = §^!_§;
               this.§2!l§ = §]!s§;
               break;
            case "ZOOM_OUT":
               this.§?k§ = -§^!_§;
               this.§2!l§ = §]!s§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§?k§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§?k§ = 0;
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§"s§.§9"§ = false;
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
         var _loc2_:int = §5!P§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§);
         var _loc4_:int;
         if((_loc4_ = §9!L§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§9!L§.getValue() + param1 * §>!b§);
            §9!L§.assign(_loc4_);
         }
         this.§"s§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      private function §^!>§(param1:Number) : void
      {
         if((§'!Q§.getItemByName("MovieClip_Boom") as §7!p§).§-E§() == "End")
         {
            §'!Q§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§'!Q§.getItemByName("MovieClip_Boom") as §7!p§).§>Z§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"s§.deActivate();
         §5!P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§34§);
         §,!s§.§=!I§.§0!+§();
         this.§6,§();
         this.§;!X§();
      }
      
      private function §6,§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§0!J§ > §8$§)
         {
            _loc1_ = Math.round(1000 / this.§0!J§ * this.§><§);
            _loc2_ = LevelManager.§"L§;
            _loc3_ = (§,!s§.§]!J§ as §<t§).§?6§();
            §!!K§.§&U§(_loc1_,_loc2_,§<!?§.§@!_§,_loc3_);
         }
      }
      
      private function §&_§(param1:Number) : void
      {
         this.§0!J§ += param1;
         if(this.§0!J§ > 0)
         {
            ++this.§><§;
         }
         if(this.§7!b§ != §,!s§.§!!Q§() || this.§ null§ != §,!s§.§<!S§())
         {
            this.§;!X§();
         }
      }
      
      private function §#&§(param1:Number) : void
      {
         if(this.§?k§)
         {
            this.§2!l§ += param1;
            if(this.§2!l§ > §]!s§)
            {
               §5!P§.doUserZoom(true,this.§?k§);
               this.§2!l§ = 0;
            }
         }
      }
      
      private function §;!X§() : void
      {
         this.§0!J§ = §36§;
         this.§><§ = 0;
         this.§7!b§ = §,!s§.§!!Q§();
         this.§ null§ = §,!s§.§<!S§();
      }
      
      private function §5!w§(param1:§^v§) : void
      {
         if(param1)
         {
            param1.§&T§();
         }
      }
   }
}
