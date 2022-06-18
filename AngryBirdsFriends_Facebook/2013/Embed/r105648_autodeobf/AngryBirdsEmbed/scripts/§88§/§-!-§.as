package §88§
{
   import § `§.§"N§;
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §0!3§.§;!@§;
   import §1t§.§`!B§;
   import §8!=§.§4!§;
   import §8!=§.§=!"§;
   import §;'§.§?!D§;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   import §??§.§5!@§;
   import §@r§.§'!+§;
   import §@r§.§8K§;
   
   public class §-!-§ extends StatePlay
   {
      
      private static const §>!B§:Number = -5 * 1000;
      
      private static const §;k§:Number = 10 * 1000;
       
      
      private var §7!+§:int = 0;
      
      private var §1!C§:Number = -5000.0;
      
      private var §'w§:int = 0;
      
      private var §5#§:Number = 0;
      
      private var §^h§:Number = 0;
      
      public function §-!-§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§7!+§ = param2;
      }
      
      override protected function getGameLogicController(param1:§?!D§) : §"N§
      {
         return new §;!@§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §=!"§.§<!L§(§4!§.§0!?§,§[i§.§0A§);
      }
      
      override public function init() : void
      {
         §[d§ = true;
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§3y§();
         var _loc1_:§1!&§ = §[i§.§2!'§(§[i§.§0A§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§]u§();
            if(§'5§.§^;§.slingshot)
            {
               _loc2_ += §'5§.§^;§.slingshot.§ !H§();
            }
            this.§7!+§ = Math.min(this.§7!+§,_loc2_);
         }
         if(this.§7!+§ > 0)
         {
            (§=V§.getItemByName("TextField_HighScore") as § 3§).setText(this.§7!+§.toString());
         }
         else
         {
            §=V§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §=V§.getItemByName("Container_LevelscoreContainer").y = §=V§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2S§();
         this.§3y§();
      }
      
      private function §2S§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§1!C§ > §;k§)
         {
            _loc1_ = Math.round(1000 / this.§1!C§ * this.§'w§);
            _loc2_ = §[i§.§0A§;
            §=!"§.§@!B§(_loc1_,_loc2_,§5!@§.§`v§);
         }
      }
      
      private function §<y§(param1:Number) : void
      {
         this.§1!C§ += param1;
         if(this.§1!C§ > 0)
         {
            ++this.§'w§;
         }
         if(this.§5#§ != §'5§.§?a§() || this.§^h§ != §'5§.§[b§())
         {
            this.§3y§();
         }
      }
      
      private function §3y§() : void
      {
         this.§1!C§ = §>!B§;
         this.§'w§ = 0;
         this.§5#§ = §'5§.§?a§();
         this.§^h§ = §'5§.§[b§();
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
         var _loc1_:String = §[i§.§0A§;
         var _loc2_:int = §>G§.getScore();
         §=!"§.§<!L§(§4!§.§47§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §8K§.§4!N§();
               break;
            case "POWERUP":
               §'!+§.§[N§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §'!+§.§[N§(false);
               break;
            case "ZOOM_IN":
               §>G§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §>G§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §>G§.getScore();
         var _loc3_:int = §2t§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§2t§.getValue() + param1 * §6_§);
            §2t§.assign(_loc3_);
         }
         (§=V§.getItemByName("TextField_CurrentScore") as § 3§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§<y§(param1);
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
   }
}
