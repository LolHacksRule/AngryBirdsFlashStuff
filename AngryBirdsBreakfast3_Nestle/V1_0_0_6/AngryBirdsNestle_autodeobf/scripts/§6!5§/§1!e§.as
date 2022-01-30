package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§6"$§;
   import §%z§.§?8§;
   import §&<§.§^!#§;
   import §&_§.§!V§;
   import §&_§.§+?§;
   import §+!5§.§2O§;
   import §+!5§.ColorFadeLayerEvent;
   import §-!Y§.§%!%§;
   import §-w§.§ !m§;
   import §-w§.§;3§;
   import §2!N§.§&!j§;
   import §2!N§.§;P§;
   import §2W§.§+!d§;
   import §2W§.§4L§;
   import §2W§.§7"4§;
   import §63§.§'!a§;
   import §6t§.§&2§;
   import §@!6§.§3!5§;
   import §]K§.HighscoreSidebar;
   import §]k§.§<S§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import com.angrybirds.utils.§ b§;
   import com.angrybirds.utils.§,!U§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §1!e§ extends §#!S§
   {
      
      private static const §0=§:Number = 50;
      
      private static const §>l§:Number = 0.05;
      
      private static const §3b§:int = 99;
      
      public static const §7w§:String = "StatePlay";
      
      private static const §%8§:Number = -10 * 1000;
      
      private static const §%>§:Number = 15 * 1000;
      
      private static const §%D§:int = 8;
       
      
      private var §&!0§:Boolean = false;
      
      private var §,",§:Number = -10000.0;
      
      private var §;!!§:int = 0;
      
      private var § N§:Number = 0;
      
      private var §^D§:Number = 50;
      
      private var §'" §:§'!a§;
      
      private var §'K§:§6"$§;
      
      protected var §;"3§:§2O§ = null;
      
      private var §#"&§:Boolean;
      
      private var §"2§:Boolean;
      
      private var §@!m§:Boolean;
      
      private var §#!%§:int;
      
      private var §=i§:Timer;
      
      public function §1!e§(param1:§ q§, param2:§>u§, param3:Boolean, param4:§?8§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§'K§ = param4 as §6"$§;
      }
      
      override protected function init() : void
      {
         this.§;"3§ = new §2O§(0,0,0,1);
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
         § !z§.container.mClip.addChild(this.§;"3§);
         this.§'" § = new §'!a§(this);
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §#p§.§'"0§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§#"&§ = false;
         this.§0!j§();
         §4L§.§2!4§(§7"4§.§6!Z§,§="4§.currentLevel);
         (§-!I§.§[f§ as AngryBirdsCustom).§5x§.§2!4§(§,!U§.§5!w§);
         this.§"2§ = true;
      }
      
      protected function §0!j§() : void
      {
         if(this.§;"3§ && !this.§#"&§)
         {
            this.§;"3§.mouseEnabled = true;
            this.§#"&§ = true;
            this.§;"3§.§6!L§(1);
            this.§;"3§.§5!F§(0,0.25);
            this.§;"3§.addEventListener(ColorFadeLayerEvent.§@!?§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§;"3§.mouseEnabled = false;
         this.§;"3§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.onFadeComplete);
         § !z§.container.mClip.removeChild(this.§;"3§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !z§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§?"+§();
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"StatePlay");
         this.§8K§();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(false);
         this.§3+§();
         this.§9!5§();
         this.§@!m§ = false;
         this.§ N§ = 0;
      }
      
      protected function §9!5§() : void
      {
         var _loc1_:§;3§ = §-!I§.§[f§.§5!i§;
         var _loc2_:Vector.<String> = _loc1_.§-!#§.getTutorialNamesForMapping(§ !m§.§]H§);
         _loc1_.§"!4§(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         § !z§.container.mClip.addChild(this.§;"3§);
         super.deActivate();
         this.§'" §.§!R§();
         this.§4!G§();
         this.§?"+§();
         this.§'" §.removeEventListener(§ b§.§-W§,this.§3,§);
         this.§'" §.removeEventListener(§ b§.§,! §,this.§ ",§);
         if(this.§=i§)
         {
            this.§=i§.stop();
            this.§=i§.removeEventListener(TimerEvent.TIMER,this.§]!T§);
            this.§=i§ = null;
         }
         (§-!I§.§[f§ as AngryBirdsCustom).§5x§.§5!m§();
      }
      
      private function §4!G§() : void
      {
         var _loc1_:int = 0;
         if(!this.§&!0§)
         {
            if(this.§,",§ > §%>§)
            {
               this.§&!0§ = true;
               _loc1_ = Math.round(1000 / this.§,",§ * this.§;!!§);
               if(§%!%§.§4K§)
               {
                  §4L§.§2!4§(§7"4§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §4L§.§2!4§(§7"4§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:String = null;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§6!E§.§7I§.slingshot.mDragging)
            {
               §6!E§.§7I§.slingshot.shoot();
               §6!P§.changeGameState(§;P§.§7,§);
               return;
            }
            §6!E§.§7I§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = this.§3!=§();
               §-!I§.§[f§.§@!C§.openPopup(new §!V§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§4!I§();
               break;
            case "ZOOM_IN":
               this.§ N§ = §>l§;
               this.§^D§ = 0;
               break;
            case "ZOOM_OUT":
               this.§ N§ = -§>l§;
               this.§^D§ = 0;
               break;
            case "ZOOM_IN_RELEASE":
               this.§ N§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§ N§ = 0;
         }
      }
      
      private function §4!I§() : void
      {
         §4!R§.§2<§();
         §?n§(§4!R§.§7w§);
         this.§'" §.§+![§();
      }
      
      protected function §3+§() : void
      {
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:String = null;
         _loc1_ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§;
         _loc2_ = _loc1_.§>"5§;
         _loc1_.§>"5§ = §="4§.currentLevel;
         _loc1_.§=O§(_loc1_.§7d§,_loc2_ != _loc1_.§>"5§);
      }
      
      override protected function levelCompleted() : void
      {
         if(!this.§@!m§)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §+?§());
            this.§'" §.levelCompleted();
            this.§'" §.addEventListener(§ b§.§-W§,this.§3,§);
            this.§'" §.addEventListener(§ b§.§,! §,this.§ ",§);
            this.§@!m§ = true;
            §4L§.§2!4§(§7"4§.§,!R§,§="4§.currentLevel,this.§`!M§.getScore(10));
         }
      }
      
      override protected function getGameLogicController(param1:§<S§) : §;P§
      {
         return new §&!j§(param1,§="4§);
      }
      
      private function §^%§(param1:Number) : void
      {
         this.§,",§ += param1;
         if(this.§,",§ > 0)
         {
            ++this.§;!!§;
         }
      }
      
      private function §?"+§() : void
      {
         this.§,",§ = §%8§;
         this.§;!!§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§"2§ && !§6!E§.isPaused)
         {
            this.§"2§ = false;
            §3!5§.§,!8§();
            §6!E§.§7I§.background.§`@§();
         }
         this.§^%§(param1);
         if(!§6!E§.isPaused)
         {
            §&2§.§<"5§.update(param1);
         }
         this.§8K§();
         this.§&$§(param1);
         if(nextState.length > 0 && this.§4P§())
         {
            this.§'" §.§+![§();
         }
         else if(nextState == §?;§.§7w§)
         {
            this.§'" §.§+![§();
         }
         if(!§6!E§.§7I§.slingshot.birdsAvailable || !§6!E§.§7I§.objects.isPigsAlive())
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         }
      }
      
      private function §8K§() : void
      {
         var _loc1_:int = §6!P§.getScore(10);
         § !z§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.getScoreForLevel(§="4§.currentLevel);
         § !z§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§4P§();
      }
      
      protected function §4P§() : Boolean
      {
         return this.§'" §.§]B§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §84§.§7w§;
      }
      
      override public function getLoserStateName() : String
      {
         return §6!2§.§7w§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"StatePlay");
      }
      
      private function §&$§(param1:Number) : void
      {
         if(this.§ N§)
         {
            this.§^D§ -= param1;
            if(this.§^D§ <= 0)
            {
               §6!P§.doUserZoom(this.§ N§ > 0);
               this.§^D§ += §0=§;
            }
         }
      }
      
      public function get §+!t§() : § q§
      {
         return §="4§;
      }
      
      public function get §`!M§() : §;P§
      {
         return §6!P§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!AngryBirdsCustom.§1!A§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§-!I§.§[f§.§@!C§.§+!F§())
                  {
                     §6!E§.§7I§.§0!9§();
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§-!I§.§[f§.§@!C§.§+!F§())
               {
                  this.§4!I§();
                  break;
               }
         }
         §6!E§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §6!E§.controller.keyUp(param1);
      }
      
      private function §3!=§() : String
      {
         var _loc1_:int = 0;
         if(§="4§.currentLevel.indexOf("1-") == 0)
         {
            return §="4§.currentLevel.substr(2);
         }
         if(§="4§.currentLevel.indexOf("2-") == 0)
         {
            _loc1_ = int(§="4§.currentLevel.substr(2)) + 5;
            return _loc1_ + "";
         }
         return §="4§.currentLevel;
      }
      
      private function § ",§(param1:§ b§) : void
      {
         this.§'" §.removeEventListener(§ b§.§-W§,this.§3,§);
         this.§'" §.removeEventListener(§ b§.§,! §,this.§ ",§);
         if(this.§#!%§ < §%D§)
         {
            this.§=i§ = new Timer(1000 * 2 * (this.§#!%§ + 1) + 2000);
            this.§=i§.addEventListener(TimerEvent.TIMER,this.§]!T§);
            this.§=i§.start();
            ++this.§#!%§;
         }
         else
         {
            §?n§(§^!+§.§7w§);
         }
      }
      
      private function §]!T§(param1:TimerEvent) : void
      {
         this.§'" §.§!R§();
         this.§'" §.levelCompleted();
         this.§'" §.addEventListener(§ b§.§-W§,this.§3,§);
         this.§'" §.addEventListener(§ b§.§,! §,this.§ ",§);
         if(this.§=i§)
         {
            this.§=i§.removeEventListener(TimerEvent.TIMER,this.§]!T§);
         }
      }
      
      private function §3,§(param1:§ b§) : void
      {
         this.§'" §.removeEventListener(§ b§.§,! §,this.§ ",§);
         this.§'" §.removeEventListener(§ b§.§-W§,this.§3,§);
         if(this.§=i§)
         {
            this.§=i§.removeEventListener(TimerEvent.TIMER,this.§]!T§);
            this.§=i§.stop();
            this.§=i§ = null;
         }
      }
   }
}
