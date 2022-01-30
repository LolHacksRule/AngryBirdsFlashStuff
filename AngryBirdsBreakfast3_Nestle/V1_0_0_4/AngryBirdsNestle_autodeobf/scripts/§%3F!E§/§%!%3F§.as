package §?!E§
{
   import §#@§.§5l§;
   import §#@§.§^!^§;
   import §%9§.§-!o§;
   import §%9§.§33§;
   import §&!>§.§3!k§;
   import §&5§.HighscoreSidebar;
   import §'<§.§=!o§;
   import §-!G§.§96§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §0I§.§!!p§;
   import §5!7§.§6n§;
   import §5!7§.§<"2§;
   import §6!4§.§<!D§;
   import §9!o§.§ !h§;
   import §9!o§.§9U§;
   import §;!b§.§%>§;
   import §><§.§9!M§;
   import §[!b§.§'!R§;
   import §`!_§.ColorFadeLayerEvent;
   import §`!_§.§[!q§;
   import §`6§.§!!]§;
   import §`6§.§6,§;
   import §`6§.§9a§;
   import com.angrybirds.§6U§;
   import com.angrybirds.utils.§+!`§;
   import com.angrybirds.utils.§9_§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §%!?§ extends §+!,§
   {
      
      private static const §'K§:Number = 50;
      
      private static const §%!j§:Number = 0.05;
      
      private static const §2!R§:int = 99;
      
      public static const §+B§:String = "StatePlay";
      
      private static const §0O§:Number = -10 * 1000;
      
      private static const §=!H§:Number = 15 * 1000;
      
      private static const §8!A§:int = 8;
       
      
      private var §%a§:Boolean = false;
      
      private var §4U§:Number = -10000.0;
      
      private var §;>§:int = 0;
      
      private var §4"'§:Number = 0;
      
      private var §^L§:Number = 0;
      
      private var §%%§:§96§;
      
      private var §with§:§6n§;
      
      protected var §[!x§:§[!q§ = null;
      
      private var §[=§:Boolean;
      
      private var §5!8§:Boolean;
      
      private var §-!S§:Boolean;
      
      private var §>t§:int;
      
      private var §@!H§:Timer;
      
      public function §%!?§(param1:§=!o§, param2:§%>§, param3:Boolean, param4:§<"2§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§with§ = param4 as §6n§;
      }
      
      override protected function init() : void
      {
         this.§[!x§ = new §[!q§(0,0,0,1);
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
         §#2§.container.mClip.addChild(this.§[!x§);
         this.§%%§ = new §96§(this);
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = §+!b§.§#!P§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§[=§ = false;
         this.§1"!§();
         §6,§.§8"0§(§9a§.§1G§,§+o§.currentLevel);
         (§-!l§.§"x§ as AngryBirdsCustom).§@O§.§8"0§(§+!`§.§1!h§);
         this.§5!8§ = true;
      }
      
      protected function §1"!§() : void
      {
         if(this.§[!x§ && !this.§[=§)
         {
            this.§[!x§.mouseEnabled = true;
            this.§[=§ = true;
            this.§[!x§.§7!B§(1);
            this.§[!x§.§,>§(0,0.25);
            this.§[!x§.addEventListener(ColorFadeLayerEvent.§"!^§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§[!x§.mouseEnabled = false;
         this.§[!x§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.onFadeComplete);
         §#2§.container.mClip.removeChild(this.§[!x§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#2§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§^!8§();
         §!!]§.§?!+§.updateTextFields(§#2§.container,"StatePlay");
         this.§!"3§();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(false);
         this.§?!!§();
         this.§;D§();
         this.§-!S§ = false;
      }
      
      protected function §;D§() : void
      {
         var _loc1_:§^!^§ = §-!l§.§"x§.§`9§;
         var _loc2_:Vector.<String> = _loc1_.§-"4§.getTutorialNamesForMapping(§5l§.§29§);
         _loc1_.§-!#§(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §#2§.container.mClip.addChild(this.§[!x§);
         super.deActivate();
         this.§%%§.§,<§();
         this.§9!E§();
         this.§^!8§();
         this.§%%§.removeEventListener(§9_§.§3Y§,this.§+!8§);
         this.§%%§.removeEventListener(§9_§.§?q§,this.§%!H§);
         if(this.§@!H§)
         {
            this.§@!H§.stop();
            this.§@!H§.removeEventListener(TimerEvent.TIMER,this.§4#§);
            this.§@!H§ = null;
         }
         (§-!l§.§"x§ as AngryBirdsCustom).§@O§.§2"4§();
         §3!k§.§#!3§();
      }
      
      private function §9!E§() : void
      {
         var _loc1_:int = 0;
         if(!this.§%a§)
         {
            if(this.§4U§ > §=!H§)
            {
               this.§%a§ = true;
               _loc1_ = Math.round(1000 / this.§4U§ * this.§;>§);
               if(§<!D§.§,"§)
               {
                  §6,§.§8"0§(§9a§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §6,§.§8"0§(§9a§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§6U§.§+_§.slingshot.mDragging)
            {
               §6U§.§+_§.slingshot.shoot();
               §+!o§.changeGameState(§9U§.§8!9§);
               return;
            }
            §6U§.§+_§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§8=§();
               §-!l§.§"x§.§,!W§.openPopup(new §-!o§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§&<§();
               break;
            case "ZOOM_IN":
               this.§4"'§ = §%!j§;
               this.§^L§ = §'K§;
               break;
            case "ZOOM_OUT":
               this.§4"'§ = -§%!j§;
               this.§^L§ = §'K§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§4"'§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§4"'§ = 0;
         }
      }
      
      private function §&<§() : void
      {
         §62§.§ case§();
         §0!w§(§62§.§+B§);
         this.§%%§.§]e§();
      }
      
      protected function §?!!§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§;
         _loc2_ = _loc1_.§@d§;
         _loc1_.§@d§ = §+o§.currentLevel;
         _loc1_.§0!"§(_loc1_.§-!Y§,_loc2_ != _loc1_.§@d§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§-!S§)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §33§());
            this.§%%§.levelCompleted();
            this.§%%§.addEventListener(§9_§.§3Y§,this.§+!8§);
            this.§%%§.addEventListener(§9_§.§?q§,this.§%!H§);
            this.§-!S§ = true;
            §6,§.§8"0§(§9a§.§4!Q§,§+o§.currentLevel,this.§5`§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§!!p§) : §9U§
      {
         return new § !h§(param1,§+o§);
      }
      
      private function §<!V§(param1:Number) : void
      {
         this.§4U§ += param1;
         if(this.§4U§ > 0)
         {
            ++this.§;>§;
         }
      }
      
      private function §^!8§() : void
      {
         this.§4U§ = §0O§;
         this.§;>§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§5!8§ && !§6U§.isPaused)
         {
            this.§5!8§ = false;
            §3!k§.§#!3§();
            §6U§.§+_§.background.§[!5§();
         }
         this.§<!V§(param1);
         if(!§6U§.isPaused)
         {
            §9!M§.§?!+§.update(param1);
         }
         this.§!"3§();
         this.§9"0§(param1);
         if(nextState.length > 0 && this.§9!h§())
         {
            this.§%%§.§]e§();
         }
         else if(nextState == §,!_§.§+B§)
         {
            this.§%%§.§]e§();
         }
         if(!§6U§.§+_§.slingshot.birdsAvailable || !§6U§.§+_§.objects.isPigsAlive())
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         }
      }
      
      private function §!"3§() : void
      {
         var _loc1_:int = §+!o§.getScore(10);
         §#2§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.getScoreForLevel(§+o§.currentLevel);
         §#2§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§9!h§();
      }
      
      protected function §9!h§() : Boolean
      {
         return this.§%%§.§#x§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §6^§.§+B§;
      }
      
      override public function getLoserStateName() : String
      {
         return §1N§.§+B§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!]§.§?!+§.updateTextFields(§#2§.container,"StatePlay");
      }
      
      private function §9"0§(param1:Number) : void
      {
         if(this.§4"'§)
         {
            this.§^L§ += param1;
            if(this.§^L§ > §'K§)
            {
               §+!o§.doUserZoom(this.§4"'§ > 0);
               this.§^L§ = 0;
            }
         }
      }
      
      public function get §6!N§() : §=!o§
      {
         return §+o§;
      }
      
      public function get §5`§() : §9U§
      {
         return §+!o§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§4V§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§-!l§.§"x§.§,!W§.§7"#§())
                  {
                     §6U§.§+_§.§;!8§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§-!l§.§"x§.§,!W§.§7"#§())
               {
                  this.§&<§();
                  break;
               }
         }
         §6U§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §6U§.controller.keyUp(param1);
      }
      
      private function §8=§() : String
      {
         var _loc1_:int = 0;
         if(§+o§.currentLevel.indexOf("1-") == 0)
         {
            return §+o§.currentLevel.substr(2);
         }
         if(§+o§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§+o§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §+o§.currentLevel;
      }
      
      private function §%!H§(param1:§9_§) : void
      {
         this.§%%§.removeEventListener(§9_§.§3Y§,this.§+!8§);
         this.§%%§.removeEventListener(§9_§.§?q§,this.§%!H§);
         if(this.§>t§ < §8!A§)
         {
            this.§@!H§ = new Timer(1000 * 2 * (this.§>t§ + 1) + 2000);
            this.§@!H§.addEventListener(TimerEvent.TIMER,this.§4#§);
            this.§@!H§.start();
            ++this.§>t§;
         }
         else
         {
            §0!w§(§]l§.§+B§);
         }
      }
      
      private function §4#§(param1:TimerEvent) : void
      {
         this.§%%§.§,<§();
         this.§%%§.levelCompleted();
         this.§%%§.addEventListener(§9_§.§3Y§,this.§+!8§);
         this.§%%§.addEventListener(§9_§.§?q§,this.§%!H§);
         if(this.§@!H§)
         {
            this.§@!H§.removeEventListener(TimerEvent.TIMER,this.§4#§);
         }
      }
      
      private function §+!8§(param1:§9_§) : void
      {
         this.§%%§.removeEventListener(§9_§.§?q§,this.§%!H§);
         this.§%%§.removeEventListener(§9_§.§3Y§,this.§+!8§);
         if(this.§@!H§)
         {
            this.§@!H§.removeEventListener(TimerEvent.TIMER,this.§4#§);
            this.§@!H§.stop();
            this.§@!H§ = null;
         }
      }
   }
}
