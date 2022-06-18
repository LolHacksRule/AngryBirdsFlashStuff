package §!$§
{
   import §!^§.§"%§;
   import §+w§.§&s§;
   import §-!'§.§&!H§;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §4!'§.§0g§;
   import §4!'§.§50§;
   import §8!#§.§<n§;
   import §;U§.§1!5§;
   import §;U§.§]q§;
   import §>%§.§]3§;
   import §>A§.§-!"§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import §`i§.§2W§;
   
   public class §"!?§ extends StatePlay
   {
      
      private static const §9!6§:Number = -5 * 1000;
      
      private static const §;!+§:Number = 10 * 1000;
       
      
      private var §"f§:int = 0;
      
      private var §1!&§:Number = -5000.0;
      
      private var §=4§:int = 0;
      
      private var §>!E§:Number = 0;
      
      private var §3r§:Number = 0;
      
      public function §"!?§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§"f§ = param2;
      }
      
      override protected function getGameLogicController(param1:§2W§) : §-!"§
      {
         return new §&s§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §50§.§>J§(§0g§.§5"§,§#!G§.§9C§);
      }
      
      override public function init() : void
      {
         §@!+§ = true;
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§#!&§();
         var _loc1_:§3!H§ = §#!G§.§2!0§(§#!G§.§9C§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§8!<§();
            if(§]3§.§;v§.slingshot)
            {
               _loc2_ += §]3§.§;v§.slingshot.§9#§();
            }
            this.§"f§ = Math.min(this.§"f§,_loc2_);
         }
         if(this.§"f§ > 0)
         {
            (§+!2§.getItemByName("TextField_HighScore") as §&!H§).setText(this.§"f§.toString());
         }
         else
         {
            §+!2§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §+!2§.getItemByName("Container_LevelscoreContainer").y = §+!2§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-%§();
         this.§#!&§();
      }
      
      private function §-%§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§1!&§ > §;!+§)
         {
            _loc1_ = Math.round(1000 / this.§1!&§ * this.§=4§);
            _loc2_ = §#!G§.§9C§;
            §50§.§]!C§(_loc1_,_loc2_,§<n§.§;!?§);
         }
      }
      
      private function §+!H§(param1:Number) : void
      {
         this.§1!&§ += param1;
         if(this.§1!&§ > 0)
         {
            ++this.§=4§;
         }
         if(this.§>!E§ != §]3§.§0$§() || this.§3r§ != §]3§.§]!-§())
         {
            this.§#!&§();
         }
      }
      
      private function §#!&§() : void
      {
         this.§1!&§ = §9!6§;
         this.§=4§ = 0;
         this.§>!E§ = §]3§.§0$§();
         this.§3r§ = §]3§.§]!-§();
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
         var _loc1_:String = §#!G§.§9C§;
         var _loc2_:int = §-!0§.getScore();
         §50§.§>J§(§0g§.§4!0§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §1!5§.final();
               break;
            case "POWERUP":
               §]q§.§&&§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §]q§.§&&§(false);
               break;
            case "ZOOM_IN":
               §-!0§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §-!0§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §-!0§.getScore();
         var _loc3_:int = §3Z§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§3Z§.getValue() + param1 * §,f§);
            §3Z§.assign(_loc3_);
         }
         (§+!2§.getItemByName("TextField_CurrentScore") as §&!H§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§+!H§(param1);
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
   }
}
