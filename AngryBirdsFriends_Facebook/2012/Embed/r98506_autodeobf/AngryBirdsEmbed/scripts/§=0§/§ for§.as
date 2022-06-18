package §=0§
{
   import §#;§.§4!8§;
   import §'!&§.§]!J§;
   import §'!7§.§6!§;
   import §'!7§.§`a§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3'§.§6k§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §;%§.§8o§;
   import §>K§.§"!C§;
   import §>K§.§[!2§;
   import §>z§.§<W§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   
   public class § for§ extends StatePlay
   {
      
      private static const § o§:Number = -5 * 1000;
      
      private static const §8G§:Number = 10 * 1000;
       
      
      private var §,"§:int = 0;
      
      private var §,p§:Number = -5000.0;
      
      private var §;s§:int = 0;
      
      private var §get §:Number = 0;
      
      private var §!!8§:Number = 0;
      
      public function § for§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§,"§ = param2;
      }
      
      override protected function getGameLogicController(param1:§4!8§) : §<W§
      {
         return new §]!J§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §[!2§.§#U§(§"!C§.§,!4§,§-Z§.§%s§);
      }
      
      override public function init() : void
      {
         §=t§ = true;
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§^a§();
         var _loc1_:§1w§ = §-Z§.§4! §(§-Z§.§%s§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§=!1§();
            if(§^?§.§]!%§.slingshot)
            {
               _loc2_ += §^?§.§]!%§.slingshot.§7'§();
            }
            this.§,"§ = Math.min(this.§,"§,_loc2_);
         }
         if(this.§,"§ > 0)
         {
            (§4G§.getItemByName("TextField_HighScore") as §6k§).setText(this.§,"§.toString());
         }
         else
         {
            §4G§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §4G§.getItemByName("Container_LevelscoreContainer").y = §4G§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^!"§();
         this.§^a§();
      }
      
      private function §^!"§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§,p§ > §8G§)
         {
            _loc1_ = Math.round(1000 / this.§,p§ * this.§;s§);
            _loc2_ = §-Z§.§%s§;
            §[!2§.§0v§(_loc1_,_loc2_,§8o§.§^H§);
         }
      }
      
      private function §3!"§(param1:Number) : void
      {
         this.§,p§ += param1;
         if(this.§,p§ > 0)
         {
            ++this.§;s§;
         }
         if(this.§get § != §^?§.§?!=§() || this.§!!8§ != §^?§.§ C§())
         {
            this.§^a§();
         }
      }
      
      private function §^a§() : void
      {
         this.§,p§ = § o§;
         this.§;s§ = 0;
         this.§get § = §^?§.§?!=§();
         this.§!!8§ = §^?§.§ C§();
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
         var _loc1_:String = §-Z§.§%s§;
         var _loc2_:int = §,Z§.getScore();
         §[!2§.§#U§(§"!C§.§%!F§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §`a§.§[S§();
               break;
            case "POWERUP":
               §6!§.§&!2§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §6!§.§&!2§(false);
               break;
            case "ZOOM_IN":
               §,Z§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §,Z§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §,Z§.getScore();
         var _loc3_:int = §@!7§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§@!7§.getValue() + param1 * §=<§);
            §@!7§.assign(_loc3_);
         }
         (§4G§.getItemByName("TextField_CurrentScore") as §6k§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§3!"§(param1);
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
   }
}
