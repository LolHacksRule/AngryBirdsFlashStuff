package §`!6§
{
   import §!!<§.§-"4§;
   import §!!<§.§7!r§;
   import §&!'§.ColorFadeLayerEvent;
   import §&!'§.§]S§;
   import §&+§.§,=§;
   import §&+§.§?J§;
   import §-!F§.§%>§;
   import §-!F§.§[!Q§;
   import §-!F§.§]L§;
   import §5!W§.§>P§;
   import §9![§.§1!i§;
   import §;f§.§'!3§;
   import §;f§.§@$§;
   import §<[§.HighscoreSidebar;
   import §=3§.§-!h§;
   import §=X§.§0!F§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §`q§.§+!,§;
   import §`q§.§9Q§;
   import com.angrybirds.§4!l§;
   import com.angrybirds.utils.§8O§;
   import com.angrybirds.utils.§@!1§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §>!v§ extends §`c§
   {
      
      private static const §+D§:Number = 50;
      
      private static const §7V§:Number = 0.05;
      
      private static const §11§:int = 99;
      
      public static const §]O§:String = "StatePlay";
      
      private static const §`!1§:Number = -10 * 1000;
      
      private static const § try§:Number = 15 * 1000;
      
      private static const §<^§:int = 8;
       
      
      private var §2!@§:Boolean = false;
      
      private var §7!7§:Number = -10000.0;
      
      private var §6!V§:int = 0;
      
      private var §6?§:Number = 0;
      
      private var §!p§:Number = 0;
      
      private var §0!B§:§0!F§;
      
      private var §'!f§:§7!r§;
      
      protected var §%'§:§]S§ = null;
      
      private var § F§:Boolean;
      
      private var §9!u§:Boolean;
      
      private var §&H§:Boolean;
      
      private var §="$§:int;
      
      private var §`!G§:Timer;
      
      public function §>!v§(param1:§5l§, param2:§-!<§, param3:Boolean, param4:§-"4§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§'!f§ = param4 as §7!r§;
      }
      
      override protected function init() : void
      {
         this.§%'§ = new §]S§(0,0,0,1);
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
         §!^§.container.mClip.addChild(this.§%'§);
         this.§0!B§ = new §0!F§(this);
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §"!j§.§3=§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§ F§ = false;
         this.§@!=§();
         §]L§.§0!S§(§%>§.§4@§,§^!§.currentLevel);
         (§&N§.§#Y§ as AngryBirdsCustom).§^" §.§0!S§(§8O§.§-W§);
         this.§9!u§ = true;
      }
      
      protected function §@!=§() : void
      {
         if(this.§%'§ && !this.§ F§)
         {
            this.§%'§.mouseEnabled = true;
            this.§ F§ = true;
            this.§%'§.§["+§(1);
            this.§%'§.§3"5§(0,0.25);
            this.§%'§.addEventListener(ColorFadeLayerEvent.§!D§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§%'§.mouseEnabled = false;
         this.§%'§.removeEventListener(ColorFadeLayerEvent.§!D§,this.onFadeComplete);
         §!^§.container.mClip.removeChild(this.§%'§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!^§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§63§();
         §[!Q§.§=J§.updateTextFields(§!^§.container,"StatePlay");
         this.§@!F§();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(false);
         this.§`I§();
         this.§`![§();
         this.§&H§ = false;
      }
      
      protected function §`![§() : void
      {
         var _loc1_:§?J§ = §&N§.§#Y§.§1"3§;
         var _loc2_:Vector.<String> = _loc1_.§,!x§.getTutorialNamesForMapping(§,=§.§0"-§);
         _loc1_.§`4§(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §!^§.container.mClip.addChild(this.§%'§);
         super.deActivate();
         this.§0!B§.§@!b§();
         this.§[!D§();
         this.§63§();
         this.§0!B§.removeEventListener(§@!1§.§'"§,this.§&!`§);
         this.§0!B§.removeEventListener(§@!1§.§+r§,this.§&!0§);
         if(this.§`!G§)
         {
            this.§`!G§.stop();
            this.§`!G§.removeEventListener(TimerEvent.TIMER,this.§!! §);
            this.§`!G§ = null;
         }
         (§&N§.§#Y§ as AngryBirdsCustom).§^" §.§4" §();
      }
      
      private function §[!D§() : void
      {
         var _loc1_:int = 0;
         if(!this.§2!@§)
         {
            if(this.§7!7§ > § try§)
            {
               this.§2!@§ = true;
               _loc1_ = Math.round(1000 / this.§7!7§ * this.§6!V§);
               if(§>P§.§case §)
               {
                  §]L§.§0!S§(§%>§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §]L§.§0!S§(§%>§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§4!l§.§,!8§.slingshot.mDragging)
            {
               §4!l§.§,!8§.slingshot.shoot();
               §^]§.changeGameState(§'!3§.§<!4§);
               return;
            }
            §4!l§.§,!8§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§!R§();
               §&N§.§#Y§.§@!H§.openPopup(new §+!,§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§<9§();
               break;
            case "ZOOM_IN":
               this.§6?§ = §7V§;
               this.§!p§ = §+D§;
               break;
            case "ZOOM_OUT":
               this.§6?§ = -§7V§;
               this.§!p§ = §+D§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§6?§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§6?§ = 0;
         }
      }
      
      private function §<9§() : void
      {
         §-%§.§%!@§();
         §8=§(§-%§.§]O§);
         this.§0!B§.§"! §();
      }
      
      protected function §`I§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§;
         _loc2_ = _loc1_.§ !C§;
         _loc1_.§ !C§ = §^!§.currentLevel;
         _loc1_.§ D§(_loc1_.§&!2§,_loc2_ != _loc1_.§ !C§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§&H§)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §9Q§());
            this.§0!B§.levelCompleted();
            this.§0!B§.addEventListener(§@!1§.§'"§,this.§&!`§);
            this.§0!B§.addEventListener(§@!1§.§+r§,this.§&!0§);
            this.§&H§ = true;
            §]L§.§0!S§(§%>§.§@[§,§^!§.currentLevel,this.§9"&§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§"h§) : §'!3§
      {
         return new §@$§(param1,§^!§);
      }
      
      private function §6=§(param1:Number) : void
      {
         this.§7!7§ += param1;
         if(this.§7!7§ > 0)
         {
            ++this.§6!V§;
         }
      }
      
      private function §63§() : void
      {
         this.§7!7§ = §`!1§;
         this.§6!V§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§9!u§ && !§4!l§.isPaused)
         {
            this.§9!u§ = false;
            §1!i§.§ !S§();
            §4!l§.§,!8§.background.§0T§();
         }
         this.§6=§(param1);
         if(!§4!l§.isPaused)
         {
            §-!h§.§=J§.update(param1);
         }
         this.§@!F§();
         this.§&a§(param1);
         if(nextState.length > 0 && this.§4t§())
         {
            this.§0!B§.§"! §();
         }
         else if(nextState == §"!^§.§]O§)
         {
            this.§0!B§.§"! §();
         }
         if(!§4!l§.§,!8§.slingshot.birdsAvailable || !§4!l§.§,!8§.objects.isPigsAlive())
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         }
      }
      
      private function §@!F§() : void
      {
         var _loc1_:int = §^]§.getScore(10);
         §!^§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.getScoreForLevel(§^!§.currentLevel);
         §!^§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§4t§();
      }
      
      protected function §4t§() : Boolean
      {
         return this.§0!B§.§;[§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §7!d§.§]O§;
      }
      
      override public function getLoserStateName() : String
      {
         return §#!Z§.§]O§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[!Q§.§=J§.updateTextFields(§!^§.container,"StatePlay");
      }
      
      private function §&a§(param1:Number) : void
      {
         if(this.§6?§)
         {
            this.§!p§ += param1;
            if(this.§!p§ > §+D§)
            {
               §^]§.doUserZoom(this.§6?§ > 0);
               this.§!p§ = 0;
            }
         }
      }
      
      public function get §2!V§() : §5l§
      {
         return §^!§;
      }
      
      public function get §9"&§() : §'!3§
      {
         return §^]§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§3>§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§&N§.§#Y§.§@!H§.§1s§())
                  {
                     §4!l§.§,!8§.§<"§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§&N§.§#Y§.§@!H§.§1s§())
               {
                  this.§<9§();
                  break;
               }
         }
         §4!l§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §4!l§.controller.keyUp(param1);
      }
      
      private function §!R§() : String
      {
         var _loc1_:int = 0;
         if(§^!§.currentLevel.indexOf("1-") == 0)
         {
            return §^!§.currentLevel.substr(2);
         }
         if(§^!§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§^!§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §^!§.currentLevel;
      }
      
      private function §&!0§(param1:§@!1§) : void
      {
         this.§0!B§.removeEventListener(§@!1§.§'"§,this.§&!`§);
         this.§0!B§.removeEventListener(§@!1§.§+r§,this.§&!0§);
         if(this.§="$§ < §<^§)
         {
            this.§`!G§ = new Timer(1000 * 2 * (this.§="$§ + 1) + 2000);
            this.§`!G§.addEventListener(TimerEvent.TIMER,this.§!! §);
            this.§`!G§.start();
            ++this.§="$§;
         }
         else
         {
            §8=§(§?E§.§]O§);
         }
      }
      
      private function §!! §(param1:TimerEvent) : void
      {
         this.§0!B§.§@!b§();
         this.§0!B§.levelCompleted();
         this.§0!B§.addEventListener(§@!1§.§'"§,this.§&!`§);
         this.§0!B§.addEventListener(§@!1§.§+r§,this.§&!0§);
         if(this.§`!G§)
         {
            this.§`!G§.removeEventListener(TimerEvent.TIMER,this.§!! §);
         }
      }
      
      private function §&!`§(param1:§@!1§) : void
      {
         this.§0!B§.removeEventListener(§@!1§.§+r§,this.§&!0§);
         this.§0!B§.removeEventListener(§@!1§.§'"§,this.§&!`§);
         if(this.§`!G§)
         {
            this.§`!G§.removeEventListener(TimerEvent.TIMER,this.§!! §);
            this.§`!G§.stop();
            this.§`!G§ = null;
         }
      }
   }
}
