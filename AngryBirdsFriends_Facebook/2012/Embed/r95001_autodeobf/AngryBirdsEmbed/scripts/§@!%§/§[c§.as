package §@!%§
{
   import § "§.§8!3§;
   import § "§.§;4§;
   import §!!G§.§#!"§;
   import §-'§.§[g§;
   import §-'§.§in§;
   import §0m§.§1!,§;
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §4-§.§>Z§;
   import §4C§.§;!%§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §9!2§.§7N§;
   import §9!?§.§^]§;
   import §]!1§.§5! §;
   import §]!1§.§@!-§;
   
   public class §[c§ extends StatePlay
   {
      
      private static const §<!%§:Number = -5 * 1000;
      
      private static const §8X§:Number = 10 * 1000;
       
      
      private var §^<§:int = 0;
      
      private var §;! §:Number = -5000.0;
      
      private var §@Q§:int = 0;
      
      private var §1!;§:Number = 0;
      
      private var §1K§:Number = 0;
      
      public function §[c§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§^<§ = param2;
      }
      
      override protected function getGameLogicController(param1:§^]§) : §#!"§
      {
         return new §;!%§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §[g§.§>W§(§in§.§`#§,§8!3§.§-[§);
      }
      
      override public function init() : void
      {
         §7+§ = true;
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§?"§();
         var _loc1_:§;4§ = §8!3§.§]!>§(§8!3§.§-[§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§2r§();
            if(§#!4§.§^Y§.slingshot)
            {
               _loc2_ += §#!4§.§^Y§.slingshot.§[i§();
            }
            this.§^<§ = Math.min(this.§^<§,_loc2_);
         }
         if(this.§^<§ > 0)
         {
            (§`k§.getItemByName("TextField_HighScore") as §>Z§).setText(this.§^<§.toString());
         }
         else
         {
            §`k§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §`k§.getItemByName("Container_LevelscoreContainer").y = §`k§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7s§();
         this.§?"§();
      }
      
      private function §7s§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§;! § > §8X§)
         {
            _loc1_ = Math.round(1000 / this.§;! § * this.§@Q§);
            _loc2_ = §8!3§.§-[§;
            §[g§.§<9§(_loc1_,_loc2_,§7N§.§;Y§);
         }
      }
      
      private function §]n§(param1:Number) : void
      {
         this.§;! § += param1;
         if(this.§;! § > 0)
         {
            ++this.§@Q§;
         }
         if(this.§1!;§ != §#!4§.§?D§() || this.§1K§ != §#!4§.§^"§())
         {
            this.§?"§();
         }
      }
      
      private function §?"§() : void
      {
         this.§;! § = §<!%§;
         this.§@Q§ = 0;
         this.§1!;§ = §#!4§.§?D§();
         this.§1K§ = §#!4§.§^"§();
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
         var _loc1_:String = §8!3§.§-[§;
         var _loc2_:int = §08§.getScore();
         §[g§.§>W§(§in§.§'`§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §@!-§.§8;§();
               break;
            case "POWERUP":
               §5! §.§>2§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §5! §.§>2§(false);
               break;
            case "ZOOM_IN":
               §08§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §08§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §08§.getScore();
         var _loc3_:int = §2b§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§2b§.getValue() + param1 * §2^§);
            §2b§.assign(_loc3_);
         }
         (§`k§.getItemByName("TextField_CurrentScore") as §>Z§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§]n§(param1);
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
   }
}
