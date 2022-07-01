package §1!F§
{
   import §!x§.§`!o§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§;!j§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §5#§.§@o§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §<!<§.§7E§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §false§.§!!o§;
   import §false§.§'k§;
   
   public class §>!u§ extends StatePlay
   {
      
      private static const §'!>§:Number = -5 * 1000;
      
      private static const §^K§:Number = 10 * 1000;
       
      
      private var §"Q§:int = 0;
      
      private var §^!P§:Number = -5000.0;
      
      private var §@A§:int = 0;
      
      private var §6P§:Number = 0;
      
      private var §#!W§:Number = 0;
      
      public function §>!u§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§"Q§ = param2;
      }
      
      override protected function getGameLogicController(param1:§7E§) : §@o§
      {
         return new §`!o§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §,8§.§?!@§(§ ^§.§#!e§,§1^§.§ ]§);
      }
      
      override public function init() : void
      {
         §?P§ = true;
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§>!G§();
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§]+§();
            if(§'!V§.§1!2§.slingshot)
            {
               _loc2_ += §'!V§.§1!2§.slingshot.§6J§();
            }
            this.§"Q§ = Math.min(this.§"Q§,_loc2_);
         }
         if(this.§"Q§ > 0)
         {
            (§+!$§.getItemByName("TextField_HighScore") as §;!j§).setText(this.§"Q§.toString());
         }
         else
         {
            §+!$§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §+!$§.getItemByName("Container_LevelscoreContainer").y = §+!$§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4!4§();
         this.§>!G§();
      }
      
      private function §4!4§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§^!P§ > §^K§)
         {
            _loc1_ = Math.round(1000 / this.§^!P§ * this.§@A§);
            _loc2_ = §1^§.§ ]§;
            §,8§.§@!V§(_loc1_,_loc2_,§7j§.§?!X§);
         }
      }
      
      private function §?!P§(param1:Number) : void
      {
         this.§^!P§ += param1;
         if(this.§^!P§ > 0)
         {
            ++this.§@A§;
         }
         if(this.§6P§ != §'!V§.§?!a§() || this.§#!W§ != §'!V§.§<x§())
         {
            this.§>!G§();
         }
      }
      
      private function §>!G§() : void
      {
         this.§^!P§ = §'!>§;
         this.§@A§ = 0;
         this.§6P§ = §'!V§.§?!a§();
         this.§#!W§ = §'!V§.§<x§();
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
         var _loc1_:String = §1^§.§ ]§;
         var _loc2_:int = §5!J§.getScore();
         §,8§.§?!@§(§ ^§.§1!k§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §!!o§.§7§();
               break;
            case "POWERUP":
               §'k§.§ !Q§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §'k§.§ !Q§(false);
               break;
            case "ZOOM_IN":
               §5!J§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §5!J§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §5!J§.getScore();
         var _loc3_:int = §1!l§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§1!l§.getValue() + param1 * §@f§);
            §1!l§.assign(_loc3_);
         }
         (§+!$§.getItemByName("TextField_CurrentScore") as §;!j§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§?!P§(param1);
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
   }
}
