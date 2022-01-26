package §;!§
{
   import § ^§.§%!a§;
   import §"n§.§!!G§;
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §=!L§.§%Z§;
   import §=!L§.§4k§;
   import §?@§.§ !y§;
   import §@L§.§?!'§;
   import §[!i§.§!5§;
   import §^!3§.§,"'§;
   import §^!3§.§]!j§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §7!3§ extends §6!X§
   {
      
      private static const §4U§:Number = 50;
      
      private static const §=!!§:Number = 0.05;
      
      private static const §0!B§:int = 99;
      
      public static const §-!q§:String = "StatePlay";
      
      private static const §"+§:Number = -10 * 1000;
      
      private static const §]"§:Number = 15 * 1000;
       
      
      private var §]"+§:Boolean = false;
      
      private var §#! §:Number = -10000.0;
      
      private var §+R§:int = 0;
      
      private var §^E§:Number = 0;
      
      private var §4!q§:Number = 0;
      
      private var §6!,§:§%!a§;
      
      private var §@!H§:§%!I§;
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      private var §`!h§:Boolean;
      
      public function §7!3§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:§#!R§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§@!H§ = param4 as §%!I§;
      }
      
      override protected function init() : void
      {
         this.§'x§ = new §,!e§(0,0,0,1);
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         §?P§.container.mClip.addChild(this.§'x§);
         this.§6!,§ = new §%!a§(this);
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.View_LevelPlay[0];
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§;!u§ = false;
         this.§^t§();
         §[!-§.§@v§(§+!a§.§[`§,§&" §.currentLevel);
         this.§`!h§ = true;
      }
      
      protected function §^t§() : void
      {
         if(this.§'x§ && !this.§;!u§)
         {
            this.§'x§.mouseEnabled = true;
            this.§;!u§ = true;
            this.§'x§.§7z§(1);
            this.§'x§.§=v§(0,0.25);
            this.§'x§.addEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§'x§.mouseEnabled = false;
         this.§'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         §?P§.container.mClip.removeChild(this.§'x§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?P§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§%C§();
         §!!G§.§2Z§.updateTextFields(§?P§.container,"StatePlay");
         this.§6!O§();
         this.§""&§();
         this.§[P§();
         this.§^E§ = 0;
      }
      
      protected function §[P§() : void
      {
         var _loc1_:§4k§ = §6!!§.singleton.§6"#§;
         var _loc2_:Vector.<String> = _loc1_.§2s§.getTutorialNamesForMapping(§%Z§.§##§);
         _loc1_.§-z§(_loc2_,true,true,true,false,null,true,true);
      }
      
      override public function deActivate() : void
      {
         §?P§.container.mClip.addChild(this.§'x§);
         super.deActivate();
         this.§6!,§.§]K§();
         this.§=!C§();
         this.§%C§();
      }
      
      private function §=!C§() : void
      {
         var _loc1_:int = 0;
         if(!this.§]"+§)
         {
            if(this.§#! § > §]"§)
            {
               this.§]"+§ = true;
               _loc1_ = Math.round(1000 / this.§#! § * this.§+R§);
               if(§1"&§.§'!g§)
               {
                  §[!-§.§@v§(§+!a§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §[!-§.§@v§(§+!a§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§&!"§.§1!D§.slingshot.mDragging)
            {
               §&!"§.§1!D§.slingshot.shoot();
               §>A§.changeGameState(§,"'§.§4]§);
               return;
            }
            §&!"§.§1!D§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               this.§7L§();
               break;
            case "RESTART_LEVEL":
               this.§=3§();
               break;
            case "ZOOM_IN":
               this.§^E§ = §=!!§;
               this.§4!q§ = §4U§;
               break;
            case "ZOOM_OUT":
               this.§^E§ = -§=!!§;
               this.§4!q§ = §4U§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§^E§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§^E§ = 0;
               break;
            case "BUTTON_FULLSCREEN":
               (§6!!§.singleton as §4!=§).§?!l§();
         }
      }
      
      private function §7L§() : void
      {
         var _loc1_:String = this.§%!]§();
         §6!!§.singleton.§%![§.openPopup(new §!5§(_loc1_));
      }
      
      private function §=3§() : void
      {
         §[j§.§=!<§();
         §<f§(§[j§.§-!q§);
         this.§6!,§.§8o§();
      }
      
      protected function §""&§() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         this.§6!,§.levelCompleted();
         §[!-§.§@v§(§+!a§.§-!y§,§&" §.currentLevel,this.§4!n§.getScore(10));
      }
      
      override protected function getGameLogicController(param1:§?!'§) : §,"'§
      {
         return new §]!j§(param1,§&" §);
      }
      
      private function §,B§(param1:Number) : void
      {
         this.§#! § += param1;
         if(this.§#! § > 0)
         {
            ++this.§+R§;
         }
      }
      
      private function §%C§() : void
      {
         this.§#! § = §"+§;
         this.§+R§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§`!h§ && !§&!"§.isPaused)
         {
            this.§`!h§ = false;
            §'!c§.§&j§();
            §&!"§.§1!D§.background.§`!e§();
         }
         this.§,B§(param1);
         if(!§&!"§.isPaused)
         {
            § !y§.§2Z§.update(param1);
         }
         this.§6!O§();
         this.§[V§(param1);
         if(nextState.length > 0 && this.§@>§())
         {
            this.§6!,§.§8o§();
         }
         else if(nextState == §"o§.§-!q§)
         {
            this.§6!,§.§8o§();
         }
      }
      
      private function §6!O§() : void
      {
         var _loc1_:int = §>A§.getScore(10);
         §?P§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§6!!§.singleton as §4!=§).§?!b§.getScoreForLevel(§&" §.currentLevel);
         §?P§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§@>§();
      }
      
      protected function §@>§() : Boolean
      {
         return this.§6!,§.§+!h§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §=-§.§-!q§;
      }
      
      override public function getLoserStateName() : String
      {
         return §@!C§.§-!q§;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!G§.§2Z§.updateTextFields(§?P§.container,"StatePlay");
      }
      
      private function §[V§(param1:Number) : void
      {
         if(this.§^E§)
         {
            this.§4!q§ += param1;
            if(this.§4!q§ > §4U§)
            {
               §>A§.doUserZoom(this.§^E§ > 0);
               this.§4!q§ = 0;
            }
         }
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      public function get §4!n§() : §,"'§
      {
         return §>A§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§6!!§.singleton.§%![§.§%&§())
               {
                  this.§=3§();
               }
               break;
            case Keyboard.P:
               if(!§6!!§.singleton.§%![§.§%&§())
               {
                  this.§7L§();
               }
               break;
            case Keyboard.ESCAPE:
               if(!§6!!§.singleton.§%![§.§%&§())
               {
                  this.§7L§();
                  break;
               }
         }
         §&!"§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §&!"§.controller.keyUp(param1);
      }
      
      private function §%!]§() : String
      {
         return §&" §.currentLevel.substr(2);
      }
   }
}
