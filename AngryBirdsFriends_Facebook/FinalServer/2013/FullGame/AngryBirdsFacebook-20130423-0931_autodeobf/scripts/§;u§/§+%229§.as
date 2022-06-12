package §;u§
{
   import §"a§.§!"J§;
   import §%!I§.§6"&§;
   import §%i§.§0!Y§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §,l§.§+I§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §5!Y§.§3"H§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8m§.§&!e§;
   import §8m§.§7!>§;
   import §8m§.§;!`§;
   import §8m§.§;!e§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§"^§;
   import §<"F§.§6h§;
   import §<w§.§8p§;
   import §@!"§.§?l§;
   import §^"F§.§!!I§;
   import §^"F§.§4!2§;
   import §^"F§.§^"K§;
   import §`!6§.§>i§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §+"9§ extends StatePlay implements §4d§
   {
      
      private static const §;!m§:Number = -5 * 1000;
      
      private static const §!"$§:Number = 10 * 1000;
      
      private static const §8"U§:Number = 50;
      
      private static const §@"=§:Number = 0.05;
      
      public static var §%?§:String;
      
      public static var §8!]§:String = "";
      
      public static var §3n§:Number = 0;
      
      public static var § "U§:int = 0;
      
      public static const §!!'§:String = "4000-";
       
      
      private var §@n§:String = "";
      
      private var §]w§:Number = -5000.0;
      
      private var §^-§:int = 0;
      
      private var §<"%§:Number = 0;
      
      private var §`"<§:Number = 0;
      
      private var §4'§:§6!K§;
      
      private var §[v§:Number;
      
      protected var § "1§:Number;
      
      protected var §1m§:Number;
      
      protected var §;"W§:§!!I§;
      
      protected var § =§:Boolean = false;
      
      protected var §`g§:§8p§;
      
      private var §6! §:Boolean = false;
      
      protected var §7!k§:§>i§;
      
      private var §"!s§:Boolean = false;
      
      private var §=!§:Boolean = false;
      
      private var §8U§:Number = 0;
      
      private var §;e§:Number = 0;
      
      private var §]1§:§6h§;
      
      private var §]"?§:int = 3000;
      
      private var §^!T§:Boolean = false;
      
      private var §;!l§:§3"H§;
      
      public function §+"9§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§'!S§) : §4!`§
      {
         return new §!"M§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         this.§`g§ = §%"S§.§%P§.§;8§(LevelManager.§5!T§(LevelManager.§ T§).name,LevelManager.§ T§);
      }
      
      public function get §>"X§() : §!!I§
      {
         return this.§;"W§;
      }
      
      protected function showScoresForLevel() : void
      {
         (§?l§.§ "G§ as §%"S§).§!n§(LevelManager.§ T§,this.§`g§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§;"W§.activate();
         §!!I§.§&P§ = true;
         §!!I§.§["@§ = false;
         §@q§.§#!0§(§3w§.§#!S§,LevelManager.§ T§);
         §@q§.trackPageView(this,this.§8"3§());
         this.fetchScoresForLevel();
         this.showScoresForLevel();
         this.§3"'§();
         this.§;"W§.§@3§ = false;
         this.§;"W§.powerUpsUsable = true;
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         §2"@§.getItemByName("Button_MightyEagle").setVisibility(true);
         if(§!!I§.§&P§ && !§!!I§.§["@§)
         {
            this.§;"W§.§"" §();
         }
         §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§4'§)
         {
            this.§4'§.stop();
            this.§4'§ = null;
         }
         this.§"!s§ = false;
         this.§=!§ = false;
         §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
         this.§ =§ = false;
         §2"@§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
         §2"@§.getItemByName("PowerUpCountME_BG").setVisibility(true);
         this.§;"W§.§-!T§();
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         var _loc1_:* = LevelManager.§,m§ == 6;
         §2"@§.getItemByName("Button_PowerUp6").setVisibility(_loc1_);
         §2"@§.getItemByName("TextField_PowerUpCount6").setVisibility(_loc1_);
         §2"@§.getItemByName("PowerUpCount6_BG").setVisibility(_loc1_);
         §2"@§.getItemByName("Movieclip_TntSliderBackground").setVisibility(_loc1_);
         this.§0f§();
      }
      
      protected function §0f§() : void
      {
         var _loc1_:MovieClip = null;
         this.§2P§();
         if(this.§9"%§.§7"T§ == null)
         {
            return;
         }
         if(this.§9"%§.§7"T§.§+!!§() && LevelManager.§ T§.indexOf(§!!'§) != -1)
         {
            this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§);
            this.§]1§.eggs = this.§9"%§.§7"T§.§5!4§;
            this.§]1§.x = -70;
            this.§]1§.y = -70;
            _loc1_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
            _loc1_.addChild(this.§]1§);
            §%"9§.addEventListener(§"^§.§65§,this.§0X§);
         }
      }
      
      private function §2P§() : void
      {
         var _loc1_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         var _loc2_:MovieClip = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
      }
      
      private function §0X§(param1:§"^§) : void
      {
         var _loc2_:String = param1.§4^§.substr(param1.§4^§.length - 2);
         var _loc3_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         var _loc5_:MovieClip;
         var _loc4_:Class;
         (_loc5_ = new (_loc4_ = §?q§.§ q§("Wonderland_Egg" + _loc2_))()).gotoAndStop(1);
         _loc5_.x = _loc3_.numChildren * _loc5_.width;
         _loc3_.addChild(_loc5_);
      }
      
      protected function §3"'§() : void
      {
         this.§7!k§.levelStarted(this.§`g§,LevelManager.§ T§);
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         super.stopSoundsOnLevelStart();
      }
      
      override public function activate() : void
      {
         this.setPowerupVisibility();
         super.activate();
         this.facebookActivate();
      }
      
      protected function §^!j§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§;!`§ = null;
         var _loc4_:§7!>§ = null;
         if(LevelManager.§ T§.indexOf("3001-") > -1 || LevelManager.§ T§.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(LevelManager.§ T§.indexOf("3001-") > -1)
            {
               this.§@n§ = §;!e§.§["I§;
               if(LevelManager.§ T§.indexOf("3001-1") > -1)
               {
                  _loc1_ = §;!e§.§="1§;
               }
               else if(LevelManager.§ T§.indexOf("3001-2") > -1)
               {
                  _loc1_ = §;!e§.§];§;
                  this.§@n§ = §;!e§.§7!e§;
               }
               else
               {
                  _loc1_ = §;!e§.§="1§;
               }
               if(§8!]§ != getPauseState())
               {
                  §3n§ = 0;
               }
            }
            else if(§ "U§ <= 1)
            {
               this.§@n§ = §;!e§.§<n§;
               _loc1_ = §;!e§.§&"S§;
               _loc2_ = 1;
               §@"M§.removeEventListener(§&!e§.SOUND_COMPLETE,this.§ "H§);
               §@"M§.addEventListener(§&!e§.SOUND_COMPLETE,this.§ "H§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §@"M§.§^!5§(§;!e§.§6" §);
               if(!_loc3_)
               {
                  §@"M§.§set §(§;!e§.§6" §,1,1);
               }
               _loc4_ = §@"M§.§!8§(_loc1_,this.§@n§,3000,§;!e§.§6" §,_loc2_,0.75,§3n§);
            }
         }
      }
      
      protected function §]!c§() : void
      {
         var _loc2_:§7!>§ = null;
         §3n§ = 0;
         var _loc1_:§;!`§ = §@"M§.§^!5§(§;!e§.§6" §);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§ "?§(this.§@n§);
            if(_loc2_ != null)
            {
               §3n§ = _loc2_.position;
            }
            §@"M§.§]!n§(§;!e§.§6" §);
         }
      }
      
      private function § "H§(param1:§&!e§) : void
      {
         if(param1.§+h§ == §;!e§.§<n§ && this.§@n§ == §;!e§.§<n§ && §%"S§.§!C§.§&!u§() != §4!Q§.STATE_NAME)
         {
            §@"M§.removeEventListener(§&!e§.SOUND_COMPLETE,this.§ "H§);
            ++§+"9§.§ "U§;
         }
      }
      
      protected function facebookActivate() : void
      {
         this.§^!j§();
         this.§7!k§.activate();
         if(this.§"!s§)
         {
            §%"9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
         }
         §2"@§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         if(§?l§.§'h§.objects.mSardineCanAdded || §9!h§ || §?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
         {
            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
            §2"@§.getItemByName("Container_MightyEagle").setVisibility(false);
            §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         }
         else
         {
            §2"@§.getItemByName("Container_MightyEagle").setVisibility(true);
         }
         this.§[v§ = 2500;
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§9!z§);
         this.§4"0§();
         if(this.§9"%§.§7"T§.§+!!§() && !this.§9"%§.§7"T§.§+4§())
         {
            this.§]"?§ = 3000;
            this.§^!T§ = false;
            (§%"9§ as §!"M§).§3!W§ = this.§!!d§;
            (§%"9§ as §!"M§).§0!$§ = false;
         }
         §8y§.showTutorials(§2"@§);
      }
      
      private function §!!d§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         this.§]"?§ -= 33;
         if(!this.§^!T§)
         {
            this.§^!T§ = true;
            _loc1_ = §2"@§.getItemByName("eggMovieClip").mClip;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.numChildren)
            {
               (_loc1_.getChildAt(_loc2_) as MovieClip).gotoAndStop(2);
               _loc2_++;
            }
         }
         if(this.§]"?§ <= 0)
         {
            (§%"9§ as §!"M§).§0!$§ = true;
         }
      }
      
      protected function dimPowerUp() : void
      {
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§#"Q§(this.§4'§);
         this.§4'§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§4'§.delay = 2;
         this.§4'§.play();
      }
      
      protected function hidePowerUp(param1:Boolean = true) : void
      {
         this.§ =§ = true;
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§#"Q§(this.§4'§);
         this.§4'§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§4'§.delay = 2;
         }
         else
         {
            this.§4'§.delay = 0.5;
         }
         this.§4'§.play();
         this.§4'§.onComplete = this.§for§;
      }
      
      private function §for§() : void
      {
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
      }
      
      override public function init() : void
      {
         §>!%§ = true;
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPlay[0]);
         this.§7!k§ = new §>i§(§2"@§);
         this.§1m§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
         this.§ "1§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
         this.§;"W§ = new §!!I§(§2"@§);
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         § "+§();
      }
      
      private function §-+§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§`g§.data)
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
      
      private function §?_§(param1:int) : String
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
         if(!AngryBirdsFP11.§#V§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§6! § = true;
               break;
            case Keyboard.K:
               §?l§.§'h§.§4I§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§8y§.isOpen || §9"6§.§,2§())
         {
            return §+d§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§7!k§.run(param1);
         if(!§?l§.§'h§.objects.isPigsAlive())
         {
            this.disablePowerupMenu();
         }
         if(§9!h§)
         {
            this.§%!W§();
            this.§;"W§.§9!P§();
            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            if(!this.§ =§)
            {
               this.hidePowerUp(this.§;"W§.§@3§);
            }
         }
         this.§;"W§.run(param1);
         this.§"@§(param1);
         this.§7"'§(param1);
         if(!§?l§.§'h§.objects.mSardineCanAdded || !§9!h§)
         {
            this.§5!_§(param1);
         }
         if(mNextState == § if§.STATE_NAME || mNextState == §6"&§.STATE_NAME)
         {
            if(!this.§"!s§)
            {
               §%"9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
               this.§"!s§ = true;
            }
            if(_loc2_ || this.§=!§)
            {
               this.§[v§ -= param1;
               if(this.§[v§ < 0 || this.§=!§)
               {
                  if(this.§[!b§())
                  {
                     return §+d§.STATE_STATUS_COMPLETED;
                  }
               }
            }
         }
         else if(mNextState == §>!w§.STATE_NAME)
         {
            if(this.§[!b§())
            {
               return §+d§.STATE_STATUS_COMPLETED;
            }
         }
         else if(mNextState)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         var _loc3_:int = super.run(param1);
         if(!this.§ =§ && !§?l§.§'h§.slingshot.birdsAvailable)
         {
            this.§;"W§.setPowerupActive(§4!2§.§`!4§.§,§,false);
            this.§;"W§.setPowerupActive(§4!2§.§<"O§.§,§,false);
            this.§;"W§.setPowerupActive(§4!2§.§3"$§.§,§,false);
            this.§;"W§.setPowerupActive(§4!2§.§%!U§.§,§,false);
         }
         if(!this.§ =§ && §?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
         {
            this.hidePowerUp(this.§;"W§.§@3§);
            this.§;"W§.§9!P§();
         }
         if(!this.§ =§ && (§?l§.§'h§ as §%6§).§+"3§.§+"#§(§4!2§.§-Y§.§1!#§) && !(§?l§.§'h§ as §%6§).§+"3§.§0-§)
         {
            this.§%!W§();
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      protected function disablePowerupMenu() : void
      {
         var _loc1_:§^"K§ = null;
         for each(_loc1_ in §4!2§.§1!V§)
         {
            if(_loc1_.§9"7§)
            {
               §2"@§.getItemByName(_loc1_.§#;§).setEnabled(false);
            }
         }
         this.§;"W§.§9!P§();
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
      }
      
      private function §%!W§() : void
      {
         this.§;"W§.setPowerupActive(§4!2§.§`!4§.§,§,false);
         this.§;"W§.setPowerupActive(§4!2§.§<"O§.§,§,false);
         this.§;"W§.setPowerupActive(§4!2§.§3"$§.§,§,false);
         this.§;"W§.setPowerupActive(§4!2§.§%!U§.§,§,false);
         this.§;"W§.setPowerupActive(§4!2§.§8"1§.§,§,false);
      }
      
      private function §"@§(param1:Number) : void
      {
         if(this.§8U§)
         {
            this.§;e§ += param1;
            if(this.§;e§ > §8"U§)
            {
               §%"9§.doUserZoom(true,this.§8U§);
               this.§;e§ = 0;
            }
         }
      }
      
      protected function §[!b§() : Boolean
      {
         if((§?l§.§'h§ as §%6§).§+"3§.§each § && !this.§;!l§)
         {
            this.§;!l§ = §9"6§.§'!o§();
            (§?l§.§'h§ as §%6§).§+"3§.addEventListener(Event.COMPLETE,this.§`"'§);
         }
         return !(§?l§.§'h§ as §%6§).§+"3§.§each §;
      }
      
      private function §`"'§(param1:Event) : void
      {
         (§?l§.§'h§ as §%6§).§+"3§.removeEventListener(Event.COMPLETE,this.§`"'§);
         this.§;!l§.close();
         this.§;!l§ = null;
      }
      
      private function §null §(param1:MouseEvent) : void
      {
         this.§=!§ = true;
         §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§ T§;
         var _loc2_:int = §%"9§.getScore();
         §@q§.§#!0§(§3w§.§>!P§,_loc1_,_loc2_);
         var _loc3_:Array = (§?l§.§'h§ as §%6§).§'!>§();
         var _loc4_:String = JSON.stringify(_loc3_);
         §@q§.§'!!§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            if(§?l§.§'h§.slingshot.mDragging)
            {
               §?l§.§'h§.slingshot.shoot();
               §%"9§.changeGameState(§4!`§.§3"L§);
               return;
            }
            §?l§.§'h§.camera.stopDragging();
         }
         switch(param2)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               §+"9§.§8!]§ = getPauseState();
               mNextState = getPauseState();
               (§?l§.§'h§ as §%6§).§+"3§.§]W§();
               break;
            case "RESTART_LEVEL":
               §+"9§.§8!]§ = STATE_NAME;
               §-!v§.§^!$§();
               mNextState = §-!v§.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               §8y§.§2!C§();
               break;
            case "MIGHTY_EAGLE":
               if((§?l§.§'h§ as §%6§).§+"3§.useMightyEagle())
               {
                  this.useMightyEagle();
               }
               break;
            case "POWERUP_OPEN":
               if(!this.§;"W§.§@3§)
               {
                  §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               this.§;"W§.§"" §();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
            case "POWERUP5":
               this.§;"W§.powerUpsUsable = this.§;"W§.usePowerup(param2);
               if(!this.§;"W§.powerUpsUsable)
               {
                  §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.dimPowerUp();
               }
               break;
            case "POWERUPOVER1":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§`!4§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore1") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore1") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUPOVER2":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§<"O§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore2") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore2") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUPOVER3":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§3"$§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore3") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore3") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUPOVER4":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§8"1§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore4") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore4") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUPOVER5":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§%!U§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore5").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore5") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore5") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUP6":
               this.§;"W§.powerUpsUsable = this.§;"W§.usePowerup(param2);
               if(!this.§;"W§.powerUpsUsable)
               {
                  §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.dimPowerUp();
               }
               break;
            case "POWERUPOVER6":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§!! §.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore6").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore6") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore6") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUPOUT6":
               §2"@§.getItemByName("MovieClip_GetMore6").setVisibility(false);
               break;
            case "MIGHTYEAGLEOVER":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§!!a§("Start");
               }
               break;
            case "EXTRABIRD":
               this.§;"W§.powerUpsUsable = this.§;"W§.usePowerup(param2);
               if(!this.§;"W§.powerUpsUsable)
               {
                  §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.dimPowerUp();
               }
               break;
            case "EXTRABIRDOVER":
               if((_loc4_ = §#!,§.§&"5§.§]![§(§4!2§.§-Y§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMoreVH").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMoreVH") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMoreVH") as §^n§).§!!a§("Start");
               }
               break;
            case "MIGHTYEAGLEOUT":
               §2"@§.getItemByName("MovieClip_GetMore").setVisibility(false);
               break;
            case "POWERUPOUT1":
               §2"@§.getItemByName("MovieClip_GetMore1").setVisibility(false);
               break;
            case "POWERUPOUT2":
               §2"@§.getItemByName("MovieClip_GetMore2").setVisibility(false);
               break;
            case "POWERUPOUT3":
               §2"@§.getItemByName("MovieClip_GetMore3").setVisibility(false);
               break;
            case "POWERUPOUT4":
               §2"@§.getItemByName("MovieClip_GetMore4").setVisibility(false);
               break;
            case "POWERUPOUT5":
               §2"@§.getItemByName("MovieClip_GetMore5").setVisibility(false);
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §8y§.§2!C§();
               break;
            case "ZOOM_IN":
               this.§8U§ = §@"=§;
               this.§;e§ = §8"U§;
               break;
            case "ZOOM_OUT":
               this.§8U§ = -§@"=§;
               this.§;e§ = §8"U§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§8U§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§8U§ = 0;
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_BASIC";
         if(LevelManager.§,m§ == 6)
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §8y§.§7"?§(§2"@§,_loc1_,true);
         §8y§.showTutorials(§2"@§,true);
      }
      
      override protected function useMightyEagle() : void
      {
         super.useMightyEagle();
         this.§7!k§.§+;§ = true;
         §8y§.showTutorials(§2"@§);
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§7!k§.§+;§ = false;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = §%"9§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§ T§);
         var _loc4_:int;
         if((_loc4_ = §4">§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§4">§.getValue() + param1 * §'"Q§);
            §4">§.assign(_loc4_);
         }
         if(this.§6! §)
         {
            §2"@§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§7!k§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      protected function §5!_§(param1:Number) : void
      {
         if((§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ == true)
         {
            (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§=;§(param1);
         }
         var _loc2_:int = 1;
         while(_loc2_ < 7)
         {
            if((§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§6",§ == true)
            {
               (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§=;§(param1);
            }
            _loc2_++;
         }
         if((§2"@§.getItemByName("MovieClip_Boom") as §^n§).§[!z§() == "End")
         {
            §2"@§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§2"@§.getItemByName("MovieClip_Boom") as §^n§).§!!a§("Start");
         }
         if((§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§[!z§() == "End")
         {
            (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ = false;
            (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§!!a§("End");
         }
         _loc2_ = 1;
         while(_loc2_ < 7)
         {
            if((§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§[!z§() == "End")
            {
               (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§6",§ = false;
               (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§!!a§("End");
            }
            _loc2_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8y§.deActivate();
         this.§7!k§.deActivate();
         this.§;"W§.deActivate();
         §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
         if(this.§4'§)
         {
            this.§#"Q§(this.§4'§);
            this.§4'§ = null;
         }
         this.§;"W§.deActivate();
         §2"@§.getItemByName("MovieClip_GetMore").setVisibility(false);
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            (§2"@§.getItemByName("MovieClip_GetMore" + _loc1_) as §^n§).setVisibility(false);
            _loc1_++;
         }
         §?l§.§'h§.§6`§();
         this.§5"!§();
         this.§4"0§();
         if(this.§9"%§.§7"T§ && this.§9"%§.§7"T§.§+!!§())
         {
            (§%"9§ as §!"M§).removeEventListener(§"^§.§65§,this.§0X§);
         }
         this.§]!c§();
      }
      
      protected function setPowerupVisibility() : void
      {
         §4!2§.§%!U§.§ !T§ = false;
      }
      
      private function §5"!§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§]w§ > §!"$§)
         {
            _loc1_ = Math.round(1000 / this.§]w§ * this.§^-§);
            _loc2_ = LevelManager.§ T§;
            _loc3_ = (§?l§.§ "G§ as §%"S§).§4!'§();
            §@q§.§;S§(_loc1_,_loc2_,§!"J§.§!X§,_loc3_);
         }
      }
      
      private function §7"'§(param1:Number) : void
      {
         this.§]w§ += param1;
         if(this.§]w§ > 0)
         {
            ++this.§^-§;
         }
         if(this.§<"%§ != §?l§.§""E§() || this.§`"<§ != §?l§.§5&§())
         {
            this.§4"0§();
         }
      }
      
      private function §4"0§() : void
      {
         this.§]w§ = §;!m§;
         this.§^-§ = 0;
         this.§<"%§ = §?l§.§""E§();
         this.§`"<§ = §?l§.§5&§();
      }
      
      private function §#"Q§(param1:§6!K§) : void
      {
         if(param1)
         {
            param1.§7!d§();
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§%"$§;
      }
      
      public function §8"3§() : String
      {
         return LevelManager.§ T§;
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
