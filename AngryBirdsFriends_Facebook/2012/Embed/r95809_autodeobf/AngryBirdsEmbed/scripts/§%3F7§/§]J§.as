package §?7§
{
   import §"V§.§true§;
   import §%J§.§,3§;
   import §%J§.§-!A§;
   import §&I§.§3! §;
   import §'8§.§^§;
   import §+!%§.§'!"§;
   import §,p§.§;L§;
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   import §[V§.§`@§;
   import §while§.§+o§;
   import §while§.§-3§;
   
   public class §]J§ extends StatePlay
   {
      
      private static const §5W§:Number = -5 * 1000;
      
      private static const §]!%§:Number = 10 * 1000;
       
      
      private var §2r§:int = 0;
      
      private var §'P§:Number = -5000.0;
      
      private var §&W§:int = 0;
      
      private var §9!%§:Number = 0;
      
      private var §6v§:Number = 0;
      
      public function §]J§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§2r§ = param2;
      }
      
      override protected function getGameLogicController(param1:§'!"§) : §^§
      {
         return new §;L§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §-3§.§53§(§+o§.§!"§,§!P§.§4R§);
      }
      
      override public function init() : void
      {
         §7!1§ = true;
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§4!G§();
         var _loc1_:§+!-§ = §!P§.§1'§(§!P§.§4R§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§"S§();
            if(§?'§.§5!§.slingshot)
            {
               _loc2_ += §?'§.§5!§.slingshot.§1o§();
            }
            this.§2r§ = Math.min(this.§2r§,_loc2_);
         }
         if(this.§2r§ > 0)
         {
            (§6!$§.getItemByName("TextField_HighScore") as §`@§).setText(this.§2r§.toString());
         }
         else
         {
            §6!$§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §6!$§.getItemByName("Container_LevelscoreContainer").y = §6!$§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%!1§();
         this.§4!G§();
      }
      
      private function §%!1§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§'P§ > §]!%§)
         {
            _loc1_ = Math.round(1000 / this.§'P§ * this.§&W§);
            _loc2_ = §!P§.§4R§;
            §-3§.§#=§(_loc1_,_loc2_,§3! §.§0!%§);
         }
      }
      
      private function §-r§(param1:Number) : void
      {
         this.§'P§ += param1;
         if(this.§'P§ > 0)
         {
            ++this.§&W§;
         }
         if(this.§9!%§ != §?'§.§`[§() || this.§6v§ != §?'§.§3h§())
         {
            this.§4!G§();
         }
      }
      
      private function §4!G§() : void
      {
         this.§'P§ = §5W§;
         this.§&W§ = 0;
         this.§9!%§ = §?'§.§`[§();
         this.§6v§ = §?'§.§3h§();
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = §!P§.§4R§;
         var _loc2_:int = §#!1§.getScore();
         §-3§.§53§(§+o§.§%!2§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §-!A§.§ 4§();
               break;
            case "POWERUP":
               §,3§.§1a§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §,3§.§1a§(false);
               break;
            case "ZOOM_IN":
               §#!1§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §#!1§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §#!1§.getScore();
         var _loc3_:int = §`!+§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§`!+§.getValue() + param1 * §"W§);
            §`!+§.assign(_loc3_);
         }
         (§6!$§.getItemByName("TextField_CurrentScore") as §`@§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§-r§(param1);
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
   }
}
