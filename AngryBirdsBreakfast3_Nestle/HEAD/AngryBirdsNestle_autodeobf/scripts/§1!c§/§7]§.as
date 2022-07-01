package §1!c§
{
   import §!!!§.§6!l§;
   import §#!`§.;
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §'!3§.§,!S§;
   import §'!3§.§8f§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§0!<§;
   import §4!i§.§@"#§;
   import §4!i§.§^"#§;
   import §4[§.§=!v§;
   import §;g§.§'c§;
   import §<S§.HighscoreSidebar;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import §^"!§.§;m§;
   import com.angrybirds.utils.§4",§;
   import com.angrybirds.utils.§8!+§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §7]§ extends §7t§
   {
      
      private static const §""&§:Number = 50;
      
      private static const §>!L§:Number = 0.05;
      
      private static const §[!@§:int = 99;
      
      public static const §8"%§:String = "StatePlay";
      
      private static const §=§:Number = -10 * 1000;
      
      private static const §]f§:Number = 15 * 1000;
      
      private static const §0s§:int = 8;
       
      
      private var §!d§:Boolean = false;
      
      private var §0!f§:Number = -10000.0;
      
      private var §'5§:int = 0;
      
      private var §5N§:Number = 0;
      
      private var §?!H§:Number = 50;
      
      private var §4"#§:§=!v§;
      
      private var §@!]§:§;!=§;
      
      protected var §@T§:§?>§ = null;
      
      private var §+T§:Boolean;
      
      private var §6!O§:Boolean;
      
      private var §1"6§:Boolean;
      
      private var §,`§:int;
      
      private var §#"0§:Timer;
      
      public function §7]§(param1:§0![§, param2:§+f§, param3:Boolean, param4:§4O§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§@!]§ = param4 as §;!=§;
      }
      
      override protected function init() : void
      {
         this.§@T§ = new §?>§(0,0,0,1);
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
         §^!T§.container.mClip.addChild(this.§@T§);
         this.§4"#§ = new §=!v§(this);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§+T§ = false;
         this.§6!D§();
         §0!<§.§1x§(§^"#§.§61§,§4a§.currentLevel);
         (§ !4§.§%"7§ as AngryBirdsCustom).§%R§.§1x§(§8!+§.§;Z§);
         this.§6!O§ = true;
      }
      
      protected function §6!D§() : void
      {
         if(this.§@T§ && !this.§+T§)
         {
            this.§@T§.mouseEnabled = true;
            this.§+T§ = true;
            this.§@T§.§'7§(1);
            this.§@T§.§!!p§(0,0.25);
            this.§@T§.addEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§@T§.mouseEnabled = false;
         this.§@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         §^!T§.container.mClip.removeChild(this.§@T§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §^!T§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§3!H§();
         §@"#§.§,2§.updateTextFields(§^!T§.container,"StatePlay");
         this.§8k§();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(false);
         this.§'!$§();
         this.§&!z§();
         this.§1"6§ = false;
         this.§5N§ = 0;
      }
      
      protected function §&!z§() : void
      {
         var _loc1_:§+!7§ = § !4§.§%"7§.§=!e§;
         var _loc2_:Vector.<String> = _loc1_.§+!k§.getTutorialNamesForMapping(§;m§.§`X§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §^!T§.container.mClip.addChild(this.§@T§);
         super.deActivate();
         this.§4"#§.§1h§();
         this.§!!N§();
         this.§3!H§();
         this.§4"#§.removeEventListener(§4",§.§,l§,this.§case §);
         this.§4"#§.removeEventListener(§4",§.§#^§,this.§[!G§);
         if(this.§#"0§)
         {
            this.§#"0§.stop();
            this.§#"0§.removeEventListener(TimerEvent.TIMER,this.§+!P§);
            this.§#"0§ = null;
         }
         (§ !4§.§%"7§ as AngryBirdsCustom).§%R§.§9"$§();
      }
      
      private function §!!N§() : void
      {
         var _loc1_:int = 0;
         if(!this.§!d§)
         {
            if(this.§0!f§ > §]f§)
            {
               this.§!d§ = true;
               _loc1_ = Math.round(1000 / this.§0!f§ * this.§'5§);
               if(§6!l§.§`k§)
               {
                  §0!<§.§1x§(§^"#§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §0!<§.§1x§(§^"#§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§@!S§.§2A§.slingshot.mDragging)
            {
               §@!S§.§2A§.slingshot.shoot();
               §4!"§.changeGameState(§3!o§.§#!J§);
               return;
            }
            §@!S§.§2A§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§[o§();
               § !4§.§%"7§.§+!J§.openPopup(new §8f§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§;" §();
               break;
            case "ZOOM_IN":
               this.§5N§ = §>!L§;
               this.§?!H§ = 0;
               break;
            case "ZOOM_OUT":
               this.§5N§ = -§>!L§;
               this.§?!H§ = 0;
               break;
            case "ZOOM_IN_RELEASE":
               this.§5N§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§5N§ = 0;
         }
      }
      
      private function §;" §() : void
      {
         §'8§.§@!!§();
         §7"6§(§'8§.§8"%§);
         this.§4"#§.§`+§();
      }
      
      protected function §'!$§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§;
         _loc2_ = _loc1_.§]!M§;
         _loc1_.§]!M§ = §4a§.currentLevel;
         _loc1_.§@w§(_loc1_.§;!Z§,_loc2_ != _loc1_.§]!M§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§1"6§)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new §,!S§());
            this.§4"#§.levelCompleted();
            this.§4"#§.addEventListener(§4",§.§,l§,this.§case §);
            this.§4"#§.addEventListener(§4",§.§#^§,this.§[!G§);
            this.§1"6§ = true;
            §0!<§.§1x§(§^"#§.§&!$§,§4a§.currentLevel,this.§9c§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§#=§) : §3!o§
      {
         return new §#6§(param1,§4a§);
      }
      
      private function §]#§(param1:Number) : void
      {
         this.§0!f§ += param1;
         if(this.§0!f§ > 0)
         {
            ++this.§'5§;
         }
      }
      
      private function §3!H§() : void
      {
         this.§0!f§ = §=§;
         this.§'5§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§6!O§ && !§@!S§.isPaused)
         {
            this.§6!O§ = false;
            §>D§.§>!%§();
            §@!S§.§2A§.background.§`"'§();
         }
         this.§]#§(param1);
         if(!§@!S§.isPaused)
         {
            §'c§.§,2§.update(param1);
         }
         this.§8k§();
         this.§^!5§(param1);
         if(nextState.length > 0 && this.§01§())
         {
            this.§4"#§.§`+§();
         }
         else if(nextState == §@=§.§8"%§)
         {
            this.§4"#§.§`+§();
         }
         if(!§@!S§.§2A§.slingshot.birdsAvailable || !§@!S§.§2A§.objects.isPigsAlive())
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         }
      }
      
      private function §8k§() : void
      {
         var _loc1_:int = §4!"§.getScore(10);
         §^!T§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.getScoreForLevel(§4a§.currentLevel);
         §^!T§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§01§();
      }
      
      protected function §01§() : Boolean
      {
         return this.§4"#§.§3""§;
      }
      
      override public function getVictoryStateName() : String
      {
         return § x§.§8"%§;
      }
      
      override public function getLoserStateName() : String
      {
         return §;"2§.§8"%§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §@"#§.§,2§.updateTextFields(§^!T§.container,"StatePlay");
      }
      
      private function §^!5§(param1:Number) : void
      {
         if(this.§5N§)
         {
            this.§?!H§ -= param1;
            if(this.§?!H§ <= 0)
            {
               §4!"§.doUserZoom(this.§5N§ > 0);
               this.§?!H§ += §""&§;
            }
         }
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function get §9c§() : §3!o§
      {
         return §4!"§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§?J§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§ !4§.§%"7§.§+!J§.§8!5§())
                  {
                     §@!S§.§2A§.§[!K§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§ !4§.§%"7§.§+!J§.§8!5§())
               {
                  this.§;" §();
                  break;
               }
         }
         §@!S§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §@!S§.controller.keyUp(param1);
      }
      
      private function §[o§() : String
      {
         var _loc1_:int = 0;
         if(§4a§.currentLevel.indexOf("1-") == 0)
         {
            return §4a§.currentLevel.substr(2);
         }
         if(§4a§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§4a§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §4a§.currentLevel;
      }
      
      private function §[!G§(param1:§4",§) : void
      {
         this.§4"#§.removeEventListener(§4",§.§,l§,this.§case §);
         this.§4"#§.removeEventListener(§4",§.§#^§,this.§[!G§);
         if(this.§,`§ < §0s§)
         {
            this.§#"0§ = new Timer(1000 * 2 * (this.§,`§ + 1) + 2000);
            this.§#"0§.addEventListener(TimerEvent.TIMER,this.§+!P§);
            this.§#"0§.start();
            ++this.§,`§;
         }
         else
         {
            §7"6§(§^j§.§8"%§);
         }
      }
      
      private function §+!P§(param1:TimerEvent) : void
      {
         this.§4"#§.§1h§();
         this.§4"#§.levelCompleted();
         this.§4"#§.addEventListener(§4",§.§,l§,this.§case §);
         this.§4"#§.addEventListener(§4",§.§#^§,this.§[!G§);
         if(this.§#"0§)
         {
            this.§#"0§.removeEventListener(TimerEvent.TIMER,this.§+!P§);
         }
      }
      
      private function §case §(param1:§4",§) : void
      {
         this.§4"#§.removeEventListener(§4",§.§#^§,this.§[!G§);
         this.§4"#§.removeEventListener(§4",§.§,l§,this.§case §);
         if(this.§#"0§)
         {
            this.§#"0§.removeEventListener(TimerEvent.TIMER,this.§+!P§);
            this.§#"0§.stop();
            this.§#"0§ = null;
         }
      }
   }
}
