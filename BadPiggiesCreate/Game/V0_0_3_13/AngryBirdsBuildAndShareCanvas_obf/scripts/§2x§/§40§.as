package §2x§
{
   import § true§.§8K§;
   import §&k§.§3l§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   
   public class §40§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelEndFailStateRio";
       
      
      private var §!<§:§3l§;
      
      public function §40§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(this.§6!^§());
      }
      
      protected function §6!^§() : XML
      {
         return §,!h§.§`C§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §!!x§() : void
      {
         var _loc1_:String = §8!z§.§6"&§();
         if(_loc1_ && !AngryBirdsFP11.§"!c§.§6!K§(_loc1_) || !AngryBirdsFP11.§"!c§.§0!#§(§8!z§.§>!&§))
         {
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_MightyEagle") as §8K§).setVisibility(true);
         }
         else if(§8!z§.§4!3§())
         {
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(true);
         }
         else
         {
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(false);
         }
      }
      
      protected function §7"3§() : void
      {
         (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(false);
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!<§ = new §3l§(0,0,0,0);
         §3?§.movieClip.addChildAt(this.§!<§,§3?§.movieClip.numChildren - 1);
         this.§!!x§();
         this.§!<§.§[5§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §5!U§.§,!E§.clearLevel();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!<§)
         {
            if(§3?§.movieClip.contains(this.§!<§))
            {
               §3?§.movieClip.removeChild(this.§!<§);
            }
            this.§!<§.clean();
            this.§!<§ = null;
         }
         this.§^!b§(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§7"3§();
      }
      
      protected function §^!b§(param1:String) : void
      {
         (§3?§.getItemByName("Button_Menu") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_NextLevel") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_CutScene") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8D§.§@P§();
               mNextState = this.§]"§();
               break;
            case "REPLAY":
               §8D§.§+!u§();
               mNextState = this.§>E§();
               break;
            case "MENU":
               §5;§.§8X§();
               mNextState = this.§2">§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      protected function §>E§() : String
      {
         return §8D§.§>H§;
      }
      
      protected function §2">§() : String
      {
         return §8";§.§>H§;
      }
      
      protected function §]"§() : String
      {
         return StateCutScene.§>H§;
      }
   }
}
