package §,#§
{
   import §!"+§.§2!H§;
   import §!"+§.§[!Q§;
   import §"!G§.§3!f§;
   import §%f§.§"!i§;
   import §%f§.§?6§;
   import §%f§.§[@§;
   import §&!>§.§ !2§;
   import §1Q§.§#o§;
   import §1Q§.§'""§;
   import §53§.§^M§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §=!6§.§+8§;
   import §=!k§.§2"§;
   import §=!k§.§[!4§;
   import §=0§.HighscoreSidebar;
   import §=b§.§5!p§;
   import §=b§.ColorFadeLayerEvent;
   import §>P§.§,3§;
   import §?I§.§=!L§;
   import §?I§.§^!!§;
   import com.angrybirds.§4"6§;
   import com.angrybirds.utils.§9!`§;
   import com.angrybirds.utils.§>]§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §^!B§ extends §4H§
   {
      
      private static const §4!g§:Number = 50;
      
      private static const §"!r§:Number = 0.05;
      
      private static const §9Q§:int = 99;
      
      public static const §'u§:String = "StatePlay";
      
      private static const §`!U§:Number = -10 * 1000;
      
      private static const §%G§:Number = 15 * 1000;
      
      private static const §0!T§:int = 8;
       
      
      private var §-!B§:Boolean = false;
      
      private var § F§:Number = -10000.0;
      
      private var §9!-§:int = 0;
      
      private var §^!§:Number = 0;
      
      private var §%!X§:Number = 50;
      
      private var §6!t§:§ !2§;
      
      private var §<"3§:§[!Q§;
      
      protected var § p§:§5!p§ = null;
      
      private var §6!d§:Boolean;
      
      private var §9e§:Boolean;
      
      private var §6l§:Boolean;
      
      private var §6!@§:int;
      
      private var §<&§:Timer;
      
      public function §^!B§(param1:§3"&§, param2:§3!f§, param3:Boolean, param4:§2!H§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§<"3§ = param4 as §[!Q§;
      }
      
      override protected function init() : void
      {
         this.§ p§ = new §5!p§(0,0,0,1);
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
         §^!6§.container.mClip.addChild(this.§ p§);
         this.§6!t§ = new § !2§(this);
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §8!1§.§31§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§6!d§ = false;
         this.§#! §();
         §"!i§.§&!R§(§?6§.§!!M§,§!3§.currentLevel);
         (§-O§.§5!1§ as AngryBirdsCustom).§]v§.§&!R§(§9!`§.§2!v§);
         this.§9e§ = true;
      }
      
      protected function §#! §() : void
      {
         if(this.§ p§ && !this.§6!d§)
         {
            this.§ p§.mouseEnabled = true;
            this.§6!d§ = true;
            this.§ p§.§+b§(1);
            this.§ p§.§<!9§(0,0.25);
            this.§ p§.addEventListener(ColorFadeLayerEvent.§4!U§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§ p§.mouseEnabled = false;
         this.§ p§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.onFadeComplete);
         §^!6§.container.mClip.removeChild(this.§ p§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §^!6§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§&U§();
         §[@§.§"e§.updateTextFields(§^!6§.container,"StatePlay");
         this.§7v§();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(false);
         this.§`9§();
         this.§;K§();
         this.§6l§ = false;
         this.§^!§ = 0;
      }
      
      protected function §;K§() : void
      {
         var _loc1_:§[!4§ = §-O§.§5!1§.§=<§;
         var _loc2_:Vector.<String> = _loc1_.§@v§.getTutorialNamesForMapping(§2"§.§1!'§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §^!6§.container.mClip.addChild(this.§ p§);
         super.deActivate();
         this.§6!t§.§?!h§();
         this.§>!1§();
         this.§&U§();
         this.§6!t§.removeEventListener(§>]§.§,I§,this.§1!w§);
         this.§6!t§.removeEventListener(§>]§.§4!`§,this.§3"+§);
         if(this.§<&§)
         {
            this.§<&§.stop();
            this.§<&§.removeEventListener(TimerEvent.TIMER,this.§3t§);
            this.§<&§ = null;
         }
         (§-O§.§5!1§ as AngryBirdsCustom).§]v§.§3!%§();
      }
      
      private function §>!1§() : void
      {
         var _loc1_:int = 0;
         if(!this.§-!B§)
         {
            if(this.§ F§ > §%G§)
            {
               this.§-!B§ = true;
               _loc1_ = Math.round(1000 / this.§ F§ * this.§9!-§);
               if(§+8§.§0"$§)
               {
                  §"!i§.§&!R§(§?6§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §"!i§.§&!R§(§?6§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§4"6§.§;!k§.slingshot.mDragging)
            {
               §4"6§.§;!k§.slingshot.shoot();
               §6!>§.changeGameState(§#o§.§3T§);
               return;
            }
            §4"6§.§;!k§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§#!u§();
               §-O§.§5!1§.§-6§.openPopup(new §^!!§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§?" §();
               break;
            case "ZOOM_IN":
               this.§^!§ = §"!r§;
               this.§%!X§ = 0;
               break;
            case "ZOOM_OUT":
               this.§^!§ = -§"!r§;
               this.§%!X§ = 0;
               break;
            case "ZOOM_IN_RELEASE":
               this.§^!§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§^!§ = 0;
         }
      }
      
      private function §?" §() : void
      {
         § K§.§>E§();
         §'"6§(§ K§.§'u§);
         this.§6!t§.§4!O§();
      }
      
      protected function §`9§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§;
         _loc2_ = _loc1_.§&a§;
         _loc1_.§&a§ = §!3§.currentLevel;
         _loc1_.§@!Z§(_loc1_.§=3§,_loc2_ != _loc1_.§&a§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§6l§)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §=!L§());
            this.§6!t§.levelCompleted();
            this.§6!t§.addEventListener(§>]§.§,I§,this.§1!w§);
            this.§6!t§.addEventListener(§>]§.§4!`§,this.§3"+§);
            this.§6l§ = true;
            §"!i§.§&!R§(§?6§.§%!i§,§!3§.currentLevel,this.§0!C§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§2F§) : §#o§
      {
         return new §'""§(param1,§!3§);
      }
      
      private function §=!n§(param1:Number) : void
      {
         this.§ F§ += param1;
         if(this.§ F§ > 0)
         {
            ++this.§9!-§;
         }
      }
      
      private function §&U§() : void
      {
         this.§ F§ = §`!U§;
         this.§9!-§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§9e§ && !§4"6§.isPaused)
         {
            this.§9e§ = false;
            §]d§.§]!u§();
            §4"6§.§;!k§.background.§'G§();
         }
         this.§=!n§(param1);
         if(!§4"6§.isPaused)
         {
            §^M§.§"e§.update(param1);
         }
         this.§7v§();
         this.§7"-§(param1);
         if(nextState.length > 0 && this.§4!l§())
         {
            this.§6!t§.§4!O§();
         }
         else if(nextState == §7H§.§'u§)
         {
            this.§6!t§.§4!O§();
         }
         if(!§4"6§.§;!k§.slingshot.birdsAvailable || !§4"6§.§;!k§.objects.isPigsAlive())
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         }
      }
      
      private function §7v§() : void
      {
         var _loc1_:int = §6!>§.getScore(10);
         §^!6§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.getScoreForLevel(§!3§.currentLevel);
         §^!6§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§4!l§();
      }
      
      protected function §4!l§() : Boolean
      {
         return this.§6!t§.§#!m§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §?%§.§'u§;
      }
      
      override public function getLoserStateName() : String
      {
         return §''§.§'u§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[@§.§"e§.updateTextFields(§^!6§.container,"StatePlay");
      }
      
      private function §7"-§(param1:Number) : void
      {
         if(this.§^!§)
         {
            this.§%!X§ -= param1;
            if(this.§%!X§ <= 0)
            {
               §6!>§.doUserZoom(this.§^!§ > 0);
               this.§%!X§ += §4!g§;
            }
         }
      }
      
      public function get §4!d§() : §3"&§
      {
         return §!3§;
      }
      
      public function get §0!C§() : §#o§
      {
         return §6!>§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§9!j§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§-O§.§5!1§.§-6§.§ !I§())
                  {
                     §4"6§.§;!k§.§+!Q§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§-O§.§5!1§.§-6§.§ !I§())
               {
                  this.§?" §();
                  break;
               }
         }
         §4"6§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §4"6§.controller.keyUp(param1);
      }
      
      private function §#!u§() : String
      {
         var _loc1_:int = 0;
         if(§!3§.currentLevel.indexOf("1-") == 0)
         {
            return §!3§.currentLevel.substr(2);
         }
         if(§!3§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§!3§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §!3§.currentLevel;
      }
      
      private function §3"+§(param1:§>]§) : void
      {
         this.§6!t§.removeEventListener(§>]§.§,I§,this.§1!w§);
         this.§6!t§.removeEventListener(§>]§.§4!`§,this.§3"+§);
         if(this.§6!@§ < §0!T§)
         {
            this.§<&§ = new Timer(1000 * 2 * (this.§6!@§ + 1) + 2000);
            this.§<&§.addEventListener(TimerEvent.TIMER,this.§3t§);
            this.§<&§.start();
            ++this.§6!@§;
         }
         else
         {
            §'"6§(§=%§.§'u§);
         }
      }
      
      private function §3t§(param1:TimerEvent) : void
      {
         this.§6!t§.§?!h§();
         this.§6!t§.levelCompleted();
         this.§6!t§.addEventListener(§>]§.§,I§,this.§1!w§);
         this.§6!t§.addEventListener(§>]§.§4!`§,this.§3"+§);
         if(this.§<&§)
         {
            this.§<&§.removeEventListener(TimerEvent.TIMER,this.§3t§);
         }
      }
      
      private function §1!w§(param1:§>]§) : void
      {
         this.§6!t§.removeEventListener(§>]§.§4!`§,this.§3"+§);
         this.§6!t§.removeEventListener(§>]§.§,I§,this.§1!w§);
         if(this.§<&§)
         {
            this.§<&§.removeEventListener(TimerEvent.TIMER,this.§3t§);
            this.§<&§.stop();
            this.§<&§ = null;
         }
      }
   }
}
