package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§<+§;
   import §+"§.§ q§;
   import §+"§.§'!0§;
   import §+"§.§<!A§;
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §-I§.§package§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §0t§.§9c§;
   import §1"2§.§,!]§;
   import §1k§.§ !M§;
   import §1k§.§%4§;
   import §1k§.§'"9§;
   import §1k§.§7" §;
   import §1k§.§`!d§;
   import §3,§.§,!;§;
   import §3,§.§>M§;
   import §3,§.§[!;§;
   import §7N§.§+"@§;
   import §7N§.§43§;
   import §7N§.§>9§;
   import §;!s§.§9!]§;
   import §;^§.§9!$§;
   import §<!<§.§%!#§;
   import §<!<§.§7c§;
   import §<G§.§`"§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.AngryBirds.friendsbar.§2!h§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §&j§ extends StatePlay
   {
      
      private static const §^!M§:Number = -5 * 1000;
      
      private static const §0j§:Number = 10 * 1000;
      
      private static const §<!I§:Number = 50;
      
      private static const §[""§:Number = 0.05;
      
      public static var §="5§:String;
      
      public static var §;!@§:String = "";
      
      public static var §?!8§:Number = 0;
      
      public static var §!!?§:int = 0;
       
      
      private var §`!T§:String = "";
      
      private var §3!W§:Number = -5000.0;
      
      private var §&![§:int = 0;
      
      private var §>!Z§:Number = 0;
      
      private var §2'§:Number = 0;
      
      private var §&+§:§-!F§;
      
      private var §]!<§:Number;
      
      private var §6g§:Number;
      
      private var §!!j§:Number;
      
      private var §;V§:§ q§;
      
      private var §8!L§:Boolean = false;
      
      protected var §&2§:§9c§;
      
      private var §-J§:Boolean = false;
      
      private var §["B§:§9!$§;
      
      private var §"!Z§:Boolean = false;
      
      private var §`!1§:Boolean = false;
      
      private var §;" §:Number = 0;
      
      private var §3?§:Number = 0;
      
      private var §6"5§:§+"@§;
      
      public function §&j§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§[!;§) : §package§
      {
         return new §9!]§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         this.§&2§ = § W§.§,2§.§1!c§(LevelManager.§"!r§(LevelManager.§[!<§).name,LevelManager.§[!<§);
      }
      
      protected function showScoresForLevel() : void
      {
         (§9!%§.§ !W§ as § W§).§+!9§(LevelManager.§[!<§,this.§&2§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§;V§.activate();
         § q§.§>g§ = true;
         § q§.§;#§ = false;
         §%!#§.§'"-§(§7c§.§6!J§,LevelManager.§[!<§);
         this.fetchScoresForLevel();
         this.showScoresForLevel();
         this.§["B§.levelStarted(this.§&2§,LevelManager.§[!<§);
         this.§;V§.§1">§ = false;
         this.§;V§.§+!d§ = true;
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         §2"-§.getItemByName("Button_MightyEagle").setVisibility(true);
         if(§ q§.§>g§ && !§ q§.§;#§)
         {
            this.§;V§.§&!C§();
         }
         §2"-§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§&+§)
         {
            this.§&+§.stop();
            this.§&+§ = null;
         }
         this.§"!Z§ = false;
         this.§`!1§ = false;
         §2!J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!?§);
         this.§8!L§ = false;
         §2"-§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
         §2"-§.getItemByName("PowerUpCountME_BG").setVisibility(true);
         this.§;V§.§!!L§();
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         super.stopSoundsOnLevelStart();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?"5§();
      }
      
      protected function §5"=§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§ !M§ = null;
         var _loc4_:§'"9§ = null;
         if(LevelManager.§[!<§.indexOf("3001-") > -1 || LevelManager.§[!<§.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(LevelManager.§[!<§.indexOf("3001-") > -1)
            {
               this.§`!T§ = §`!d§.§48§;
               if(LevelManager.§[!<§.indexOf("3001-1") > -1)
               {
                  _loc1_ = §`!d§.§6!6§;
               }
               else if(LevelManager.§[!<§.indexOf("3001-2") > -1)
               {
                  _loc1_ = §`!d§.§;"7§;
                  this.§`!T§ = §`!d§.§1!"§;
               }
               else
               {
                  _loc1_ = §`!d§.§6!6§;
               }
               if(§;!@§ != getPauseState())
               {
                  §?!8§ = 0;
               }
            }
            else if(§!!?§ <= 1)
            {
               this.§`!T§ = §`!d§.§6!K§;
               _loc1_ = §`!d§.§+7§;
               _loc2_ = 1;
               §%4§.removeEventListener(§7" §.SOUND_COMPLETE,this.§"U§);
               §%4§.addEventListener(§7" §.SOUND_COMPLETE,this.§"U§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §%4§.§+!y§(§`!d§.§@!+§);
               if(!_loc3_)
               {
                  §%4§.§>$§(§`!d§.§@!+§,1,1);
               }
               _loc4_ = §%4§.§2"#§(_loc1_,this.§`!T§,3000,§`!d§.§@!+§,_loc2_,0.75,§?!8§);
            }
         }
      }
      
      protected function §%!t§() : void
      {
         var _loc2_:§'"9§ = null;
         §?!8§ = 0;
         var _loc1_:§ !M§ = §%4§.§+!y§(§`!d§.§@!+§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§finally§(this.§`!T§);
            if(_loc2_ != null)
            {
               §?!8§ = _loc2_.position;
            }
            §%4§.§&"@§(§`!d§.§@!+§);
         }
      }
      
      private function §"U§(param1:§7" §) : void
      {
         if(param1.§?!i§ == §`!d§.§6!K§ && this.§`!T§ == §`!d§.§6!K§ && § W§.§%!y§.§-!u§() != §-!M§.STATE_NAME)
         {
            §%4§.removeEventListener(§7" §.SOUND_COMPLETE,this.§"U§);
            ++§&j§.§!!?§;
         }
      }
      
      protected function §?"5§() : void
      {
         this.§5"=§();
         this.§["B§.activate();
         if(this.§"!Z§)
         {
            §2!J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!?§);
         }
         §2"-§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         if(§9!%§.§!!M§.objects.mSardineCanAdded || §?g§ || §9!%§.§!!M§.slingshot.mSlingShotState == §,!;§.§'!!§)
         {
            §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
            §2"-§.getItemByName("Container_MightyEagle").setVisibility(false);
            §2"-§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         }
         else
         {
            §2"-§.getItemByName("Container_MightyEagle").setVisibility(true);
         }
         this.§]!<§ = 2500;
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§]"+§);
         this.§%"&§();
         §>9§.§+L§(§2"-§);
      }
      
      protected function §6s§() : void
      {
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§3f§(this.§&+§);
         this.§&+§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§&+§.delay = 2;
         this.§&+§.play();
      }
      
      protected function §]"6§(param1:Boolean = true) : void
      {
         this.§8!L§ = true;
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§3f§(this.§&+§);
         this.§&+§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§&+§.delay = 2;
         }
         else
         {
            this.§&+§.delay = 0.5;
         }
         this.§&+§.play();
         this.§&+§.onComplete = this.§6!O§;
      }
      
      private function §6!O§() : void
      {
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function init() : void
      {
         §@!5§ = true;
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_FacebookLevelPlay[0]);
         this.§["B§ = new §9!$§(§2"-§);
         this.§!!j§ = (§2"-§.getItemByName("Container_PowerUpButtons") as §<+§).width - 25;
         this.§6g§ = (§2"-§.getItemByName("Container_PowerUpButtons") as §<+§).x;
         this.§;V§ = new § q§(§2"-§);
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
         §@h§();
      }
      
      private function §#!1§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§&2§.data)
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
      
      private function §<X§(param1:int) : String
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
         if(!AngryBirdsFP11.§+1§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§-J§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:int = 0;
         if(§>9§.isOpen || §43§.§&U§())
         {
            return §,-§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§["B§.run(param1);
         if(!§9!%§.§!!M§.objects.isPigsAlive())
         {
            _loc4_ = 1;
            while(_loc4_ < 6)
            {
               §2"-§.getItemByName("Button_PowerUp" + _loc4_.toString()).setEnabled(false);
               _loc4_++;
            }
            this.§;V§.§8! §();
            §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         if(§?g§)
         {
            this.§;V§.§8! §();
            §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            if(!this.§8!L§)
            {
               this.§]"6§(this.§;V§.§1">§);
            }
         }
         this.§;V§.run(param1);
         this.§%6§(param1);
         this.§[!j§(param1);
         if(!§9!%§.§!!M§.objects.mSardineCanAdded || !§?g§)
         {
            this.§6!?§(param1);
         }
         if(mNextState == §!!x§.STATE_NAME || mNextState == §`"§.STATE_NAME)
         {
            if(!this.§"!Z§)
            {
               §2!J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!?§);
               this.§"!Z§ = true;
            }
            if(_loc2_ || this.§`!1§)
            {
               this.§]!<§ -= param1;
               if(this.§]!<§ < 0 || this.§`!1§)
               {
                  if(this.§%!d§())
                  {
                     return §,-§.STATE_STATUS_COMPLETED;
                  }
               }
            }
         }
         else if(mNextState == §2"§.STATE_NAME)
         {
            if(this.§%!d§())
            {
               return §,-§.STATE_STATUS_COMPLETED;
            }
         }
         else if(mNextState)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         var _loc3_:int = super.run(param1);
         if(!this.§8!L§ && !§9!%§.§!!M§.slingshot.birdsAvailable)
         {
            this.§;V§.§1u§("POWERUP1",false);
            this.§;V§.§1u§("POWERUP2",false);
            this.§;V§.§1u§("POWERUP3",false);
         }
         if(!this.§8!L§ && §9!%§.§!!M§.slingshot.mSlingShotState == §,!;§.§'!!§)
         {
            this.§]"6§(this.§;V§.§1">§);
            this.§;V§.§8! §();
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      private function §%6§(param1:Number) : void
      {
         if(this.§;" §)
         {
            this.§3?§ += param1;
            if(this.§3?§ > §<!I§)
            {
               §2!J§.doUserZoom(true,this.§;" §);
               this.§3?§ = 0;
            }
         }
      }
      
      protected function §%!d§() : Boolean
      {
         if((§9!%§.§!!M§ as §>M§).§+r§.§%!H§ && !this.§6"5§)
         {
            this.§6"5§ = §43§.§2C§();
            (§9!%§.§!!M§ as §>M§).§+r§.addEventListener(Event.COMPLETE,this.§]v§);
         }
         return !(§9!%§.§!!M§ as §>M§).§+r§.§%!H§;
      }
      
      private function §]v§(param1:Event) : void
      {
         (§9!%§.§!!M§ as §>M§).§+r§.removeEventListener(Event.COMPLETE,this.§]v§);
         this.§6"5§.close();
         this.§6"5§ = null;
      }
      
      private function §<!?§(param1:MouseEvent) : void
      {
         this.§`!1§ = true;
         §2!J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!?§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§[!<§;
         var _loc2_:int = §2!J§.getScore();
         §%!#§.§'"-§(§7c§.§ !i§,_loc1_,_loc2_);
         var _loc3_:Array = (§9!%§.§!!M§ as §>M§).§>Q§();
         §%!#§.§+y§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            if(§9!%§.§!!M§.slingshot.mDragging)
            {
               §9!%§.§!!M§.slingshot.shoot();
               §2!J§.changeGameState(§package§.§^"'§);
               return;
            }
            §9!%§.§!!M§.camera.stopDragging();
         }
         switch(param2)
         {
            case "showTutorial":
               §>9§.§[z§(§2"-§,"ALL",true);
               §>9§.§+L§(§2"-§,true);
               break;
            case "PAUSE":
               §&j§.§;!@§ = getPauseState();
               mNextState = getPauseState();
               break;
            case "RESTART_LEVEL":
               §&j§.§;!@§ = STATE_NAME;
               §"c§.§@!z§();
               mNextState = §"c§.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               §>9§.§^!%§();
               break;
            case "MIGHTY_EAGLE":
               if((§9!%§.§!!M§ as §>M§).§+r§.useMightyEagle())
               {
                  this.useMightyEagle();
               }
               break;
            case "POWERUP_OPEN":
               if(!this.§;V§.§1">§)
               {
                  §2"-§.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§;V§.§&!C§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
            case "POWERUP5":
               this.§;V§.§+!d§ = this.§;V§.§4!#§(param2);
               if(!this.§;V§.§+!d§)
               {
                  §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§6s§();
               }
               break;
            case "POWERUPOVER1":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.§;!;§)) <= 0)
               {
                  §2"-§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                  (§2"-§.getItemByName("MovieClip_GetMore1") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore1") as §"Z§).§;!B§("Start");
               }
               break;
            case "POWERUPOVER2":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.§7X§)) <= 0)
               {
                  §2"-§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                  (§2"-§.getItemByName("MovieClip_GetMore2") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore2") as §"Z§).§;!B§("Start");
               }
               break;
            case "POWERUPOVER3":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.§[;§)) <= 0)
               {
                  §2"-§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                  (§2"-§.getItemByName("MovieClip_GetMore3") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore3") as §"Z§).§;!B§("Start");
               }
               break;
            case "POWERUPOVER4":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.§2!4§)) <= 0)
               {
                  §2"-§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                  (§2"-§.getItemByName("MovieClip_GetMore4") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore4") as §"Z§).§;!B§("Start");
               }
               break;
            case "POWERUPOVER5":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.§=!5§)) <= 0)
               {
                  §2"-§.getItemByName("MovieClip_GetMore5").setVisibility(true);
                  (§2"-§.getItemByName("MovieClip_GetMore5") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore5") as §"Z§).§;!B§("Start");
               }
               break;
            case "MIGHTYEAGLEOVER":
               if((_loc4_ = §'!0§.§8c§.§9+§(§<!A§.MIGHTY_EAGLE)) <= 0)
               {
                  (§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§^^§ = true;
                  (§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§;!B§("Start");
                  §2"-§.getItemByName("MovieClip_GetMore").setVisibility(true);
               }
               break;
            case "MIGHTYEAGLEOUT":
               §2"-§.getItemByName("MovieClip_GetMore").setVisibility(false);
               break;
            case "POWERUPOUT1":
               §2"-§.getItemByName("MovieClip_GetMore1").setVisibility(false);
               break;
            case "POWERUPOUT2":
               §2"-§.getItemByName("MovieClip_GetMore2").setVisibility(false);
               break;
            case "POWERUPOUT3":
               §2"-§.getItemByName("MovieClip_GetMore3").setVisibility(false);
               break;
            case "POWERUPOUT4":
               §2"-§.getItemByName("MovieClip_GetMore4").setVisibility(false);
               break;
            case "POWERUPOUT5":
               §2"-§.getItemByName("MovieClip_GetMore5").setVisibility(false);
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §>9§.§^!%§();
               break;
            case "ZOOM_IN":
               this.§;" § = §[""§;
               this.§3?§ = §<!I§;
               break;
            case "ZOOM_OUT":
               this.§;" § = -§[""§;
               this.§3?§ = §<!I§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§;" § = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§;" § = 0;
         }
      }
      
      override protected function useMightyEagle() : void
      {
         super.useMightyEagle();
         this.§["B§.§5!U§ = true;
         §>9§.§+L§(§2"-§);
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§["B§.§5!U§ = false;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = §2!J§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§[!<§);
         var _loc4_:int;
         if((_loc4_ = §-"2§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§-"2§.getValue() + param1 * §1!e§);
            §-"2§.assign(_loc4_);
         }
         if(this.§-J§)
         {
            §2"-§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§["B§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      protected function §6!?§(param1:Number) : void
      {
         if((§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§^^§ == true)
         {
            (§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§1!k§(param1);
         }
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            if((§2"-§.getItemByName("MovieClip_GetMore" + _loc2_) as §"Z§).§^^§ == true)
            {
               (§2"-§.getItemByName("MovieClip_GetMore" + _loc2_) as §"Z§).§1!k§(param1);
            }
            _loc2_++;
         }
         if((§2"-§.getItemByName("MovieClip_Boom") as §"Z§).§;!g§() == "End")
         {
            §2"-§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§2"-§.getItemByName("MovieClip_Boom") as §"Z§).§;!B§("Start");
         }
         if((§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§;!g§() == "End")
         {
            (§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§^^§ = false;
            (§2"-§.getItemByName("MovieClip_GetMore") as §"Z§).§;!B§("End");
         }
         _loc2_ = 1;
         while(_loc2_ < 6)
         {
            if((§2"-§.getItemByName("MovieClip_GetMore" + _loc2_) as §"Z§).§;!g§() == "End")
            {
               (§2"-§.getItemByName("MovieClip_GetMore" + _loc2_) as §"Z§).§^^§ = false;
               (§2"-§.getItemByName("MovieClip_GetMore" + _loc2_) as §"Z§).§;!B§("End");
            }
            _loc2_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §>9§.deActivate();
         this.§["B§.deActivate();
         this.§;V§.deActivate();
         §2!J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!?§);
         if(this.§&+§)
         {
            this.§3f§(this.§&+§);
            this.§&+§ = null;
         }
         this.§;V§.deActivate();
         §2"-§.getItemByName("MovieClip_GetMore").setVisibility(false);
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            (§2"-§.getItemByName("MovieClip_GetMore" + _loc1_) as §"Z§).setVisibility(false);
            _loc1_++;
         }
         §9!%§.§!!M§.§19§();
         this.§<!"§();
         this.§%"&§();
         this.§%!t§();
      }
      
      private function §<!"§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§3!W§ > §0j§)
         {
            _loc1_ = Math.round(1000 / this.§3!W§ * this.§&![§);
            _loc2_ = LevelManager.§[!<§;
            _loc3_ = (§9!%§.§ !W§ as § W§).§9A§();
            §%!#§.§7=§(_loc1_,_loc2_,§5!H§.§#!l§,_loc3_);
         }
      }
      
      private function §[!j§(param1:Number) : void
      {
         this.§3!W§ += param1;
         if(this.§3!W§ > 0)
         {
            ++this.§&![§;
         }
         if(this.§>!Z§ != §9!%§.§3" §() || this.§2'§ != §9!%§.§4"6§())
         {
            this.§%"&§();
         }
      }
      
      private function §%"&§() : void
      {
         this.§3!W§ = §^!M§;
         this.§&![§ = 0;
         this.§>!Z§ = §9!%§.§3" §();
         this.§2'§ = §9!%§.§4"6§();
      }
      
      private function §3f§(param1:§-!F§) : void
      {
         if(param1)
         {
            param1.§@N§();
         }
      }
   }
}
