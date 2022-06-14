package §7"@§
{
   import §!!C§.§]!;§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §1r§.§^!§;
   import §2!i§.§'M§;
   import §3!7§.§2G§;
   import §3!7§.§7J§;
   import §3!7§.§>,§;
   import §3!7§.§?!F§;
   import §3![§.§^"1§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §6!B§.§&!7§;
   import §6!B§.§,!p§;
   import §6!B§.§33§;
   import §6!B§.§7M§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §[!K§.§-!@§;
   import §]!A§.;
   import §^j§.§7>§;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §2!e§ extends StatePlay
   {
      
      private static const §>P§:Number = -5 * 1000;
      
      private static const §3i§:Number = 10 * 1000;
      
      private static const §+"B§:Number = 50;
      
      private static const §>!O§:Number = 0.05;
      
      public static var §#!W§:String;
      
      public static var §5;§:String = "";
      
      public static var §,T§:Number = 0;
      
      public static var §4"#§:int = 0;
       
      
      private var §<"8§:String = "";
      
      private var §#!Q§:Number = -5000.0;
      
      private var § #§:int = 0;
      
      private var §2H§:Number = 0;
      
      private var §`"!§:Number = 0;
      
      private var §=!#§:§"m§;
      
      private var §'!<§:Number;
      
      protected var §8<§:Number;
      
      protected var §#!J§:Number;
      
      protected var §`-§:§7J§;
      
      protected var §`!$§:Boolean = false;
      
      protected var §3s§:§]!;§;
      
      private var §!I§:Boolean = false;
      
      protected var § "B§:§^!§;
      
      private var §-B§:Boolean = false;
      
      private var §4!i§:Boolean = false;
      
      private var §6D§:Number = 0;
      
      private var §[A§:Number = 0;
      
      private var §["9§:§"!§;
      
      public function §2!e§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§9"3§) : §^"1§
      {
         return new §7>§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         this.§3s§ = §3T§.§if §.§#!7§(LevelManager.§^_§(LevelManager.§'!O§).name,LevelManager.§'!O§);
      }
      
      protected function get §-!!§() : §7J§
      {
         return this.§`-§;
      }
      
      protected function showScoresForLevel() : void
      {
         (§#6§.§ q§ as §3T§).§?D§(LevelManager.§'!O§,this.§3s§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§`-§.activate();
         §7J§.§^"B§ = true;
         §7J§.§function§ = false;
         §+!B§.§""1§(§>f§.§]",§,LevelManager.§'!O§);
         this.fetchScoresForLevel();
         this.showScoresForLevel();
         this.§ "B§.levelStarted(this.§3s§,LevelManager.§'!O§);
         this.§`-§.§`b§ = false;
         this.§`-§.§;!7§ = true;
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         §6w§.getItemByName("Button_MightyEagle").setVisibility(true);
         if(§7J§.§^"B§ && !§7J§.§function§)
         {
            this.§`-§.§-!X§();
         }
         §6w§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§=!#§)
         {
            this.§=!#§.stop();
            this.§=!#§ = null;
         }
         this.§-B§ = false;
         this.§4!i§ = false;
         §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
         this.§`!$§ = false;
         §6w§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
         §6w§.getItemByName("PowerUpCountME_BG").setVisibility(true);
         this.§`-§.§4g§();
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         super.stopSoundsOnLevelStart();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#E§();
      }
      
      protected function §6!c§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§7M§ = null;
         var _loc4_:§,!p§ = null;
         if(LevelManager.§'!O§.indexOf("3001-") > -1 || LevelManager.§'!O§.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(LevelManager.§'!O§.indexOf("3001-") > -1)
            {
               this.§<"8§ = §&!7§.§="+§;
               if(LevelManager.§'!O§.indexOf("3001-1") > -1)
               {
                  _loc1_ = §&!7§.§#";§;
               }
               else if(LevelManager.§'!O§.indexOf("3001-2") > -1)
               {
                  _loc1_ = §&!7§.§!u§;
                  this.§<"8§ = §&!7§.§;"C§;
               }
               else
               {
                  _loc1_ = §&!7§.§#";§;
               }
               if(§5;§ != getPauseState())
               {
                  §,T§ = 0;
               }
            }
            else if(§4"#§ <= 1)
            {
               this.§<"8§ = §&!7§.§+"8§;
               _loc1_ = §&!7§.§#!a§;
               _loc2_ = 1;
               §>!E§.removeEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
               §>!E§.addEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §>!E§.§"h§(§&!7§.§!!j§);
               if(!_loc3_)
               {
                  §>!E§.§0I§(§&!7§.§!!j§,1,1);
               }
               _loc4_ = §>!E§.§;!0§(_loc1_,this.§<"8§,3000,§&!7§.§!!j§,_loc2_,0.75,§,T§);
            }
         }
      }
      
      protected function §+y§() : void
      {
         var _loc2_:§,!p§ = null;
         §,T§ = 0;
         var _loc1_:§7M§ = §>!E§.§"h§(§&!7§.§!!j§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§?"+§(this.§<"8§);
            if(_loc2_ != null)
            {
               §,T§ = _loc2_.position;
            }
            §>!E§.§1!;§(§&!7§.§!!j§);
         }
      }
      
      private function §^!I§(param1:§33§) : void
      {
         if(param1.§"4§ == §&!7§.§+"8§ && this.§<"8§ == §&!7§.§+"8§ && §3T§.§67§.§;"&§() != §7l§.STATE_NAME)
         {
            §>!E§.removeEventListener(§33§.SOUND_COMPLETE,this.§^!I§);
            ++§2!e§.§4"#§;
         }
      }
      
      protected function §#E§() : void
      {
         this.§6!c§();
         this.§ "B§.activate();
         if(this.§-B§)
         {
            §,3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
         }
         §6w§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         if(§#6§.§6!z§.objects.mSardineCanAdded || §1e§ || §#6§.§6!z§.slingshot.mSlingShotState == §2a§.§0T§)
         {
            §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
            §6w§.getItemByName("Container_MightyEagle").setVisibility(false);
            §6w§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         }
         else
         {
            §6w§.getItemByName("Container_MightyEagle").setVisibility(true);
         }
         this.§'!<§ = 2500;
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§`!R§);
         this.§-!c§();
         §!'§.showTutorials(§6w§);
      }
      
      protected function dimPowerUp() : void
      {
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§>"8§(this.§=!#§);
         this.§=!#§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§=!#§.delay = 2;
         this.§=!#§.play();
      }
      
      protected function hidePowerUp(param1:Boolean = true) : void
      {
         this.§`!$§ = true;
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§>"8§(this.§=!#§);
         this.§=!#§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§=!#§.delay = 2;
         }
         else
         {
            this.§=!#§.delay = 0.5;
         }
         this.§=!#§.play();
         this.§=!#§.onComplete = this.§^p§;
      }
      
      private function §^p§() : void
      {
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function init() : void
      {
         § J§ = true;
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_FacebookLevelPlay[0]);
         this.§ "B§ = new §^!§(§6w§);
         this.§#!J§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).width - 25;
         this.§8<§ = (§6w§.getItemByName("Container_PowerUpButtons") as §08§).x;
         this.§`-§ = new §7J§(§6w§);
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §2m§();
      }
      
      private function §,!z§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§3s§.data)
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
      
      private function §[@§(param1:int) : String
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
         if(!AngryBirdsFP11.§4x§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§!I§ = true;
               break;
            case Keyboard.K:
               §#6§.§6!z§.§<<§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§!'§.isOpen || §%?§.§0!f§())
         {
            return §1-§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§ "B§.run(param1);
         if(!§#6§.§6!z§.objects.isPigsAlive())
         {
            this.disablePowerupMenu();
         }
         if(§1e§)
         {
            this.§`-§.§ "&§();
            §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            if(!this.§`!$§)
            {
               this.hidePowerUp(this.§`-§.§`b§);
            }
         }
         this.§`-§.run(param1);
         this.§1!3§(param1);
         this.§>!,§(param1);
         if(!§#6§.§6!z§.objects.mSardineCanAdded || !§1e§)
         {
            this.§4">§(param1);
         }
         if(mNextState == §&!>§.STATE_NAME || mNextState == §-!@§.STATE_NAME)
         {
            if(!this.§-B§)
            {
               §,3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
               this.§-B§ = true;
            }
            if(_loc2_ || this.§4!i§)
            {
               this.§'!<§ -= param1;
               if(this.§'!<§ < 0 || this.§4!i§)
               {
                  if(this.§0"@§())
                  {
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
               }
            }
         }
         else if(mNextState == §<!z§.STATE_NAME)
         {
            if(this.§0"@§())
            {
               return §1-§.STATE_STATUS_COMPLETED;
            }
         }
         else if(mNextState)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         var _loc3_:int = super.run(param1);
         if(!this.§`!$§ && !§#6§.§6!z§.slingshot.birdsAvailable)
         {
            this.§`-§.setPowerupActive(§>,§.§^Q§.§[2§,false);
            this.§`-§.setPowerupActive(§>,§.§7!C§.§[2§,false);
            this.§`-§.setPowerupActive(§>,§.§%!X§.§[2§,false);
         }
         if(!this.§`!$§ && §#6§.§6!z§.slingshot.mSlingShotState == §2a§.§0T§)
         {
            this.hidePowerUp(this.§`-§.§`b§);
            this.§`-§.§ "&§();
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      protected function disablePowerupMenu() : void
      {
         var _loc1_:§2G§ = null;
         for each(_loc1_ in §>,§.§%!#§)
         {
            §6w§.getItemByName(_loc1_.§&!y§).setEnabled(false);
         }
         this.§`-§.§ "&§();
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
      }
      
      private function §1!3§(param1:Number) : void
      {
         if(this.§6D§)
         {
            this.§[A§ += param1;
            if(this.§[A§ > §+"B§)
            {
               §,3§.doUserZoom(true,this.§6D§);
               this.§[A§ = 0;
            }
         }
      }
      
      protected function §0"@§() : Boolean
      {
         if((§#6§.§6!z§ as §2K§).§-"#§.§6I§ && !this.§["9§)
         {
            this.§["9§ = §%?§.§@-§();
            (§#6§.§6!z§ as §2K§).§-"#§.addEventListener(Event.COMPLETE,this.§!!l§);
         }
         return !(§#6§.§6!z§ as §2K§).§-"#§.§6I§;
      }
      
      private function §!!l§(param1:Event) : void
      {
         (§#6§.§6!z§ as §2K§).§-"#§.removeEventListener(Event.COMPLETE,this.§!!l§);
         this.§["9§.close();
         this.§["9§ = null;
      }
      
      private function §!!5§(param1:MouseEvent) : void
      {
         this.§4!i§ = true;
         §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§'!O§;
         var _loc2_:int = §,3§.getScore();
         §+!B§.§""1§(§>f§.§5!k§,_loc1_,_loc2_);
         var _loc3_:Array = (§#6§.§6!z§ as §2K§).§[v§();
         var _loc4_:String = JSON.stringify(_loc3_);
         §+!B§.§[r§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            if(§#6§.§6!z§.slingshot.mDragging)
            {
               §#6§.§6!z§.slingshot.shoot();
               §,3§.changeGameState(§^"1§.§60§);
               return;
            }
            §#6§.§6!z§.camera.stopDragging();
         }
         switch(param2)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               §2!e§.§5;§ = getPauseState();
               mNextState = getPauseState();
               break;
            case "RESTART_LEVEL":
               §2!e§.§5;§ = STATE_NAME;
               §!!7§.§-V§();
               mNextState = §!!7§.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               §!'§.§]>§();
               break;
            case "MIGHTY_EAGLE":
               if((§#6§.§6!z§ as §2K§).§-"#§.useMightyEagle())
               {
                  this.useMightyEagle();
               }
               break;
            case "POWERUP_OPEN":
               if(!this.§`-§.§`b§)
               {
                  §6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§`-§.§-!X§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
            case "POWERUP5":
               this.§`-§.§;!7§ = this.§`-§.§ !2§(param2);
               if(!this.§`-§.§;!7§)
               {
                  §6w§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.dimPowerUp();
               }
               break;
            case "POWERUPOVER1":
               if((_loc4_ = §?!F§.§;"§.§!!y§(§>,§.§^Q§.§]6§)) <= 0)
               {
                  §6w§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                  (§6w§.getItemByName("MovieClip_GetMore1") as §7"-§).§5%§ = true;
                  (§6w§.getItemByName("MovieClip_GetMore1") as §7"-§).§2!H§("Start");
               }
               break;
            case "POWERUPOVER2":
               if((_loc4_ = §?!F§.§;"§.§!!y§(§>,§.§7!C§.§]6§)) <= 0)
               {
                  §6w§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                  (§6w§.getItemByName("MovieClip_GetMore2") as §7"-§).§5%§ = true;
                  (§6w§.getItemByName("MovieClip_GetMore2") as §7"-§).§2!H§("Start");
               }
               break;
            case "POWERUPOVER3":
               if((_loc4_ = §?!F§.§;"§.§!!y§(§>,§.§%!X§.§]6§)) <= 0)
               {
                  §6w§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                  (§6w§.getItemByName("MovieClip_GetMore3") as §7"-§).§5%§ = true;
                  (§6w§.getItemByName("MovieClip_GetMore3") as §7"-§).§2!H§("Start");
               }
               break;
            case "POWERUPOVER4":
               if((_loc4_ = §?!F§.§;"§.§!!y§(§>,§.§&m§.§]6§)) <= 0)
               {
                  §6w§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                  (§6w§.getItemByName("MovieClip_GetMore4") as §7"-§).§5%§ = true;
                  (§6w§.getItemByName("MovieClip_GetMore4") as §7"-§).§2!H§("Start");
               }
               break;
            case "MIGHTYEAGLEOVER":
               if((_loc4_ = §?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§)) <= 0)
               {
                  (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ = true;
                  (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§2!H§("Start");
                  §6w§.getItemByName("MovieClip_GetMore").setVisibility(true);
               }
               break;
            case "MIGHTYEAGLEOUT":
               §6w§.getItemByName("MovieClip_GetMore").setVisibility(false);
               break;
            case "POWERUPOUT1":
               §6w§.getItemByName("MovieClip_GetMore1").setVisibility(false);
               break;
            case "POWERUPOUT2":
               §6w§.getItemByName("MovieClip_GetMore2").setVisibility(false);
               break;
            case "POWERUPOUT3":
               §6w§.getItemByName("MovieClip_GetMore3").setVisibility(false);
               break;
            case "POWERUPOUT4":
               §6w§.getItemByName("MovieClip_GetMore4").setVisibility(false);
               break;
            case "POWERUPOUT5":
               §6w§.getItemByName("MovieClip_GetMore5").setVisibility(false);
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §!'§.§]>§();
               break;
            case "ZOOM_IN":
               this.§6D§ = §>!O§;
               this.§[A§ = §+"B§;
               break;
            case "ZOOM_OUT":
               this.§6D§ = -§>!O§;
               this.§[A§ = §+"B§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§6D§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§6D§ = 0;
         }
      }
      
      protected function showTutorials() : void
      {
         §!'§.§0!J§(§6w§,"ALL_BASIC",true);
         §!'§.showTutorials(§6w§,true);
      }
      
      override protected function useMightyEagle() : void
      {
         super.useMightyEagle();
         this.§ "B§.§64§ = true;
         §!'§.showTutorials(§6w§);
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§ "B§.§64§ = false;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = §,3§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§'!O§);
         var _loc4_:int;
         if((_loc4_ = §;![§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§;![§.getValue() + param1 * §7D§);
            §;![§.assign(_loc4_);
         }
         if(this.§!I§)
         {
            §6w§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§ "B§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      protected function §4">§(param1:Number) : void
      {
         if((§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ == true)
         {
            (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§&!q§(param1);
         }
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            if((§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§5%§ == true)
            {
               (§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§&!q§(param1);
            }
            _loc2_++;
         }
         if((§6w§.getItemByName("MovieClip_Boom") as §7"-§).§6"?§() == "End")
         {
            §6w§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§6w§.getItemByName("MovieClip_Boom") as §7"-§).§2!H§("Start");
         }
         if((§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§6"?§() == "End")
         {
            (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§5%§ = false;
            (§6w§.getItemByName("MovieClip_GetMore") as §7"-§).§2!H§("End");
         }
         _loc2_ = 1;
         while(_loc2_ < 6)
         {
            if((§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§6"?§() == "End")
            {
               (§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§5%§ = false;
               (§6w§.getItemByName("MovieClip_GetMore" + _loc2_) as §7"-§).§2!H§("End");
            }
            _loc2_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §!'§.deActivate();
         this.§ "B§.deActivate();
         this.§`-§.deActivate();
         §,3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!5§);
         if(this.§=!#§)
         {
            this.§>"8§(this.§=!#§);
            this.§=!#§ = null;
         }
         this.§`-§.deActivate();
         §6w§.getItemByName("MovieClip_GetMore").setVisibility(false);
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            (§6w§.getItemByName("MovieClip_GetMore" + _loc1_) as §7"-§).setVisibility(false);
            _loc1_++;
         }
         §#6§.§6!z§.§"!a§();
         this.§#,§();
         this.§-!c§();
         this.§+y§();
      }
      
      private function §#,§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§#!Q§ > §3i§)
         {
            _loc1_ = Math.round(1000 / this.§#!Q§ * this.§ #§);
            _loc2_ = LevelManager.§'!O§;
            _loc3_ = (§#6§.§ q§ as §3T§).§-!P§();
            §+!B§.§4"%§(_loc1_,_loc2_,§"]§.§4"!§,_loc3_);
         }
      }
      
      private function §>!,§(param1:Number) : void
      {
         this.§#!Q§ += param1;
         if(this.§#!Q§ > 0)
         {
            ++this.§ #§;
         }
         if(this.§2H§ != §#6§.§7!-§() || this.§`"!§ != §#6§.§8h§())
         {
            this.§-!c§();
         }
      }
      
      private function §-!c§() : void
      {
         this.§#!Q§ = §>P§;
         this.§ #§ = 0;
         this.§2H§ = §#6§.§7!-§();
         this.§`"!§ = §#6§.§8h§();
      }
      
      private function §>"8§(param1:§"m§) : void
      {
         if(param1)
         {
            param1.§?"3§();
         }
      }
   }
}
