package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§1!7§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   
   public class §`"%§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelEndFailState";
       
      
      private var §4!?§:§1!7§;
      
      public function §`"%§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
      }
      
      protected function §';§() : XML
      {
         return §%!-§.§#t§.Views.View_LevelEndFail[0];
      }
      
      protected function §0"-§() : void
      {
         var _loc1_:String = §#n§.getNextLevelId();
         if(_loc1_ && !§-!2§.§7O§.§ !n§.userProgress.§=!#§(_loc1_) || !§-!2§.§7O§.§ !n§.userProgress.§@6§(§#n§.currentLevel))
         {
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_MightyEagle") as § `§).setVisibility(true);
         }
         else if(§#n§.isCutSceneNext())
         {
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(true);
         }
         else
         {
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
         }
      }
      
      protected function §?!v§() : void
      {
         (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
         (§4!q§.getItemByName("Button_MightyEagle") as § `§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4!?§ = new §1!7§(0,0,0,0);
         §4!q§.movieClip.addChildAt(this.§4!?§,§4!q§.movieClip.numChildren - 1);
         this.§0"-§();
         this.§4!?§.§2u§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §`i§.§&!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!?§)
         {
            if(§4!q§.movieClip.contains(this.§4!?§))
            {
               §4!q§.movieClip.removeChild(this.§4!?§);
            }
            this.§4!?§.§6!h§();
            this.§4!?§ = null;
         }
         this.§#B§(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§?!v§();
      }
      
      protected function §#B§(param1:String) : void
      {
         (§4!q§.getItemByName("Button_Menu") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Replay") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_NextLevel") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_CutScene") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_MightyEagle") as § `§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4o§();
               §]a§(this.§^"0§());
               break;
            case "REPLAY":
               §]a§(this.§9"&§());
               break;
            case "MENU":
               §4!@§.§ true§();
               §]a§(this.§'!'§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §9"&§() : String
      {
         return §6U§.§]!y§;
      }
      
      protected function §'!'§() : String
      {
         return §^!m§.§]!y§;
      }
      
      protected function §^"0§() : String
      {
         return StateCutScene.§]!y§;
      }
   }
}
