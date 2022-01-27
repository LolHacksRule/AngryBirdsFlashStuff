package §=" §
{
   import § !K§.§+§;
   import § !K§.§=!$§;
   import §!!r§.§6!b§;
   import §!!r§.§<l§;
   import §!"4§.§1w§;
   import §!"4§.§;";§;
   import §'!n§.§1!x§;
   import §'!n§.§3"7§;
   import §'!n§.§[!I§;
   import §+"C§.§%a§;
   import §+"C§.§'Z§;
   import §+"C§.§25§;
   import §+"C§.§<!-§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §1!C§.PopupClosedEvent;
   import §1f§.§9H§;
   import §3R§.§&"$§;
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import §5s§.§"m§;
   import §5s§.§'!A§;
   import §6!M§.§1",§;
   import §6!M§.§3Y§;
   import §6"A§.HighscoreSidebar;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!L§.ColorFadeLayerEvent;
   import §9!U§.§>C§;
   import §>!X§.§1i§;
   import §>!X§.§6!Q§;
   import §>"!§.§@!9§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class § "G§ extends §-4§
   {
      
      private static const §`",§:Number = 50;
      
      private static const §>!M§:Number = 0.05;
      
      private static const §?j§:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const §<!$§:Number = -10 * 1000;
      
      private static const §2!D§:Number = 15 * 1000;
       
      
      private var §[!v§:Boolean = false;
      
      private var §>!o§:Number = -10000.0;
      
      private var §1"A§:int = 0;
      
      private var §try §:Number = 0;
      
      private var §1";§:Number = 0;
      
      private var §;!%§:§1w§;
      
      private var §=!E§:Boolean = false;
      
      private var §<!?§:§'Z§;
      
      private var §2!?§:§1",§;
      
      protected var §@!3§:§8u§ = null;
      
      private var §"8§:Boolean;
      
      private var §`!W§:§<!-§;
      
      private var §?F§:Boolean;
      
      private var §8!U§:Boolean;
      
      public function § "G§(param1:§,!j§, param2:§;l§, param3:Boolean, param4:§3Y§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§2!?§ = param4 as §1",§;
      }
      
      override protected function init() : void
      {
         this.§@!3§ = new §8u§(0,0,0,1);
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelPlay[0]);
         §6!J§.container.mClip.addChild(this.§@!3§);
         this.§;!%§ = new §1w§(this);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§"8§ = false;
         this.§'H§();
         §1!x§.§6"6§(§3"7§.§%6§,§]m§.currentLevel);
         (§&"<§.§<!7§ as §["!§).§-!8§.§6"6§(§6!b§.§#"6§);
         this.§&V§();
         this.§?F§ = true;
      }
      
      private function §&V§() : void
      {
         §6!J§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(false);
         §6!J§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(false);
         §6!J§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(false);
         switch(§]m§.currentLevel)
         {
            case "1-1":
            case "2-1":
            case "3-1":
               §6!J§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(true);
               break;
            case "1-2":
            case "2-2":
            case "3-2":
               §6!J§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(true);
               break;
            case "1-3":
            case "2-3":
            case "3-3":
               §6!J§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(true);
         }
      }
      
      protected function §'H§() : void
      {
         if(this.§@!3§ && !this.§"8§)
         {
            this.§@!3§.mouseEnabled = true;
            this.§"8§ = true;
            this.§@!3§.§"!i§(1);
            this.§@!3§.§<"&§(0,0.25);
            this.§@!3§.addEventListener(ColorFadeLayerEvent.§+[§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§@!3§.mouseEnabled = false;
         this.§@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.onFadeComplete);
         §6!J§.container.mClip.removeChild(this.§@!3§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!J§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§^a§();
         §[!I§.§8!J§.updateTextFields(§6!J§.container,"StatePlay");
         this.§`!6§();
         this.§!!p§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(false);
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"A§(false);
         §+§.§8!J§.addEventListener(§=!$§.§5c§,this.§@"=§);
         §+§.§8!J§.addEventListener(§=!$§.§6";§,this.§<"3§);
         §+§.§8!J§.§;"0§();
         this.§<M§();
         this.§4!y§();
         this.§8!U§ = false;
      }
      
      protected function §4!y§() : void
      {
         var _loc1_:§1i§ = §&"<§.§<!7§.§5!p§;
         var _loc2_:Vector.<String> = _loc1_.§'">§.getTutorialNamesForMapping(§6!Q§.§'5§);
         _loc1_.§[!?§(_loc2_,true,true,true,false,null,true,false);
      }
      
      override public function deActivate() : void
      {
         §6!J§.container.mClip.addChild(this.§@!3§);
         super.deActivate();
         §+§.§8!J§.removeEventListener(§=!$§.§5c§,this.§@"=§);
         §+§.§8!J§.removeEventListener(§=!$§.§6";§,this.§<"3§);
         this.§;!%§.§?!4§();
         this.§8!U§ = false;
         if(this.§<!?§ && this.§<!?§.hasEventListener(§<l§.§'"#§))
         {
            this.§<!?§.removeEventListener(§<l§.§'"#§,this.§6Z§);
         }
         this.§0J§();
         this.§^a§();
         (§&"<§.§<!7§ as §["!§).§-!8§.§5!,§();
      }
      
      private function §0J§() : void
      {
         var _loc1_:int = 0;
         if(!this.§[!v§)
         {
            if(this.§>!o§ > §2!D§)
            {
               this.§[!v§ = true;
               _loc1_ = Math.round(1000 / this.§>!o§ * this.§1"A§);
               if(§9H§.§&!V§)
               {
                  §1!x§.§6"6§(§3"7§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §1!x§.§6"6§(§3"7§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §@"=§(param1:Event) : void
      {
         var _loc2_:int = §+§.§8!J§.§6!^§();
         var _loc3_:String = _loc2_ <= §?j§ ? _loc2_.toString() : §?j§ + "+";
         §6!J§.setText(_loc3_,"TextField_PowerupCounter");
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§8!w§.§5!V§.slingshot.mDragging)
            {
               §8!w§.§5!V§.slingshot.shoot();
               §%R§.changeGameState(§"m§.§5P§);
               return;
            }
            §8!w§.§5!V§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§@"§(§]m§.currentLevelNumericName);
               §&"<§.§<!7§.§1"0§.openPopup(new §%a§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§]!E§();
               break;
            case "POWERUP_USE":
               if((_loc5_ = §+§.§8!J§.§6!^§()) > 0 || this.§=!E§)
               {
                  this.§8!U§ = true;
                  this.§8"E§();
               }
               else
               {
                  if(this.§<!?§ && this.§<!?§.hasEventListener(§<l§.§'"#§))
                  {
                     this.§<!?§.removeEventListener(§<l§.§'"#§,this.§6Z§);
                  }
                  this.§<!?§ = new §'Z§();
                  (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(this.§<!?§);
                  this.§<!?§.addEventListener(§<l§.§'"#§,this.§6Z§);
               }
               break;
            case "ZOOM_IN":
               this.§try § = §>!M§;
               this.§1";§ = §`",§;
               break;
            case "ZOOM_OUT":
               this.§try § = -§>!M§;
               this.§1";§ = §`",§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§try § = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§try § = 0;
         }
      }
      
      private function §]!E§() : void
      {
         this.§8!U§ = false;
         § Q§.§]6§();
         §'Q§(§ Q§.STATE_NAME);
         this.§;!%§.§ !`§();
      }
      
      private function §6Z§(param1:Event) : void
      {
         this.§<!?§.close();
         this.§`!W§ = new §<!-§();
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(this.§`!W§,false,false,true,true);
         this.§`!W§.addEventListener(PopupClosedEvent.§7H§,this.§<!W§);
      }
      
      private function §8"E§() : void
      {
         §+§.§8!J§.addEventListener(§=!$§.§2!§,this.§=!&§);
         §+§.§8!J§.addEventListener(§=!$§.§[!w§,this.§-!N§);
         §+§.§8!J§.§,!$§();
         this.§!!p§(false);
      }
      
      private function §,!$§() : void
      {
         if(this.§8!U§)
         {
            (§8!w§.§5!V§.slingshot as §&"$§).§&!^§();
            this.§4!y§();
         }
         this.§8!U§ = false;
      }
      
      private function §<!W§(param1:Event) : void
      {
         this.§8!U§ = true;
         this.§8"E§();
         this.§`!W§.removeEventListener(PopupClosedEvent.§7H§,this.§<!W§);
      }
      
      protected function §<M§() : void
      {
         var _loc1_:HighscoreSidebar = (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§;
         _loc1_.§+E§ = §]m§.currentLevel;
         _loc1_.changeState(HighscoreSidebar.§,&§);
      }
      
      override protected function levelCompleted() : void
      {
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §25§());
         this.§;!%§.levelCompleted(this.§use §());
         §1!x§.§6"6§(§3"7§.§`!h§,§]m§.currentLevel,this.§`!k§.getScore(10));
      }
      
      override protected function getGameLogicController(param1:§1!R§) : §"m§
      {
         return new §'!A§(param1,§]m§);
      }
      
      private function §use §() : int
      {
         var _loc4_:§2!S§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:int = §;";§.§5o§(this.§;!u§.currentLevel).score;
         var _loc3_:int = this.§`!k§.getScore(10);
         if(_loc3_ > _loc2_)
         {
            _loc5_ = (_loc4_ = this.§;!u§.getEpisode(this.§;!u§.currentEpisode)).§ "§(this.§;!u§.currentLevel).scoreGold;
            _loc6_ = _loc4_.§ "§(this.§;!u§.currentLevel).scoreSilver;
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
      
      private function §!!p§(param1:Boolean = true) : void
      {
         var _loc2_:§%!J§ = §6!J§.getItemByName("Button_PowerUp") as §%!J§;
         if(param1)
         {
            _loc2_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§5![§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §7G§(param1:Number) : void
      {
         this.§>!o§ += param1;
         if(this.§>!o§ > 0)
         {
            ++this.§1"A§;
         }
      }
      
      private function §^a§() : void
      {
         this.§>!o§ = §<!$§;
         this.§1"A§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?F§ && !§8!w§.isPaused)
         {
            this.§?F§ = false;
            §@!9§.§["6§();
            this.§2!?§.soundManager.playSound("level_start_military");
            §8!w§.§5!V§.background.playAmbientSound();
         }
         this.§7G§(param1);
         if(!§8!w§.isPaused)
         {
            §>C§.§8!J§.update(param1);
         }
         this.§`!6§();
         this.§+"§(param1);
         if(!§8!w§.§5!V§.objects.isPigsAlive())
         {
            this.§!!p§(false);
         }
         if(nextState.length > 0 && this.§[G§())
         {
            this.§;!%§.§ !`§();
         }
         else if(nextState == §>O§.STATE_NAME)
         {
            this.§;!%§.§ !`§();
         }
      }
      
      private function §`!6§() : void
      {
         var _loc1_:int = §%R§.getScore(10);
         §6!J§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§&"<§.§<!7§ as §["!§).§<!%§.getScoreForLevel(§]m§.currentLevel);
         §6!J§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§[G§();
      }
      
      protected function §[G§() : Boolean
      {
         return this.§;!%§.§=!h§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §[N§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §&5§.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[!I§.§8!J§.updateTextFields(§6!J§.container,"StatePlay");
      }
      
      private function §+"§(param1:Number) : void
      {
         if(this.§try §)
         {
            this.§1";§ += param1;
            if(this.§1";§ > §`",§)
            {
               §%R§.doUserZoom(this.§try § > 0);
               this.§1";§ = 0;
            }
         }
      }
      
      public function get §;!u§() : §,!j§
      {
         return §]m§;
      }
      
      public function get §`!k§() : §"m§
      {
         return §%R§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§["!§.§+!"§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§&"<§.§<!7§.§1"0§.§["5§())
                  {
                     §8!w§.§5!V§.§@z§();
                  }
                  break;
               case Keyboard.P:
                  if(!§&"<§.§<!7§.§1"0§.§["5§())
                  {
                     this.§=!E§ = true;
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§&"<§.§<!7§.§1"0§.§["5§())
               {
                  this.§]!E§();
                  break;
               }
         }
         §8!w§.§79§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8!w§.§79§.keyUp(param1);
      }
      
      private function §=!&§(param1:Event) : void
      {
         this.§,!$§();
         §+§.§8!J§.removeEventListener(§=!$§.§2!§,this.§=!&§);
         §+§.§8!J§.removeEventListener(§=!$§.§[!w§,this.§-!N§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(false);
      }
      
      private function §-!N§(param1:Event) : void
      {
         §+§.§8!J§.removeEventListener(§=!$§.§2!§,this.§=!&§);
         §+§.§8!J§.removeEventListener(§=!$§.§[!w§,this.§-!N§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(false);
      }
      
      private function §<"3§(param1:Event) : void
      {
      }
   }
}
