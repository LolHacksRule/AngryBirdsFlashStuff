package §`!%§
{
   import § !;§.§%'§;
   import § !;§.§^!3§;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=!4§.§7!1§;
   import §=!4§.§>y§;
   import §=^§.§ p§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>l§.§8!9§;
   import §?!D§.§if§;
   import §@s§.§'!0§;
   
   public class §^s§ extends StatePlay
   {
      
      private static const §55§:Number = -5 * 1000;
      
      private static const §!0§:Number = 10 * 1000;
       
      
      private var §<!?§:int = 0;
      
      private var §;0§:Number = -5000.0;
      
      private var §&J§:int = 0;
      
      private var §6J§:Number = 0;
      
      private var §8! §:Number = 0;
      
      public function §^s§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§<!?§ = param2;
      }
      
      override protected function getGameLogicController(param1:§#;§) : §if§
      {
         return new §8!9§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §%'§.§#r§(§^!3§.§2!,§,§6M§.§[z§);
      }
      
      override public function init() : void
      {
         § !G§ = true;
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§8v§();
         var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§,!%§();
            if(§,!!§.§;4§.slingshot)
            {
               _loc2_ += §,!!§.§;4§.slingshot.§^! §();
            }
            this.§<!?§ = Math.min(this.§<!?§,_loc2_);
         }
         if(this.§<!?§ > 0)
         {
            (§#!4§.getItemByName("TextField_HighScore") as § p§).setText(this.§<!?§.toString());
         }
         else
         {
            §#!4§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §#!4§.getItemByName("Container_LevelscoreContainer").y = §#!4§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9!%§();
         this.§8v§();
      }
      
      private function §9!%§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§;0§ > §!0§)
         {
            _loc1_ = Math.round(1000 / this.§;0§ * this.§&J§);
            _loc2_ = §6M§.§[z§;
            §%'§.§,!?§(_loc1_,_loc2_,§'_§.§;'§);
         }
      }
      
      private function §?E§(param1:Number) : void
      {
         this.§;0§ += param1;
         if(this.§;0§ > 0)
         {
            ++this.§&J§;
         }
         if(this.§6J§ != §,!!§.§[i§() || this.§8! § != §,!!§.§#9§())
         {
            this.§8v§();
         }
      }
      
      private function §8v§() : void
      {
         this.§;0§ = §55§;
         this.§&J§ = 0;
         this.§6J§ = §,!!§.§[i§();
         this.§8! § = §,!!§.§#9§();
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
         var _loc1_:String = §6M§.§[z§;
         var _loc2_:int = §3K§.getScore();
         §%'§.§#r§(§^!3§.§]m§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §7!1§.§3!;§();
               break;
            case "POWERUP":
               §>y§.§]>§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §>y§.§]>§(false);
               break;
            case "ZOOM_IN":
               §3K§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §3K§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §3K§.getScore();
         var _loc3_:int = §=!@§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§=!@§.getValue() + param1 * §"2§);
            §=!@§.assign(_loc3_);
         }
         (§#!4§.getItemByName("TextField_CurrentScore") as § p§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§?E§(param1);
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
   }
}
