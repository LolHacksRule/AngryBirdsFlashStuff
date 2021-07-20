package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §%!'§.§>A§;
   import §&!"§.§4!F§;
   import §&!"§.§8D§;
   import §&!"§.§`B§;
   import §+!F§.§1!D§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §0!2§.§,!W§;
   import §0!2§.§5"L§;
   import §0!2§.§9!F§;
   import §2!6§.§ !h§;
   import §2!6§.§3$§;
   import §2!6§.§?G§;
   import §2!6§.§`"J§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §2J§.§+"5§;
   import §2L§.§`W§;
   import §2X§.§[!@§;
   import §5!G§.§&2§;
   import §6k§.§["K§;
   import §70§.§^!>§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §>s§.§34§;
   import §>s§.§9!u§;
   import §>s§.§@c§;
   import §>s§.§`,§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §-!V§ extends StatePlay
   {
      
      private static const §6!2§:Number = -5 * 1000;
      
      private static const §-!$§:Number = 10 * 1000;
      
      private static const §]1§:Number = 50;
      
      private static const §&U§:Number = 0.05;
      
      public static var §#E§:String;
      
      public static var §89§:String = "";
      
      public static var §35§:Number = 0;
      
      public static var §`p§:int = 0;
       
      
      private var §"§:String = "";
      
      private var §!&§:Number = -5000.0;
      
      private var §1"1§:int = 0;
      
      private var §^"0§:Number = 0;
      
      private var §-!3§:Number = 0;
      
      private var §%E§:§!"&§;
      
      private var §9m§:Number;
      
      protected var §5"D§:Number;
      
      protected var §4<§:Number;
      
      protected var §<!?§:§3$§;
      
      protected var §1!g§:Boolean = false;
      
      protected var §'"G§:§`W§;
      
      private var §="D§:Boolean = false;
      
      protected var §8!H§:§+"5§;
      
      private var §2!O§:Boolean = false;
      
      private var §0v§:Boolean = false;
      
      private var §3"@§:Number = 0;
      
      private var §,!F§:Number = 0;
      
      private var §4!?§:§4!F§;
      
      public function §-!V§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§5"L§) : §^!>§
      {
         return new §[!@§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         this.§'"G§ = §,"I§.§?!v§.§""<§(LevelManager.§0"§(LevelManager.§`-§).name,LevelManager.§`-§);
      }
      
      public function get §+L§() : §3$§
      {
         return this.§<!?§;
      }
      
      protected function showScoresForLevel() : void
      {
         (§&2§.§5!k§ as §,"I§).§'"'§(LevelManager.§`-§,this.§'"G§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§<!?§.activate();
         §3$§.§5!^§ = true;
         §3$§.§7"I§ = false;
         §"!e§.§7"9§(§>A§.§7M§,LevelManager.§`-§);
         this.fetchScoresForLevel();
         this.showScoresForLevel();
         this.§""?§();
         this.§<!?§.§7Z§ = false;
         this.§<!?§.§"!k§ = true;
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         §2!K§.getItemByName("Button_MightyEagle").setVisibility(true);
         if(§3$§.§5!^§ && !§3$§.§7"I§)
         {
            this.§<!?§.§1!@§();
         }
         §2!K§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§%E§)
         {
            this.§%E§.stop();
            this.§%E§ = null;
         }
         this.§2!O§ = false;
         this.§0v§ = false;
         §8R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!1§);
         this.§1!g§ = false;
         §2!K§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
         §2!K§.getItemByName("PowerUpCountME_BG").setVisibility(true);
         this.§<!?§.§ !4§();
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
      }
      
      protected function §""?§() : void
      {
         this.§8!H§.levelStarted(this.§'"G§,LevelManager.§`-§);
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         super.stopSoundsOnLevelStart();
      }
      
      override public function activate() : void
      {
         this.§'!u§();
         super.activate();
         this.§5?§();
      }
      
      protected function §,"4§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§`,§ = null;
         var _loc4_:§9!u§ = null;
         if(LevelManager.§`-§.indexOf("3001-") > -1 || LevelManager.§`-§.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(LevelManager.§`-§.indexOf("3001-") > -1)
            {
               this.§"§ = §@c§.§83§;
               if(LevelManager.§`-§.indexOf("3001-1") > -1)
               {
                  _loc1_ = §@c§.§2x§;
               }
               else if(LevelManager.§`-§.indexOf("3001-2") > -1)
               {
                  _loc1_ = §@c§.§9P§;
                  this.§"§ = §@c§.§-w§;
               }
               else
               {
                  _loc1_ = §@c§.§2x§;
               }
               if(§89§ != getPauseState())
               {
                  §35§ = 0;
               }
            }
            else if(§`p§ <= 1)
            {
               this.§"§ = §@c§.§6p§;
               _loc1_ = §@c§.§[!E§;
               _loc2_ = 1;
               §+m§.removeEventListener(§34§.SOUND_COMPLETE,this.§<"3§);
               §+m§.addEventListener(§34§.SOUND_COMPLETE,this.§<"3§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §+m§.§ do§(§@c§.§^">§);
               if(!_loc3_)
               {
                  §+m§.§9!g§(§@c§.§^">§,1,1);
               }
               _loc4_ = §+m§.§;p§(_loc1_,this.§"§,3000,§@c§.§^">§,_loc2_,0.75,§35§);
            }
         }
      }
      
      protected function §,"3§() : void
      {
         var _loc2_:§9!u§ = null;
         §35§ = 0;
         var _loc1_:§`,§ = §+m§.§ do§(§@c§.§^">§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§]m§(this.§"§);
            if(_loc2_ != null)
            {
               §35§ = _loc2_.position;
            }
            §+m§.§5!P§(§@c§.§^">§);
         }
      }
      
      private function §<"3§(param1:§34§) : void
      {
         if(param1.§-S§ == §@c§.§6p§ && this.§"§ == §@c§.§6p§ && §,"I§.§&q§.§=e§() != §9!p§.STATE_NAME)
         {
            §+m§.removeEventListener(§34§.SOUND_COMPLETE,this.§<"3§);
            ++§-!V§.§`p§;
         }
      }
      
      protected function §5?§() : void
      {
         this.§,"4§();
         this.§8!H§.activate();
         if(this.§2!O§)
         {
            §8R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!1§);
         }
         §2!K§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         if(§&2§.§],§.objects.mSardineCanAdded || §'!B§ || §&2§.§],§.slingshot.mSlingShotState == §,!W§.§4!T§)
         {
            §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
            §2!K§.getItemByName("Container_MightyEagle").setVisibility(false);
            §2!K§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         }
         else
         {
            §2!K§.getItemByName("Container_MightyEagle").setVisibility(true);
         }
         this.§9m§ = 2500;
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§-!_§);
         this.§`!x§();
         §8D§.§1p§(§2!K§);
      }
      
      protected function §<C§() : void
      {
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§;!8§(this.§%E§);
         this.§%E§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§%E§.delay = 2;
         this.§%E§.play();
      }
      
      protected function §4!C§(param1:Boolean = true) : void
      {
         this.§1!g§ = true;
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§;!8§(this.§%E§);
         this.§%E§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§%E§.delay = 2;
         }
         else
         {
            this.§%E§.delay = 0.5;
         }
         this.§%E§.play();
         this.§%E§.onComplete = this.§3!K§;
      }
      
      private function §3!K§() : void
      {
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function init() : void
      {
         §!Q§ = true;
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_FacebookLevelPlay[0]);
         this.§8!H§ = new §+"5§(§2!K§);
         this.§4<§ = (§2!K§.getItemByName("Container_PowerUpButtons") as §?!j§).width - 25;
         this.§5"D§ = (§2!K§.getItemByName("Container_PowerUpButtons") as §?!j§).x;
         this.§<!?§ = new §3$§(§2!K§);
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
         §#"B§();
      }
      
      private function §&!R§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§'"G§.data)
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
      
      private function §+!-§(param1:int) : String
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
         if(!AngryBirdsFP11.§&!M§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§="D§ = true;
               break;
            case Keyboard.K:
               §&2§.§],§.§32§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§8D§.isOpen || §`B§.§%!s§())
         {
            return §5!S§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§8!H§.run(param1);
         if(!§&2§.§],§.objects.isPigsAlive())
         {
            this.§,"=§();
         }
         if(§'!B§)
         {
            this.§<!?§.§6!e§();
            §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            if(!this.§1!g§)
            {
               this.§4!C§(this.§<!?§.§7Z§);
            }
         }
         this.§<!?§.run(param1);
         this.§%p§(param1);
         this.§;!!§(param1);
         if(!§&2§.§],§.objects.mSardineCanAdded || !§'!B§)
         {
            this.§!!V§(param1);
         }
         if(mNextState == §!W§.STATE_NAME || mNextState == §["K§.STATE_NAME)
         {
            if(!this.§2!O§)
            {
               §8R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!1§);
               this.§2!O§ = true;
            }
            if(_loc2_ || this.§0v§)
            {
               this.§9m§ -= param1;
               if(this.§9m§ < 0 || this.§0v§)
               {
                  if(this.§!V§())
                  {
                     return §5!S§.STATE_STATUS_COMPLETED;
                  }
               }
            }
         }
         else if(mNextState == §>G§.STATE_NAME)
         {
            if(this.§!V§())
            {
               return §5!S§.STATE_STATUS_COMPLETED;
            }
         }
         else if(mNextState)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         var _loc3_:int = super.run(param1);
         if(!this.§1!g§ && !§&2§.§],§.slingshot.birdsAvailable)
         {
            this.§<!?§.§"o§(§ !h§.§+!<§.§4W§,false);
            this.§<!?§.§"o§(§ !h§.§]!^§.§4W§,false);
            this.§<!?§.§"o§(§ !h§.§="'§.§4W§,false);
            this.§<!?§.§"o§(§ !h§.§+6§.§4W§,false);
         }
         if(!this.§1!g§ && §&2§.§],§.slingshot.mSlingShotState == §,!W§.§4!T§)
         {
            this.§4!C§(this.§<!?§.§7Z§);
            this.§<!?§.§6!e§();
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      protected function §,"=§() : void
      {
         var _loc1_:§?G§ = null;
         for each(_loc1_ in § !h§.§]e§)
         {
            if(_loc1_.§02§)
            {
               §2!K§.getItemByName(_loc1_.§7!4§).setEnabled(false);
            }
         }
         this.§<!?§.§6!e§();
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
      }
      
      private function §%p§(param1:Number) : void
      {
         if(this.§3"@§)
         {
            this.§,!F§ += param1;
            if(this.§,!F§ > §]1§)
            {
               §8R§.doUserZoom(true,this.§3"@§);
               this.§,!F§ = 0;
            }
         }
      }
      
      protected function §!V§() : Boolean
      {
         if((§&2§.§],§ as §9!F§).§"#§.§@!o§ && !this.§4!?§)
         {
            this.§4!?§ = §`B§.§>>§();
            (§&2§.§],§ as §9!F§).§"#§.addEventListener(Event.COMPLETE,this.§!Y§);
         }
         return !(§&2§.§],§ as §9!F§).§"#§.§@!o§;
      }
      
      private function §!Y§(param1:Event) : void
      {
         (§&2§.§],§ as §9!F§).§"#§.removeEventListener(Event.COMPLETE,this.§!Y§);
         this.§4!?§.close();
         this.§4!?§ = null;
      }
      
      private function §^!1§(param1:MouseEvent) : void
      {
         this.§0v§ = true;
         §8R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!1§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§`-§;
         var _loc2_:int = §8R§.getScore();
         §"!e§.§7"9§(§>A§.§&Y§,_loc1_,_loc2_);
         var _loc3_:Array = (§&2§.§],§ as §9!F§).§;!A§();
         var _loc4_:String = JSON.stringify(_loc3_);
         §"!e§.§3A§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            if(§&2§.§],§.slingshot.mDragging)
            {
               §&2§.§],§.slingshot.shoot();
               §8R§.changeGameState(§^!>§.§<F§);
               return;
            }
            §&2§.§],§.camera.stopDragging();
         }
         switch(param2)
         {
            case "showTutorial":
               this.§1p§();
               break;
            case "PAUSE":
               §-!V§.§89§ = getPauseState();
               mNextState = getPauseState();
               break;
            case "RESTART_LEVEL":
               §-!V§.§89§ = STATE_NAME;
               §'!N§.§^R§();
               mNextState = §'!N§.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               §8D§.§-f§();
               break;
            case "MIGHTY_EAGLE":
               if((§&2§.§],§ as §9!F§).§"#§.useMightyEagle())
               {
                  this.useMightyEagle();
               }
               break;
            case "POWERUP_OPEN":
               if(!this.§<!?§.§7Z§)
               {
                  §2!K§.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§<!?§.§1!@§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
            case "POWERUP5":
               this.§<!?§.§"!k§ = this.§<!?§.§2'§(param2);
               if(!this.§<!?§.§"!k§)
               {
                  §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§<C§();
               }
               break;
            case "POWERUPOVER1":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§+!<§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore1") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore1") as §="0§).§!!s§("Start");
               }
               break;
            case "POWERUPOVER2":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§]!^§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore2") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore2") as §="0§).§!!s§("Start");
               }
               break;
            case "POWERUPOVER3":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§="'§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore3") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore3") as §="0§).§!!s§("Start");
               }
               break;
            case "POWERUPOVER4":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§@"<§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore4") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore4") as §="0§).§!!s§("Start");
               }
               break;
            case "POWERUPOVER5":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§+6§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore5").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore5") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore5") as §="0§).§!!s§("Start");
               }
               break;
            case "MIGHTYEAGLEOVER":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§]W§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMore").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§!!s§("Start");
               }
               break;
            case "EXTRABIRD":
               this.§<!?§.§"!k§ = this.§<!?§.§2'§(param2);
               if(!this.§<!?§.§"!k§)
               {
                  §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.§<C§();
               }
               break;
            case "EXTRABIRDOVER":
               if((_loc4_ = §`"J§.§1[§.§'>§(§ !h§.§36§.§5"5§)) <= 0)
               {
                  §2!K§.getItemByName("MovieClip_GetMoreVH").setVisibility(true);
                  (§2!K§.getItemByName("MovieClip_GetMoreVH") as §="0§).§%![§ = true;
                  (§2!K§.getItemByName("MovieClip_GetMoreVH") as §="0§).§!!s§("Start");
               }
               break;
            case "MIGHTYEAGLEOUT":
               §2!K§.getItemByName("MovieClip_GetMore").setVisibility(false);
               break;
            case "POWERUPOUT1":
               §2!K§.getItemByName("MovieClip_GetMore1").setVisibility(false);
               break;
            case "POWERUPOUT2":
               §2!K§.getItemByName("MovieClip_GetMore2").setVisibility(false);
               break;
            case "POWERUPOUT3":
               §2!K§.getItemByName("MovieClip_GetMore3").setVisibility(false);
               break;
            case "POWERUPOUT4":
               §2!K§.getItemByName("MovieClip_GetMore4").setVisibility(false);
               break;
            case "POWERUPOUT5":
               §2!K§.getItemByName("MovieClip_GetMore5").setVisibility(false);
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §8D§.§-f§();
               break;
            case "ZOOM_IN":
               this.§3"@§ = §&U§;
               this.§,!F§ = §]1§;
               break;
            case "ZOOM_OUT":
               this.§3"@§ = -§&U§;
               this.§,!F§ = §]1§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§3"@§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§3"@§ = 0;
         }
      }
      
      protected function §1p§() : void
      {
         §8D§.§@!I§(§2!K§,"ALL_BASIC",true);
         §8D§.§1p§(§2!K§,true);
      }
      
      override protected function useMightyEagle() : void
      {
         super.useMightyEagle();
         this.§8!H§.§'8§ = true;
         §8D§.§1p§(§2!K§);
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§8!H§.§'8§ = false;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = §8R§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§`-§);
         var _loc4_:int;
         if((_loc4_ = §#K§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§#K§.getValue() + param1 * §!m§);
            §#K§.assign(_loc4_);
         }
         if(this.§="D§)
         {
            §2!K§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§8!H§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      protected function §!!V§(param1:Number) : void
      {
         if((§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§%![§ == true)
         {
            (§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§'!$§(param1);
         }
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            if((§2!K§.getItemByName("MovieClip_GetMore" + _loc2_) as §="0§).§%![§ == true)
            {
               (§2!K§.getItemByName("MovieClip_GetMore" + _loc2_) as §="0§).§'!$§(param1);
            }
            _loc2_++;
         }
         if((§2!K§.getItemByName("MovieClip_Boom") as §="0§).§!!T§() == "End")
         {
            §2!K§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§2!K§.getItemByName("MovieClip_Boom") as §="0§).§!!s§("Start");
         }
         if((§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§!!T§() == "End")
         {
            (§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§%![§ = false;
            (§2!K§.getItemByName("MovieClip_GetMore") as §="0§).§!!s§("End");
         }
         _loc2_ = 1;
         while(_loc2_ < 6)
         {
            if((§2!K§.getItemByName("MovieClip_GetMore" + _loc2_) as §="0§).§!!T§() == "End")
            {
               (§2!K§.getItemByName("MovieClip_GetMore" + _loc2_) as §="0§).§%![§ = false;
               (§2!K§.getItemByName("MovieClip_GetMore" + _loc2_) as §="0§).§!!s§("End");
            }
            _loc2_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8D§.deActivate();
         this.§8!H§.deActivate();
         this.§<!?§.deActivate();
         §8R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!1§);
         if(this.§%E§)
         {
            this.§;!8§(this.§%E§);
            this.§%E§ = null;
         }
         this.§<!?§.deActivate();
         §2!K§.getItemByName("MovieClip_GetMore").setVisibility(false);
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            (§2!K§.getItemByName("MovieClip_GetMore" + _loc1_) as §="0§).setVisibility(false);
            _loc1_++;
         }
         §&2§.§],§.§8Y§();
         this.§<!_§();
         this.§`!x§();
         this.§,"3§();
      }
      
      protected function §'!u§() : void
      {
         § !h§.§+6§.§&F§ = false;
      }
      
      private function §<!_§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§!&§ > §-!$§)
         {
            _loc1_ = Math.round(1000 / this.§!&§ * this.§1"1§);
            _loc2_ = LevelManager.§`-§;
            _loc3_ = (§&2§.§5!k§ as §,"I§).§<"!§();
            §"!e§.§]!8§(_loc1_,_loc2_,§1!D§.§9"I§,_loc3_);
         }
      }
      
      private function §;!!§(param1:Number) : void
      {
         this.§!&§ += param1;
         if(this.§!&§ > 0)
         {
            ++this.§1"1§;
         }
         if(this.§^"0§ != §&2§.§]b§() || this.§-!3§ != §&2§.§&!F§())
         {
            this.§`!x§();
         }
      }
      
      private function §`!x§() : void
      {
         this.§!&§ = §6!2§;
         this.§1"1§ = 0;
         this.§^"0§ = §&2§.§]b§();
         this.§-!3§ = §&2§.§&!F§();
      }
      
      private function §;!8§(param1:§!"&§) : void
      {
         if(param1)
         {
            param1.§7V§();
         }
      }
   }
}
