package §#!]§
{
   import § 2§.§=+§;
   import §!"§.§%!<§;
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§1!7§;
   import §+T§.ColorFadeLayerEvent;
   import §2!,§.§5f§;
   import §2!,§.§`!§;
   import §2!s§.§0l§;
   import §2!s§.§9#§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §7;§.§ K§;
   import §7;§.§%!D§;
   import §;X§.§4!@§;
   import §=!d§.§5!5§;
   import §="5§.HighscoreSidebar;
   import §>T§.§@!Y§;
   import §>T§.§]7§;
   import §@!0§.§'a§;
   import §`!s§.§!z§;
   import §`!s§.§5P§;
   import §`!s§.§^2§;
   import com.angrybirds.utils.§2n§;
   import com.angrybirds.utils.§`<§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §-a§ extends §"i§
   {
      
      private static const §5X§:Number = 50;
      
      private static const §,!7§:Number = 0.05;
      
      private static const §>!u§:int = 99;
      
      public static const §]!y§:String = "StatePlay";
      
      private static const §#Z§:Number = -10 * 1000;
      
      private static const §63§:Number = 15 * 1000;
      
      private static const §"!g§:int = 8;
       
      
      private var §7m§:Boolean = false;
      
      private var §`o§:Number = -10000.0;
      
      private var §]!-§:int = 0;
      
      private var §[D§:Number = 0;
      
      private var §1!%§:Number = 50;
      
      private var §;!I§:§%!<§;
      
      private var §4!R§:§9#§;
      
      protected var §0!h§:§1!7§ = null;
      
      private var §[!U§:Boolean;
      
      private var §99§:Boolean;
      
      private var §;m§:Boolean;
      
      private var §'b§:int;
      
      private var §4w§:Timer;
      
      public function §-a§(param1:§-g§, param2:§^!_§, param3:Boolean, param4:§0l§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§4!R§ = param4 as §9#§;
      }
      
      override protected function init() : void
      {
         this.§0!h§ = new §1!7§(0,0,0,1);
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
         §4!q§.container.mClip.addChild(this.§0!h§);
         this.§;!I§ = new §%!<§(this);
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §%!-§.§#t§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§[!U§ = false;
         this.§`"4§();
         §5P§.§ !F§(§!z§.§'!z§,§#n§.currentLevel);
         (§-!2§.§7O§ as AngryBirdsCustom).§'Z§.§ !F§(§`<§.§6L§);
         this.§99§ = true;
      }
      
      protected function §`"4§() : void
      {
         if(this.§0!h§ && !this.§[!U§)
         {
            this.§0!h§.mouseEnabled = true;
            this.§[!U§ = true;
            this.§0!h§.§&'§(1);
            this.§0!h§.§2u§(0,0.25);
            this.§0!h§.addEventListener(ColorFadeLayerEvent.§7! §,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§0!h§.mouseEnabled = false;
         this.§0!h§.removeEventListener(ColorFadeLayerEvent.§7! §,this.onFadeComplete);
         §4!q§.container.mClip.removeChild(this.§0!h§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!q§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§0"§();
         §^2§.§&!;§.updateTextFields(§4!q§.container,"StatePlay");
         this.§6>§();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(false);
         this.§1!E§();
         this.§2=§();
         this.§;m§ = false;
         this.§[D§ = 0;
      }
      
      protected function §2=§() : void
      {
         var _loc1_:§ K§ = §-!2§.§7O§.§-"7§;
         var _loc2_:Vector.<String> = _loc1_.§"!1§.getTutorialNamesForMapping(§%!D§.§<"#§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §4!q§.container.mClip.addChild(this.§0!h§);
         super.deActivate();
         this.§;!I§.§;!z§();
         this.§8q§();
         this.§0"§();
         this.§;!I§.removeEventListener(§2n§.§6j§,this.§-!d§);
         this.§;!I§.removeEventListener(§2n§.§-M§,this.§%!S§);
         if(this.§4w§)
         {
            this.§4w§.stop();
            this.§4w§.removeEventListener(TimerEvent.TIMER,this.§7§);
            this.§4w§ = null;
         }
         (§-!2§.§7O§ as AngryBirdsCustom).§'Z§.§!h§();
      }
      
      private function §8q§() : void
      {
         var _loc1_:int = 0;
         if(!this.§7m§)
         {
            if(this.§`o§ > §63§)
            {
               this.§7m§ = true;
               _loc1_ = Math.round(1000 / this.§`o§ * this.§]!-§);
               if(§5!5§.§ 4§)
               {
                  §5P§.§ !F§(§!z§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §5P§.§ !F§(§!z§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§`i§.§&!L§.slingshot.mDragging)
            {
               §`i§.§&!L§.slingshot.shoot();
               §+"%§.changeGameState(§@!Y§.§5!j§);
               return;
            }
            §`i§.§&!L§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§!!7§();
               §-!2§.§7O§.§0!l§.openPopup(new §`!§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§12§();
               break;
            case "ZOOM_IN":
               this.§[D§ = §,!7§;
               this.§1!%§ = 0;
               break;
            case "ZOOM_OUT":
               this.§[D§ = -§,!7§;
               this.§1!%§ = 0;
               break;
            case "ZOOM_IN_RELEASE":
               this.§[D§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§[D§ = 0;
         }
      }
      
      private function §12§() : void
      {
         §6U§.§2!2§();
         §]a§(§6U§.§]!y§);
         this.§;!I§.§[P§();
      }
      
      protected function §1!E§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§;
         _loc2_ = _loc1_.§>!d§;
         _loc1_.§>!d§ = §#n§.currentLevel;
         _loc1_.§5N§(_loc1_.§^!t§,_loc2_ != _loc1_.§>!d§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§;m§)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §5f§());
            this.§;!I§.levelCompleted();
            this.§;!I§.addEventListener(§2n§.§6j§,this.§-!d§);
            this.§;!I§.addEventListener(§2n§.§-M§,this.§%!S§);
            this.§;m§ = true;
            §5P§.§ !F§(§!z§.§1!;§,§#n§.currentLevel,this.§]h§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§=+§) : §@!Y§
      {
         return new §]7§(param1,§#n§);
      }
      
      private function §1!T§(param1:Number) : void
      {
         this.§`o§ += param1;
         if(this.§`o§ > 0)
         {
            ++this.§]!-§;
         }
      }
      
      private function §0"§() : void
      {
         this.§`o§ = §#Z§;
         this.§]!-§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§99§ && !§`i§.isPaused)
         {
            this.§99§ = false;
            §4!@§.§ true§();
            §`i§.§&!L§.background.§<!J§();
         }
         this.§1!T§(param1);
         if(!§`i§.isPaused)
         {
            §'a§.§&!;§.update(param1);
         }
         this.§6>§();
         this.§^W§(param1);
         if(nextState.length > 0 && this.§4!Z§())
         {
            this.§;!I§.§[P§();
         }
         else if(nextState == §`"%§.§]!y§)
         {
            this.§;!I§.§[P§();
         }
         if(!§`i§.§&!L§.slingshot.birdsAvailable || !§`i§.§&!L§.objects.isPigsAlive())
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         }
      }
      
      private function §6>§() : void
      {
         var _loc1_:int = §+"%§.getScore(10);
         §4!q§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.getScoreForLevel(§#n§.currentLevel);
         §4!q§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§4!Z§();
      }
      
      protected function §4!Z§() : Boolean
      {
         return this.§;!I§.§@!6§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §#!N§.§]!y§;
      }
      
      override public function getLoserStateName() : String
      {
         return §6!"§.§]!y§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §^2§.§&!;§.updateTextFields(§4!q§.container,"StatePlay");
      }
      
      private function §^W§(param1:Number) : void
      {
         if(this.§[D§)
         {
            this.§1!%§ -= param1;
            if(this.§1!%§ <= 0)
            {
               §+"%§.doUserZoom(this.§[D§ > 0);
               this.§1!%§ += §5X§;
            }
         }
      }
      
      public function get §8S§() : §-g§
      {
         return §#n§;
      }
      
      public function get §]h§() : §@!Y§
      {
         return §+"%§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§1!6§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§-!2§.§7O§.§0!l§.§6!7§())
                  {
                     §`i§.§&!L§.§!"$§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§-!2§.§7O§.§0!l§.§6!7§())
               {
                  this.§12§();
                  break;
               }
         }
         §`i§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §`i§.controller.keyUp(param1);
      }
      
      private function §!!7§() : String
      {
         var _loc1_:int = 0;
         if(§#n§.currentLevel.indexOf("1-") == 0)
         {
            return §#n§.currentLevel.substr(2);
         }
         if(§#n§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§#n§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §#n§.currentLevel;
      }
      
      private function §%!S§(param1:§2n§) : void
      {
         this.§;!I§.removeEventListener(§2n§.§6j§,this.§-!d§);
         this.§;!I§.removeEventListener(§2n§.§-M§,this.§%!S§);
         if(this.§'b§ < §"!g§)
         {
            this.§4w§ = new Timer(1000 * 2 * (this.§'b§ + 1) + 2000);
            this.§4w§.addEventListener(TimerEvent.TIMER,this.§7§);
            this.§4w§.start();
            ++this.§'b§;
         }
         else
         {
            §]a§(§^!m§.§]!y§);
         }
      }
      
      private function §7§(param1:TimerEvent) : void
      {
         this.§;!I§.§;!z§();
         this.§;!I§.levelCompleted();
         this.§;!I§.addEventListener(§2n§.§6j§,this.§-!d§);
         this.§;!I§.addEventListener(§2n§.§-M§,this.§%!S§);
         if(this.§4w§)
         {
            this.§4w§.removeEventListener(TimerEvent.TIMER,this.§7§);
         }
      }
      
      private function §-!d§(param1:§2n§) : void
      {
         this.§;!I§.removeEventListener(§2n§.§-M§,this.§%!S§);
         this.§;!I§.removeEventListener(§2n§.§6j§,this.§-!d§);
         if(this.§4w§)
         {
            this.§4w§.removeEventListener(TimerEvent.TIMER,this.§7§);
            this.§4w§.stop();
            this.§4w§ = null;
         }
      }
   }
}
