package § !@§
{
   import §%4§.§`a§;
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §,Z§.§=!>§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6!C§.§!;§;
   import §6!C§.§+7§;
   import §6A§.§ !§;
   import §7g§.§1Q§;
   import §=!0§.§>I§;
   import §>!7§.§@!+§;
   
   public class §<!=§ extends StatePlay
   {
      
      private static const §?5§:Number = -5 * 1000;
      
      private static const §5!4§:Number = 10 * 1000;
       
      
      private var §5G§:int = 0;
      
      private var §=U§:Number = -5000.0;
      
      private var §3!F§:int = 0;
      
      private var §;!$§:Number = 0;
      
      private var §&!=§:Number = 0;
      
      public function §<!=§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§5G§ = param2;
      }
      
      override protected function getGameLogicController(param1:§ !§) : §@!+§
      {
         return new §=!>§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §;9§.§"!A§(§-Q§.§'!%§,§[4§.§"!>§);
      }
      
      override public function init() : void
      {
         §+_§ = true;
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§<!@§();
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§+v§();
            if(§=w§.§ o§.slingshot)
            {
               _loc2_ += §=w§.§ o§.slingshot.§7!@§();
            }
            this.§5G§ = Math.min(this.§5G§,_loc2_);
         }
         if(this.§5G§ > 0)
         {
            (§]F§.getItemByName("TextField_HighScore") as §`a§).setText(this.§5G§.toString());
         }
         else
         {
            §]F§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §]F§.getItemByName("Container_LevelscoreContainer").y = §]F§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+!9§();
         this.§<!@§();
      }
      
      private function §+!9§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§=U§ > §5!4§)
         {
            _loc1_ = Math.round(1000 / this.§=U§ * this.§3!F§);
            _loc2_ = §[4§.§"!>§;
            §;9§.§=q§(_loc1_,_loc2_,§>I§.§0P§);
         }
      }
      
      private function §>!D§(param1:Number) : void
      {
         this.§=U§ += param1;
         if(this.§=U§ > 0)
         {
            ++this.§3!F§;
         }
         if(this.§;!$§ != §=w§.§;!B§() || this.§&!=§ != §=w§.§0E§())
         {
            this.§<!@§();
         }
      }
      
      private function §<!@§() : void
      {
         this.§=U§ = §?5§;
         this.§3!F§ = 0;
         this.§;!$§ = §=w§.§;!B§();
         this.§&!=§ = §=w§.§0E§();
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
         var _loc1_:String = §[4§.§"!>§;
         var _loc2_:int = §!!&§.getScore();
         §;9§.§"!A§(§-Q§.§0Y§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §!;§.§?"§();
               break;
            case "POWERUP":
               §+7§.§?%§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §+7§.§?%§(false);
               break;
            case "ZOOM_IN":
               §!!&§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §!!&§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §!!&§.getScore();
         var _loc3_:int = §+y§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§+y§.getValue() + param1 * §9b§);
            §+y§.assign(_loc3_);
         }
         (§]F§.getItemByName("TextField_CurrentScore") as §`a§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§>!D§(param1);
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
   }
}
