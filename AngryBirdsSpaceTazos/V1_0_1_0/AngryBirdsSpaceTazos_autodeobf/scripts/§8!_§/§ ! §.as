package §8!_§
{
   import § !Y§.§%Y§;
   import § !Y§.§&$§;
   import § !Y§.§="6§;
   import § M§.§!V§;
   import § M§.§]o§;
   import §!X§.§<!3§;
   import §!X§.§[1§;
   import §"!&§.§!"7§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §'4§.§"!Q§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §3C§.§-"E§;
   import §3C§.§9!d§;
   import §3C§.§=!v§;
   import §3C§.§["1§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupClosedEvent;
   import §5Q§.§^!e§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!0§.§%!P§;
   import §7!0§.§3!d§;
   import §7!B§.§;!E§;
   import §7!B§.§@!^§;
   import §77§.§@_§;
   import §=r§.§7!r§;
   import §=r§.§=!<§;
   import §=u§.§3!m§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class § ! § extends §="%§
   {
      
      private static const §'X§:Number = 50;
      
      private static const §`R§:Number = 0.05;
      
      private static const §<@§:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const §5I§:Number = -10 * 1000;
      
      private static const §8;§:Number = 15 * 1000;
       
      
      private var §^#§:Boolean = false;
      
      private var §!!=§:Number = -10000.0;
      
      private var §=+§:int = 0;
      
      private var §4y§:Number = 0;
      
      private var §,"!§:Number = 0;
      
      private var §;!q§:§;!E§;
      
      private var §>!J§:Boolean = false;
      
      private var §=-§:§9!d§;
      
      private var §3"4§:§!"7§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      private var §9!N§:§-"E§;
      
      private var §=!1§:Boolean;
      
      private var § y§:Boolean;
      
      public function § ! §(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:§8"F§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§3"4§ = param4 as §!"7§;
      }
      
      override protected function init() : void
      {
         this.§!"&§ = new §&"$§(0,0,0,1);
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelPlay[0]);
         §8!A§.container.mClip.addChild(this.§!"&§);
         this.§;!q§ = new §;!E§(this);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§+z§ = false;
         this.§&"§();
         §="6§.§^!U§(§%Y§.§!t§,§6u§.currentLevel);
         (§ !g§.§;!'§ as §`Y§).§0h§.§^!U§(§%!P§.§-6§);
         this.§&I§();
         this.§=!1§ = true;
      }
      
      private function §&I§() : void
      {
         §8!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(false);
         §8!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(false);
         §8!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(false);
         switch(§6u§.currentLevel)
         {
            case "1-1":
            case "2-1":
            case "3-1":
               §8!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(true);
               break;
            case "1-2":
            case "2-2":
            case "3-2":
               §8!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(true);
               break;
            case "1-3":
            case "2-3":
            case "3-3":
               §8!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(true);
         }
      }
      
      protected function §&"§() : void
      {
         if(this.§!"&§ && !this.§+z§)
         {
            this.§!"&§.mouseEnabled = true;
            this.§+z§ = true;
            this.§!"&§.§24§(1);
            this.§!"&§.§7t§(0,0.25);
            this.§!"&§.addEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§!"&§.mouseEnabled = false;
         this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
         §8!A§.container.mClip.removeChild(this.§!"&§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!A§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§4!P§();
         §&$§.§[!1§.updateTextFields(§8!A§.container,"StatePlay");
         this.§=!H§();
         this.§%!^§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(false);
         (§ !g§.§;!'§ as §`Y§).§&,§.§,A§(false);
         §7!r§.§[!1§.addEventListener(§=!<§.§9E§,this.§4!9§);
         §7!r§.§[!1§.addEventListener(§=!<§.§="9§,this.§-t§);
         §7!r§.§[!1§.§-!F§();
         this.§9!6§();
         this.§@!h§();
         this.§ y§ = false;
      }
      
      protected function §@!h§() : void
      {
         var _loc1_:§<!3§ = § !g§.§;!'§.§@"8§;
         var _loc2_:Vector.<String> = _loc1_.§+!Q§.getTutorialNamesForMapping(§[1§.§'!9§);
         _loc1_.§#!s§(_loc2_,true,true,true,false,null,true,false);
      }
      
      override public function deActivate() : void
      {
         §8!A§.container.mClip.addChild(this.§!"&§);
         super.deActivate();
         §7!r§.§[!1§.removeEventListener(§=!<§.§9E§,this.§4!9§);
         this.§;!q§.§6[§();
         this.§ y§ = false;
         if(this.§=-§ && this.§=-§.hasEventListener(§3!d§.§+T§))
         {
            this.§=-§.removeEventListener(§3!d§.§+T§,this.§1" §);
         }
         this.§#!k§();
         this.§4!P§();
         (§ !g§.§;!'§ as §`Y§).§0h§.§9L§();
      }
      
      private function §#!k§() : void
      {
         var _loc1_:int = 0;
         if(!this.§^#§)
         {
            if(this.§!!=§ > §8;§)
            {
               this.§^#§ = true;
               _loc1_ = Math.round(1000 / this.§!!=§ * this.§=+§);
               if(§^!e§.§use§)
               {
                  §="6§.§^!U§(§%Y§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §="6§.§^!U§(§%Y§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §4!9§(param1:Event) : void
      {
         var _loc2_:int = §7!r§.§[!1§.§2"2§();
         var _loc3_:String = _loc2_ <= §<@§ ? _loc2_.toString() : §<@§ + "+";
         §8!A§.setText(_loc3_,"TextField_PowerupCounter");
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§9q§.§>!L§.slingshot.mDragging)
            {
               §9q§.§>!L§.slingshot.shoot();
               §!K§.changeGameState(§]o§.§&7§);
               return;
            }
            §9q§.§>!L§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§?7§(§6u§.currentLevelNumericName);
               § !g§.§;!'§.§>";§.openPopup(new §=!v§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§+!§();
               break;
            case "POWERUP_USE":
               if((_loc5_ = §7!r§.§[!1§.§2"2§()) > 0 || this.§>!J§)
               {
                  this.§ y§ = true;
                  this.§"!8§();
               }
               else
               {
                  if(this.§=-§ && this.§=-§.hasEventListener(§3!d§.§+T§))
                  {
                     this.§=-§.removeEventListener(§3!d§.§+T§,this.§1" §);
                  }
                  this.§=-§ = new §9!d§();
                  (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§=-§);
                  this.§=-§.addEventListener(§3!d§.§+T§,this.§1" §);
               }
               break;
            case "ZOOM_IN":
               this.§4y§ = §`R§;
               this.§,"!§ = §'X§;
               break;
            case "ZOOM_OUT":
               this.§4y§ = -§`R§;
               this.§,"!§ = §'X§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§4y§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§4y§ = 0;
         }
      }
      
      private function §+!§() : void
      {
         this.§ y§ = false;
         §?!#§.§90§();
         §8!^§(§?!#§.STATE_NAME);
         this.§;!q§.§1!N§();
      }
      
      private function §1" §(param1:Event) : void
      {
         this.§=-§.close();
         this.§9!N§ = new §-"E§();
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§9!N§,false,false,true,true);
         this.§9!N§.addEventListener(PopupClosedEvent.§`T§,this.§6""§);
      }
      
      private function §"!8§() : void
      {
         §7!r§.§[!1§.addEventListener(§=!<§.§3!7§,this.§6"G§);
         §7!r§.§[!1§.addEventListener(§=!<§.§7k§,this.§^f§);
         §7!r§.§[!1§.§="5§();
         this.§%!^§(false);
      }
      
      private function §="5§() : void
      {
         if(this.§ y§)
         {
            (§9q§.§>!L§.slingshot as §"!Q§).§ "C§();
            this.§@!h§();
         }
         this.§ y§ = false;
      }
      
      private function §6""§(param1:Event) : void
      {
         this.§ y§ = true;
         this.§"!8§();
         this.§9!N§.removeEventListener(PopupClosedEvent.§`T§,this.§6""§);
      }
      
      protected function §9!6§() : void
      {
         var _loc1_:HighscoreSidebar = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§;
         _loc1_.§^!d§ = §6u§.currentLevel;
         _loc1_.changeState(HighscoreSidebar.§>!@§);
      }
      
      override protected function levelCompleted() : void
      {
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §["1§());
         this.§;!q§.levelCompleted(this.§5f§());
         §="6§.§^!U§(§%Y§.§49§,§6u§.currentLevel,this.§@%§.getScore(10));
      }
      
      override protected function getGameLogicController(param1:§^g§) : §]o§
      {
         return new §!V§(param1,§6u§);
      }
      
      private function §5f§() : int
      {
         var _loc4_:§3,§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:int = §@!^§.§<k§(this.§=!+§.currentLevel).score;
         var _loc3_:int = this.§@%§.getScore(10);
         if(_loc3_ > _loc2_)
         {
            _loc5_ = (_loc4_ = this.§=!+§.getEpisode(this.§=!+§.currentEpisode)).§1!B§(this.§=!+§.currentLevel).scoreGold;
            _loc6_ = _loc4_.§1!B§(this.§=!+§.currentLevel).scoreSilver;
            if(_loc2_ == 0 && _loc3_ > 0)
            {
               _loc1_++;
            }
            if((_loc2_ < _loc6_ || _loc2_ == 0 && _loc6_ == 0) && _loc3_ >= _loc6_)
            {
               _loc1_++;
            }
            if((_loc2_ < _loc5_ || _loc2_ == 0 && _loc5_ == 0) && _loc3_ >= _loc5_)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function §%!^§(param1:Boolean = true) : void
      {
         var _loc2_:§@_§ = §8!A§.getItemByName("Button_PowerUp") as §@_§;
         if(param1)
         {
            _loc2_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §#=§(param1:Number) : void
      {
         this.§!!=§ += param1;
         if(this.§!!=§ > 0)
         {
            ++this.§=+§;
         }
      }
      
      private function §4!P§() : void
      {
         this.§!!=§ = §5I§;
         this.§=+§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§=!1§ && !§9q§.isPaused)
         {
            this.§=!1§ = false;
            §<!O§.§'N§();
            this.§3"4§.soundManager.playSound("level_start_military");
            §9q§.§>!L§.background.playAmbientSound();
         }
         this.§#=§(param1);
         if(!§9q§.isPaused)
         {
            §3!m§.§[!1§.update(param1);
         }
         this.§=!H§();
         this.§^!J§(param1);
         if(!§9q§.§>!L§.objects.isPigsAlive())
         {
            this.§%!^§(false);
         }
         if(nextState.length > 0 && this.§-! §())
         {
            this.§;!q§.§1!N§();
         }
         else if(nextState == §8!H§.STATE_NAME)
         {
            this.§;!q§.§1!N§();
         }
      }
      
      private function §=!H§() : void
      {
         var _loc1_:int = §!K§.getScore(10);
         §8!A§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(§6u§.currentLevel);
         §8!A§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§-! §();
      }
      
      protected function §-! §() : Boolean
      {
         return this.§;!q§.§0"#§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §1!i§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §'u§.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §&$§.§[!1§.updateTextFields(§8!A§.container,"StatePlay");
      }
      
      private function §^!J§(param1:Number) : void
      {
         if(this.§4y§)
         {
            this.§,"!§ += param1;
            if(this.§,"!§ > §'X§)
            {
               §!K§.doUserZoom(this.§4y§ > 0);
               this.§,"!§ = 0;
            }
         }
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function get §@%§() : §]o§
      {
         return §!K§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§`Y§.§1!]§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§ !g§.§;!'§.§>";§.§^",§())
                  {
                     §9q§.§>!L§.§[Q§();
                  }
                  break;
               case Keyboard.P:
                  if(!§ !g§.§;!'§.§>";§.§^",§())
                  {
                     this.§>!J§ = true;
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§ !g§.§;!'§.§>";§.§^",§())
               {
                  this.§+!§();
                  break;
               }
         }
         §9q§.§&!$§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §9q§.§&!$§.keyUp(param1);
      }
      
      private function §6"G§(param1:Event) : void
      {
         this.§="5§();
         §7!r§.§[!1§.removeEventListener(§=!<§.§3!7§,this.§6"G§);
         §7!r§.§[!1§.removeEventListener(§=!<§.§7k§,this.§^f§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(false);
      }
      
      private function §^f§(param1:Event) : void
      {
         §7!r§.§[!1§.removeEventListener(§=!<§.§3!7§,this.§6"G§);
         §7!r§.§[!1§.removeEventListener(§=!<§.§7k§,this.§^f§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(false);
      }
      
      private function §-t§(param1:Event) : void
      {
      }
   }
}
