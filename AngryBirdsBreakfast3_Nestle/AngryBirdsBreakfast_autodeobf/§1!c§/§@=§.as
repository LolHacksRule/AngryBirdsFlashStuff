package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§]"%§;
   import §[!Z§.§>D§;
   
   public class §@=§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndFailState";
       
      
      private var §]!b§:§?>§;
      
      public function §@=§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.View_LevelEndFail[0];
      }
      
      protected function §;!!§() : void
      {
         var _loc1_:String = §4a§.getNextLevelId();
         if(_loc1_ && !§ !4§.§%"7§.§@D§.userProgress.§2"+§(_loc1_) || !§ !4§.§%"7§.§@D§.userProgress.§return§(§4a§.currentLevel))
         {
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setVisibility(true);
         }
         else if(§4a§.isCutSceneNext())
         {
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
         }
         else
         {
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
         }
      }
      
      protected function §?U§() : void
      {
         (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
         (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§]!b§ = new §?>§(0,0,0,0);
         §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
         this.§;!!§();
         this.§]!b§.§!!p§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §@!S§.§2A§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§]!b§)
         {
            if(§^!T§.movieClip.contains(this.§]!b§))
            {
               §^!T§.movieClip.removeChild(this.§]!b§);
            }
            this.§]!b§.§,!#§();
            this.§]!b§ = null;
         }
         this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§?U§();
      }
      
      protected function § !y§(param1:String) : void
      {
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_CutScene") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2G§();
               §7"6§(this.§0;§());
               break;
            case "REPLAY":
               §7"6§(this.§9!"§());
               break;
            case "MENU":
               §>D§.§>!%§();
               §7"6§(this.§'!#§());
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
      
      protected function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
      
      protected function §0;§() : String
      {
         return StateCutScene.§8"%§;
      }
   }
}
