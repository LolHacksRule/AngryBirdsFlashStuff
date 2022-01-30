package §,i§
{
   import §0!d§.§8!r§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §]!X§.§?7§;
   
   public class §1!K§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelEndFailStateRio";
       
      
      private var §`H§:§?7§;
      
      public function §1!K§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(this.§5!,§());
      }
      
      protected function §5!,§() : XML
      {
         return §1!=§.§8X§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §"!p§() : void
      {
         var _loc1_:String = §"?§.§7!=§();
         if(_loc1_ && !AngryBirdsFP11.§<U§.§0u§(_loc1_) || !AngryBirdsFP11.§<U§.§]'§(§"?§.§4M§))
         {
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setVisibility(true);
         }
         else if(§"?§.§0k§())
         {
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(true);
         }
         else
         {
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(false);
         }
      }
      
      protected function §2y§() : void
      {
         (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(false);
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`H§ = new §?7§(0,0,0,0);
         §'K§.movieClip.addChildAt(this.§`H§,§'K§.movieClip.numChildren - 1);
         this.§"!p§();
         this.§`H§.§%H§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §"!V§.§!j§.clearLevel();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`H§)
         {
            if(§'K§.movieClip.contains(this.§`H§))
            {
               §'K§.movieClip.removeChild(this.§`H§);
            }
            this.§`H§.clean();
            this.§`H§ = null;
         }
         this.§@5§(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2y§();
      }
      
      protected function §@5§(param1:String) : void
      {
         (§'K§.getItemByName("Button_Menu") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_NextLevel") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_CutScene") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §>Y§.§;X§();
               mNextState = this.§+!N§();
               break;
            case "REPLAY":
               §>Y§.§"l§();
               mNextState = this.§'"-§();
               break;
            case "MENU":
               § !x§.§ X§();
               mNextState = this.§5!6§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      protected function §'"-§() : String
      {
         return §>Y§.§]"2§;
      }
      
      protected function §5!6§() : String
      {
         return §6!x§.§]"2§;
      }
      
      protected function §+!N§() : String
      {
         return StateCutScene.§]"2§;
      }
   }
}
