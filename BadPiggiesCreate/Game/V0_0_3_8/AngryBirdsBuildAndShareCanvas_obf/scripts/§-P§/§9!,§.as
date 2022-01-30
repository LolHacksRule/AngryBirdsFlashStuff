package §-P§
{
   import §!D§.§3!6§;
   import §'!O§.§[!m§;
   import §0!!§.§%!w§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   
   public class §9!,§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelEndFailStateRio";
       
      
      private var §;!z§:§%!w§;
      
      public function §9!,§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(this.§!"0§());
      }
      
      protected function §!"0§() : XML
      {
         return §"a§.§-!g§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §'!D§() : void
      {
         var _loc1_:String = §[!m§.§7>§();
         if(_loc1_ && !AngryBirdsFP11.§8!v§.§8!&§(_loc1_) || !AngryBirdsFP11.§8!v§.§8h§(§[!m§.§<!D§))
         {
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setVisibility(true);
         }
         else if(§[!m§.§+§())
         {
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(true);
         }
         else
         {
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(false);
         }
      }
      
      protected function §["1§() : void
      {
         (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(false);
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!z§ = new §%!w§(0,0,0,0);
         §1!j§.movieClip.addChildAt(this.§;!z§,§1!j§.movieClip.numChildren - 1);
         this.§'!D§();
         this.§;!z§.§4g§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §8!0§.§?2§.clearLevel();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;!z§)
         {
            if(§1!j§.movieClip.contains(this.§;!z§))
            {
               §1!j§.movieClip.removeChild(this.§;!z§);
            }
            this.§;!z§.clean();
            this.§;!z§ = null;
         }
         this.§`[§(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§["1§();
      }
      
      protected function §`[§(param1:String) : void
      {
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_CutScene") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[!E§.§ !E§();
               mNextState = this.§@"2§();
               break;
            case "REPLAY":
               §[!E§.§%!,§();
               mNextState = this.§@!x§();
               break;
            case "MENU":
               §?!7§.§@"!§();
               mNextState = this.§ x§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      protected function §@!x§() : String
      {
         return §[!E§.§#!w§;
      }
      
      protected function § x§() : String
      {
         return §1f§.§#!w§;
      }
      
      protected function §@"2§() : String
      {
         return StateCutScene.§#!w§;
      }
   }
}
