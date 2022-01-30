package §]!V§
{
   import §!!&§.§!!q§;
   import §!!&§.§@!C§;
   import §!!&§.§`!$§;
   import §!!i§.§6!%§;
   import §!!i§.§>!j§;
   import §!P§.§5!1§;
   import §"q§.§1"1§;
   import §'!u§.§&S§;
   import §-b§.§4"0§;
   import §0!E§.HighscoreSidebar;
   import §7"1§.§@!9§;
   import §7"1§.ColorFadeLayerEvent;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §@!l§.§,"%§;
   import §@!l§.§0d§;
   import §[^§.§'g§;
   import §[^§.§@!U§;
   import §]A§.§[d§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import §^x§.§'!M§;
   import §^x§.§8v§;
   import §`V§.§;6§;
   import com.angrybirds.§#Z§;
   import com.angrybirds.utils.§;!L§;
   import com.angrybirds.utils.§]?§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §8!P§ extends §`"%§
   {
      
      private static const §`!k§:Number = 50;
      
      private static const §9!=§:Number = 0.05;
      
      private static const §"&§:int = 99;
      
      public static const §+a§:String = "StatePlay";
      
      private static const §,!O§:Number = -10 * 1000;
      
      private static const §&!O§:Number = 15 * 1000;
      
      private static const §+!Q§:int = 8;
       
      
      private var §#R§:Boolean = false;
      
      private var § "!§:Number = -10000.0;
      
      private var §import§:int = 0;
      
      private var § "1§:Number = 0;
      
      private var §"A§:Number = 50;
      
      private var §=4§:§1"1§;
      
      private var §4!J§:§@!U§;
      
      protected var §7B§:§@!9§ = null;
      
      private var §3'§:Boolean;
      
      private var §0f§:Boolean;
      
      private var §%!y§:Boolean;
      
      private var §`!u§:int;
      
      private var §16§:Timer;
      
      public function §8!P§(param1:§5!1§, param2:§&S§, param3:Boolean, param4:§'g§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§4!J§ = param4 as §@!U§;
      }
      
      override protected function init() : void
      {
         this.§7B§ = new §@!9§(0,0,0,1);
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
         §5+§.container.mClip.addChild(this.§7B§);
         this.§=4§ = new §1"1§(this);
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!A§.§`O§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§3'§ = false;
         this.§+H§();
         §!!q§.§-!Y§(§@!C§.§!F§,§97§.currentLevel);
         (§,!X§.§>!G§ as AngryBirdsCustom).§74§.§-!Y§(§;!L§.§#!^§);
         this.§0f§ = true;
      }
      
      protected function §+H§() : void
      {
         if(this.§7B§ && !this.§3'§)
         {
            this.§7B§.mouseEnabled = true;
            this.§3'§ = true;
            this.§7B§.§0a§(1);
            this.§7B§.§;!$§(0,0.25);
            this.§7B§.addEventListener(ColorFadeLayerEvent.§+!t§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§7B§.mouseEnabled = false;
         this.§7B§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.onFadeComplete);
         §5+§.container.mClip.removeChild(this.§7B§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §5+§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§'!<§();
         §`!$§.§>!P§.updateTextFields(§5+§.container,"StatePlay");
         this.§9",§();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(false);
         this.§][§();
         this.§%!"§();
         this.§%!y§ = false;
         this.§ "1§ = 0;
      }
      
      protected function §%!"§() : void
      {
         var _loc1_:§>!j§ = §,!X§.§>!G§.§%"6§;
         var _loc2_:Vector.<String> = _loc1_.§40§.getTutorialNamesForMapping(§6!%§.§%C§);
         _loc1_.§^u§(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §5+§.container.mClip.addChild(this.§7B§);
         super.deActivate();
         this.§=4§.§>!t§();
         this.§!u§();
         this.§'!<§();
         this.§=4§.removeEventListener(§]?§.§@!A§,this.§'!C§);
         this.§=4§.removeEventListener(§]?§.§7a§,this.§,8§);
         if(this.§16§)
         {
            this.§16§.stop();
            this.§16§.removeEventListener(TimerEvent.TIMER,this.§60§);
            this.§16§ = null;
         }
         (§,!X§.§>!G§ as AngryBirdsCustom).§74§.§8z§();
      }
      
      private function §!u§() : void
      {
         var _loc1_:int = 0;
         if(!this.§#R§)
         {
            if(this.§ "!§ > §&!O§)
            {
               this.§#R§ = true;
               _loc1_ = Math.round(1000 / this.§ "!§ * this.§import§);
               if(§;6§.§?!C§)
               {
                  §!!q§.§-!Y§(§@!C§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §!!q§.§-!Y§(§@!C§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§#Z§.§'0§.slingshot.mDragging)
            {
               §#Z§.§'0§.slingshot.shoot();
               §=e§.changeGameState(§8v§.§[>§);
               return;
            }
            §#Z§.§'0§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§-X§();
               §,!X§.§>!G§.§5!K§.openPopup(new §,"%§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§"! §();
               break;
            case "ZOOM_IN":
               this.§ "1§ = §9!=§;
               this.§"A§ = 0;
               break;
            case "ZOOM_OUT":
               this.§ "1§ = -§9!=§;
               this.§"A§ = 0;
               break;
            case "ZOOM_IN_RELEASE":
               this.§ "1§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§ "1§ = 0;
         }
      }
      
      private function §"! §() : void
      {
         §5!h§.§`!H§();
         §8!`§(§5!h§.§+a§);
         this.§=4§.§#!n§();
      }
      
      protected function §][§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§;
         _loc2_ = _loc1_.§^?§;
         _loc1_.§^?§ = §97§.currentLevel;
         _loc1_.§9!s§(_loc1_.§5u§,_loc2_ != _loc1_.§^?§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§%!y§)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §0d§());
            this.§=4§.levelCompleted();
            this.§=4§.addEventListener(§]?§.§@!A§,this.§'!C§);
            this.§=4§.addEventListener(§]?§.§7a§,this.§,8§);
            this.§%!y§ = true;
            §!!q§.§-!Y§(§@!C§.§%!5§,§97§.currentLevel,this.§'!s§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§[d§) : §8v§
      {
         return new §'!M§(param1,§97§);
      }
      
      private function §,!q§(param1:Number) : void
      {
         this.§ "!§ += param1;
         if(this.§ "!§ > 0)
         {
            ++this.§import§;
         }
      }
      
      private function §'!<§() : void
      {
         this.§ "!§ = §,!O§;
         this.§import§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§0f§ && !§#Z§.isPaused)
         {
            this.§0f§ = false;
            §%!c§.§0O§();
            §#Z§.§'0§.background.§"!R§();
         }
         this.§,!q§(param1);
         if(!§#Z§.isPaused)
         {
            §4"0§.§>!P§.update(param1);
         }
         this.§9",§();
         this.§5w§(param1);
         if(nextState.length > 0 && this.§8!W§())
         {
            this.§=4§.§#!n§();
         }
         else if(nextState == §6J§.§+a§)
         {
            this.§=4§.§#!n§();
         }
         if(!§#Z§.§'0§.slingshot.birdsAvailable || !§#Z§.§'0§.objects.isPigsAlive())
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         }
      }
      
      private function §9",§() : void
      {
         var _loc1_:int = §=e§.getScore(10);
         §5+§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.getScoreForLevel(§97§.currentLevel);
         §5+§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§8!W§();
      }
      
      protected function §8!W§() : Boolean
      {
         return this.§=4§.§>"1§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §[!G§.§+a§;
      }
      
      override public function getLoserStateName() : String
      {
         return §<K§.§+a§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §`!$§.§>!P§.updateTextFields(§5+§.container,"StatePlay");
      }
      
      private function §5w§(param1:Number) : void
      {
         if(this.§ "1§)
         {
            this.§"A§ -= param1;
            if(this.§"A§ <= 0)
            {
               §=e§.doUserZoom(this.§ "1§ > 0);
               this.§"A§ += §`!k§;
            }
         }
      }
      
      public function get §5!c§() : §5!1§
      {
         return §97§;
      }
      
      public function get §'!s§() : §8v§
      {
         return §=e§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§ !b§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§,!X§.§>!G§.§5!K§.§@"-§())
                  {
                     §#Z§.§'0§.§#A§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§,!X§.§>!G§.§5!K§.§@"-§())
               {
                  this.§"! §();
                  break;
               }
         }
         §#Z§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#Z§.controller.keyUp(param1);
      }
      
      private function §-X§() : String
      {
         var _loc1_:int = 0;
         if(§97§.currentLevel.indexOf("1-") == 0)
         {
            return §97§.currentLevel.substr(2);
         }
         if(§97§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§97§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §97§.currentLevel;
      }
      
      private function §,8§(param1:§]?§) : void
      {
         this.§=4§.removeEventListener(§]?§.§@!A§,this.§'!C§);
         this.§=4§.removeEventListener(§]?§.§7a§,this.§,8§);
         if(this.§`!u§ < §+!Q§)
         {
            this.§16§ = new Timer(1000 * 2 * (this.§`!u§ + 1) + 2000);
            this.§16§.addEventListener(TimerEvent.TIMER,this.§60§);
            this.§16§.start();
            ++this.§`!u§;
         }
         else
         {
            §8!`§(§&g§.§+a§);
         }
      }
      
      private function §60§(param1:TimerEvent) : void
      {
         this.§=4§.§>!t§();
         this.§=4§.levelCompleted();
         this.§=4§.addEventListener(§]?§.§@!A§,this.§'!C§);
         this.§=4§.addEventListener(§]?§.§7a§,this.§,8§);
         if(this.§16§)
         {
            this.§16§.removeEventListener(TimerEvent.TIMER,this.§60§);
         }
      }
      
      private function §'!C§(param1:§]?§) : void
      {
         this.§=4§.removeEventListener(§]?§.§7a§,this.§,8§);
         this.§=4§.removeEventListener(§]?§.§@!A§,this.§'!C§);
         if(this.§16§)
         {
            this.§16§.removeEventListener(TimerEvent.TIMER,this.§60§);
            this.§16§.stop();
            this.§16§ = null;
         }
      }
   }
}
