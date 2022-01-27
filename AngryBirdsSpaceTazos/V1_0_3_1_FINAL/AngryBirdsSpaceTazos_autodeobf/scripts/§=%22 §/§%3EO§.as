package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §4",§.§,!j§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §>"!§.§@!9§;
   
   public class §>O§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §`!5§:§8u§;
      
      public function §>O§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(this.§98§());
      }
      
      protected function §98§() : XML
      {
         return §7x§.§+2§.Views.View_LevelEndFail[0];
      }
      
      protected function §!#§() : void
      {
         var _loc1_:String = §]m§.getNextLevelId();
         if(_loc1_ && !§&"<§.§<!7§.§,!9§.userProgress.§!">§(_loc1_) || !§&"<§.§<!7§.§,!9§.userProgress.§[!G§(§]m§.currentLevel))
         {
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_MightyEagle") as §%!J§).setVisibility(true);
         }
         else if(§]m§.isCutSceneNext())
         {
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(true);
         }
         else
         {
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(false);
         }
      }
      
      protected function §]&§() : void
      {
         (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(false);
         (§6!J§.getItemByName("Button_MightyEagle") as §%!J§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`!5§ = new §8u§(0,0,0,0);
         §6!J§.movieClip.addChildAt(this.§`!5§,§6!J§.movieClip.numChildren - 1);
         this.§!#§();
         this.§`!5§.§<"&§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §8!w§.§5!V§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`!5§)
         {
            if(§6!J§.movieClip.contains(this.§`!5§))
            {
               §6!J§.movieClip.removeChild(this.§`!5§);
            }
            this.§`!5§.§&!§();
            this.§`!5§ = null;
         }
         this.§ !L§(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]&§();
      }
      
      protected function § !L§(param1:String) : void
      {
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_CutScene") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_MightyEagle") as §%!J§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §5u§();
               §'Q§(this.§?i§());
               break;
            case "REPLAY":
               §'Q§(this.§""5§());
               break;
            case "MENU":
               §@!9§.§["6§();
               §'Q§(this.§&P§());
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      protected function §""5§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      protected function §&P§() : String
      {
         return §]!"§.STATE_NAME;
      }
      
      protected function §?i§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
