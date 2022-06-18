package §2>§
{
   import § !9§.§?_§;
   import §0!>§.§,!C§;
   import §0!>§.§<0§;
   import §2T§.§5@§;
   import §3V§.§34§;
   import §3V§.§^!G§;
   import §3u§.§7b§;
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §9s§.§^9§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   
   public class §#E§ extends StatePlay
   {
      
      private static const §[7§:Number = -5 * 1000;
      
      private static const §@!C§:Number = 10 * 1000;
       
      
      private var §@J§:int = 0;
      
      private var §6!;§:Number = -5000.0;
      
      private var §3!L§:int = 0;
      
      private var §8]§:Number = 0;
      
      private var §>!F§:Number = 0;
      
      public function §#E§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§@J§ = param2;
      }
      
      override protected function getGameLogicController(param1:§^9§) : §7b§
      {
         return new §?_§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §^!G§.§[V§(§34§.§#!D§,§'?§.§"t§);
      }
      
      override public function init() : void
      {
         §]!5§ = true;
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§9F§();
         var _loc1_:§"!;§ = §'?§.§>5§(§'?§.§"t§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§5!>§();
            if(§[!4§.§continue§.slingshot)
            {
               _loc2_ += §[!4§.§continue§.slingshot.§<Y§();
            }
            this.§@J§ = Math.min(this.§@J§,_loc2_);
         }
         if(this.§@J§ > 0)
         {
            (§!s§.getItemByName("TextField_HighScore") as §5@§).setText(this.§@J§.toString());
         }
         else
         {
            §!s§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §!s§.getItemByName("Container_LevelscoreContainer").y = §!s§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3!-§();
         this.§9F§();
      }
      
      private function §3!-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§6!;§ > §@!C§)
         {
            _loc1_ = Math.round(1000 / this.§6!;§ * this.§3!L§);
            _loc2_ = §'?§.§"t§;
            §^!G§.§3!O§(_loc1_,_loc2_,§,L§.§'>§);
         }
      }
      
      private function §7! §(param1:Number) : void
      {
         this.§6!;§ += param1;
         if(this.§6!;§ > 0)
         {
            ++this.§3!L§;
         }
         if(this.§8]§ != §[!4§.§!L§() || this.§>!F§ != §[!4§.§-!§())
         {
            this.§9F§();
         }
      }
      
      private function §9F§() : void
      {
         this.§6!;§ = §[7§;
         this.§3!L§ = 0;
         this.§8]§ = §[!4§.§!L§();
         this.§>!F§ = §[!4§.§-!§();
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
         var _loc1_:String = §'?§.§"t§;
         var _loc2_:int = §4!!§.getScore();
         §^!G§.§[V§(§34§.§&]§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §<0§.§8o§();
               break;
            case "POWERUP":
               §,!C§.§'c§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §,!C§.§'c§(false);
               break;
            case "ZOOM_IN":
               §4!!§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §4!!§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §4!!§.getScore();
         var _loc3_:int = §-s§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§-s§.getValue() + param1 * §'!!§);
            §-s§.assign(_loc3_);
         }
         (§!s§.getItemByName("TextField_CurrentScore") as §5@§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§7! §(param1);
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
   }
}
