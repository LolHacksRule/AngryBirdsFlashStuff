package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   
   public class §%!F§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndFailStateRio";
       
      
      private var §?!+§:§4!i§;
      
      public function §%!F§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(this.§+C§());
      }
      
      protected function §+C§() : XML
      {
         return §`7§.§>"?§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §8!+§() : void
      {
         var _loc1_:String = §3!w§.§;d§();
         if(_loc1_ && !AngryBirdsFP11.§>" §.§>1§(_loc1_) || !AngryBirdsFP11.§>" §.§6&§(§3!w§.§%n§))
         {
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_MightyEagle") as §="#§).setVisibility(true);
         }
         else if(§3!w§.§4k§())
         {
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(true);
         }
         else
         {
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(false);
         }
      }
      
      protected function §=!9§() : void
      {
         (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(false);
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?!+§ = new §4!i§(0,0,0,0);
         §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
         this.§8!+§();
         this.§?!+§.§>=§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §=!X§.§!'§.clearLevel();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§?!+§)
         {
            if(§?E§.movieClip.contains(this.§?!+§))
            {
               §?E§.movieClip.removeChild(this.§?!+§);
            }
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
         this.§-!+§(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=!9§();
      }
      
      protected function §-!+§(param1:String) : void
      {
         (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_NextLevel") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_CutScene") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0!v§.§`" §();
               mNextState = this.§]!I§();
               break;
            case "REPLAY":
               §0!v§.§4[§();
               mNextState = this.§]!W§();
               break;
            case "MENU":
               §5!U§.§9&§();
               mNextState = this.§1"&§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
      
      protected function §1"&§() : String
      {
         return §7B§.§'=§;
      }
      
      protected function §]!I§() : String
      {
         return StateCutScene.§'=§;
      }
   }
}
