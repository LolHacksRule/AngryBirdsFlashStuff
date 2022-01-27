package §7!c§
{
   import § X§.§38§;
   import § X§.§7q§;
   import §!i§.§3!A§;
   import §"!>§.§<!o§;
   import §'#§.§9Y§;
   import §'#§.§9m§;
   import §'#§.§^4§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §1!]§.§"!C§;
   import §1!]§.§,9§;
   import §1!]§.§2"B§;
   import §1!]§.§@R§;
   import §3!4§.§ ![§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §4!x§.§&!=§;
   import §4!x§.§0!?§;
   import §6"6§.§40§;
   import §6"6§.§;A§;
   import §7!s§.HighscoreSidebar;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §;!0§.§]§;
   import §;"=§.§6!<§;
   import §;"=§.§<!8§;
   import §<"9§.§9!_§;
   import §<"9§.§@x§;
   import §<§.§0B§;
   import §?!<§.§'!1§;
   import §?!<§.§7!r§;
   import §]!M§.PopupClosedEvent;
   import §]!O§.ColorFadeLayerEvent;
   import §]!O§.§^!j§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import §package§.§"3§;
   import §package§.§<@§;
   
   public class static extends §3!q§
   {
      
      private static const §%!;§:Number = 50;
      
      private static const §`A§:Number = 0.05;
      
      private static const §@s§:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const §&b§:Number = -10 * 1000;
      
      private static const §9!2§:Number = 15 * 1000;
       
      
      private var §3"6§:Boolean = false;
      
      private var §#K§:Number = -10000.0;
      
      private var §9!o§:int = 0;
      
      private var §!!d§:Number = 0;
      
      private var §["F§:Number = 0;
      
      private var §=![§:§;A§;
      
      private var §&!3§:Boolean = false;
      
      private var §!!z§:§,9§;
      
      private var §@1§:§<!8§;
      
      protected var §=!#§:§^!j§ = null;
      
      private var § !w§:Boolean;
      
      private var §2!e§:§@R§;
      
      private var §'"<§:Boolean;
      
      private var §`"0§:Boolean;
      
      public function static(param1:§#2§, param2:§<!o§, param3:Boolean, param4:§6!<§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§@1§ = param4 as §<!8§;
      }
      
      override protected function init() : void
      {
         this.§=!#§ = new §^!j§(0,0,0,1);
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelPlay[0]);
         §4§.container.mClip.addChild(this.§=!#§);
         this.§=![§ = new §;A§(this);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§ !w§ = false;
         this.§^j§();
         §9Y§.§6x§(§9m§.§@_§,§,W§.currentLevel);
         (§&!h§.§ u§ as §^"=§).§`!=§.§6x§(§0!?§.§9!4§);
         this.§!!C§();
         this.§'"<§ = true;
      }
      
      private function §!!C§() : void
      {
         §4§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(false);
         §4§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(false);
         §4§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(false);
         switch(§,W§.currentLevel)
         {
            case "1-1":
            case "2-1":
            case "3-1":
               §4§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(true);
               break;
            case "1-2":
            case "2-2":
            case "3-2":
               §4§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(true);
               break;
            case "1-3":
            case "2-3":
            case "3-3":
               §4§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(true);
         }
      }
      
      protected function §^j§() : void
      {
         if(this.§=!#§ && !this.§ !w§)
         {
            this.§=!#§.mouseEnabled = true;
            this.§ !w§ = true;
            this.§=!#§.§8!j§(1);
            this.§=!#§.§#A§(0,0.25);
            this.§=!#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§=!#§.mouseEnabled = false;
         this.§=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.onFadeComplete);
         §4§.container.mClip.removeChild(this.§=!#§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§,!`§();
         §^4§.§<"B§.updateTextFields(§4§.container,"StatePlay");
         this.§?"§();
         this.§>'§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(false);
         (§&!h§.§ u§ as §^"=§).§?P§.§!!6§(false);
         §<@§.§<"B§.addEventListener(§"3§.§=!S§,this.§]2§);
         §<@§.§<"B§.addEventListener(§"3§.§'!2§,this.§ "'§);
         §<@§.§<"B§.§9g§();
         this.§-!@§();
         this.§?!M§();
         this.§`"0§ = false;
      }
      
      protected function §?!M§() : void
      {
         var _loc1_:§7q§ = §&!h§.§ u§.§+"5§;
         var _loc2_:Vector.<String> = _loc1_.§`Q§.getTutorialNamesForMapping(§38§.§!J§);
         _loc1_.§^"9§(_loc2_,true,true,true,false,null,true,false);
      }
      
      override public function deActivate() : void
      {
         §4§.container.mClip.addChild(this.§=!#§);
         super.deActivate();
         §<@§.§<"B§.removeEventListener(§"3§.§=!S§,this.§]2§);
         this.§=![§.§]z§();
         this.§`"0§ = false;
         if(this.§!!z§ && this.§!!z§.hasEventListener(§&!=§.§^!H§))
         {
            this.§!!z§.removeEventListener(§&!=§.§^!H§,this.§&"0§);
         }
         this.§=!T§();
         this.§,!`§();
         (§&!h§.§ u§ as §^"=§).§`!=§.§9!]§();
      }
      
      private function §=!T§() : void
      {
         var _loc1_:int = 0;
         if(!this.§3"6§)
         {
            if(this.§#K§ > §9!2§)
            {
               this.§3"6§ = true;
               _loc1_ = Math.round(1000 / this.§#K§ * this.§9!o§);
               if(§ ![§.§>n§)
               {
                  §9Y§.§6x§(§9m§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §9Y§.§6x§(§9m§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §]2§(param1:Event) : void
      {
         var _loc2_:int = §<@§.§<"B§.§=<§();
         var _loc3_:String = _loc2_ <= §@s§ ? _loc2_.toString() : §@s§ + "+";
         §4§.setText(_loc3_,"TextField_PowerupCounter");
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§;0§.§@!^§.slingshot.mDragging)
            {
               §;0§.§@!^§.slingshot.shoot();
               §`S§.changeGameState(§9!_§.§%! §);
               return;
            }
            §;0§.§@!^§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§^n§(§,W§.currentLevelNumericName);
               §&!h§.§ u§.§-"F§.openPopup(new §2"B§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§4"<§();
               break;
            case "POWERUP_USE":
               if((_loc5_ = §<@§.§<"B§.§=<§()) > 0 || this.§&!3§)
               {
                  this.§`"0§ = true;
                  this.§4!q§();
               }
               else
               {
                  if(this.§!!z§ && this.§!!z§.hasEventListener(§&!=§.§^!H§))
                  {
                     this.§!!z§.removeEventListener(§&!=§.§^!H§,this.§&"0§);
                  }
                  this.§!!z§ = new §,9§();
                  (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(this.§!!z§);
                  this.§!!z§.addEventListener(§&!=§.§^!H§,this.§&"0§);
               }
               break;
            case "ZOOM_IN":
               this.§!!d§ = §`A§;
               this.§["F§ = §%!;§;
               break;
            case "ZOOM_OUT":
               this.§!!d§ = -§`A§;
               this.§["F§ = §%!;§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§!!d§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§!!d§ = 0;
         }
      }
      
      private function §4"<§() : void
      {
         this.§`"0§ = false;
         §"!H§.§?"?§();
         §2g§(§"!H§.STATE_NAME);
         this.§=![§.§!V§();
      }
      
      private function §&"0§(param1:Event) : void
      {
         this.§!!z§.close();
         this.§2!e§ = new §@R§();
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(this.§2!e§,false,false,true,true);
         this.§2!e§.addEventListener(PopupClosedEvent.§2!J§,this.§ Q§);
      }
      
      private function §4!q§() : void
      {
         §<@§.§<"B§.addEventListener(§"3§.§-$§,this.§,!q§);
         §<@§.§<"B§.addEventListener(§"3§.§!]§,this.§8F§);
         §<@§.§<"B§.§<s§();
         this.§>'§(false);
      }
      
      private function §<s§() : void
      {
         if(this.§`"0§)
         {
            (§;0§.§@!^§.slingshot as §7!r§).§!;§();
            this.§?!M§();
         }
         this.§`"0§ = false;
      }
      
      private function § Q§(param1:Event) : void
      {
         this.§`"0§ = true;
         this.§4!q§();
         this.§2!e§.removeEventListener(PopupClosedEvent.§2!J§,this.§ Q§);
      }
      
      protected function §-!@§() : void
      {
         var _loc1_:HighscoreSidebar = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§;
         _loc1_.§6"'§ = §,W§.currentLevel;
         _loc1_.changeState(HighscoreSidebar.§`!d§);
      }
      
      override protected function levelCompleted() : void
      {
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §"!C§());
         this.§=![§.levelCompleted(this.§'!=§());
         §9Y§.§6x§(§9m§.§<!J§,§,W§.currentLevel,this.§=1§.getScore(10));
      }
      
      override protected function getGameLogicController(param1:§'!1§) : §9!_§
      {
         return new §@x§(param1,§,W§);
      }
      
      private function §'!=§() : int
      {
         var _loc4_:§]§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:int = §40§.§6o§(this.§>F§.currentLevel).score;
         var _loc3_:int = this.§=1§.getScore(10);
         if(_loc3_ > _loc2_)
         {
            _loc5_ = (_loc4_ = this.§>F§.getEpisode(this.§>F§.currentEpisode)).§7!-§(this.§>F§.currentLevel).scoreGold;
            _loc6_ = _loc4_.§7!-§(this.§>F§.currentLevel).scoreSilver;
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
      
      private function §>'§(param1:Boolean = true) : void
      {
         var _loc2_:§3!A§ = §4§.getItemByName("Button_PowerUp") as §3!A§;
         if(param1)
         {
            _loc2_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§>r§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §^!t§(param1:Number) : void
      {
         this.§#K§ += param1;
         if(this.§#K§ > 0)
         {
            ++this.§9!o§;
         }
      }
      
      private function §,!`§() : void
      {
         this.§#K§ = §&b§;
         this.§9!o§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§'"<§ && !§;0§.isPaused)
         {
            this.§'"<§ = false;
            §"!S§.§#9§();
            this.§@1§.soundManager.playSound("level_start_military");
            §;0§.§@!^§.background.playAmbientSound();
         }
         this.§^!t§(param1);
         if(!§;0§.isPaused)
         {
            §0B§.§<"B§.update(param1);
         }
         this.§?"§();
         this.§6g§(param1);
         if(!§;0§.§@!^§.objects.isPigsAlive())
         {
            this.§>'§(false);
         }
         if(nextState.length > 0 && this.§&"A§())
         {
            this.§=![§.§!V§();
         }
         else if(nextState == §0!Q§.STATE_NAME)
         {
            this.§=![§.§!V§();
         }
      }
      
      private function §?"§() : void
      {
         var _loc1_:int = §`S§.getScore(10);
         §4§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§&!h§.§ u§ as §^"=§).§^!7§.getScoreForLevel(§,W§.currentLevel);
         §4§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§&"A§();
      }
      
      protected function §&"A§() : Boolean
      {
         return this.§=![§.§9!V§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §[!>§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §,l§.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §^4§.§<"B§.updateTextFields(§4§.container,"StatePlay");
      }
      
      private function §6g§(param1:Number) : void
      {
         if(this.§!!d§)
         {
            this.§["F§ += param1;
            if(this.§["F§ > §%!;§)
            {
               §`S§.doUserZoom(this.§!!d§ > 0);
               this.§["F§ = 0;
            }
         }
      }
      
      public function get §>F§() : §#2§
      {
         return §,W§;
      }
      
      public function get §=1§() : §9!_§
      {
         return §`S§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§^"=§.§?A§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§&!h§.§ u§.§-"F§.§^X§())
                  {
                     §;0§.§@!^§.§;p§();
                  }
                  break;
               case Keyboard.P:
                  if(!§&!h§.§ u§.§-"F§.§^X§())
                  {
                     this.§&!3§ = true;
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§&!h§.§ u§.§-"F§.§^X§())
               {
                  this.§4"<§();
                  break;
               }
         }
         §;0§.§%O§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §;0§.§%O§.keyUp(param1);
      }
      
      private function §,!q§(param1:Event) : void
      {
         this.§<s§();
         §<@§.§<"B§.removeEventListener(§"3§.§-$§,this.§,!q§);
         §<@§.§<"B§.removeEventListener(§"3§.§!]§,this.§8F§);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(false);
      }
      
      private function §8F§(param1:Event) : void
      {
         §<@§.§<"B§.removeEventListener(§"3§.§-$§,this.§,!q§);
         §<@§.§<"B§.removeEventListener(§"3§.§!]§,this.§8F§);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(false);
      }
      
      private function § "'§(param1:Event) : void
      {
      }
   }
}
