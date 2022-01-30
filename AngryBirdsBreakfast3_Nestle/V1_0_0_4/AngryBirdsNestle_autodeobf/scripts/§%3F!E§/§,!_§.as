package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import §@#§.§4!O§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`!_§.§[!q§;
   import com.angrybirds.§6U§;
   
   public class §,!_§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelEndFailState";
       
      
      private var §[""§:§[!q§;
      
      public function §,!_§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
      }
      
      protected function §^!!§() : XML
      {
         return §+!b§.§#!P§.Views.View_LevelEndFail[0];
      }
      
      protected function §,5§() : void
      {
         var _loc1_:String = §+o§.getNextLevelId();
         if(_loc1_ && !§-!l§.§"x§.§?"&§.userProgress.§7"2§(_loc1_) || !§-!l§.§"x§.§?"&§.userProgress.§>z§(§+o§.currentLevel))
         {
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_MightyEagle") as §4!O§).setVisibility(true);
         }
         else if(§+o§.isCutSceneNext())
         {
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(true);
         }
         else
         {
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
         }
      }
      
      protected function §%!i§() : void
      {
         (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
         (§#2§.getItemByName("Button_MightyEagle") as §4!O§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§[""§ = new §[!q§(0,0,0,0);
         §#2§.movieClip.addChildAt(this.§[""§,§#2§.movieClip.numChildren - 1);
         this.§,5§();
         this.§[""§.§,>§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §6U§.§+_§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§[""§)
         {
            if(§#2§.movieClip.contains(this.§[""§))
            {
               §#2§.movieClip.removeChild(this.§[""§);
            }
            this.§[""§.§=!I§();
            this.§[""§ = null;
         }
         this.§"!]§(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%!i§();
      }
      
      protected function §"!]§(param1:String) : void
      {
         (§#2§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_NextLevel") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_CutScene") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_MightyEagle") as §4!O§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §6!p§();
               §0!w§(this.§&7§());
               break;
            case "REPLAY":
               §0!w§(this.§<"#§());
               break;
            case "MENU":
               §3!k§.§#!3§();
               §0!w§(this.§2!q§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
      
      protected function §<"#§() : String
      {
         return §62§.§+B§;
      }
      
      protected function §2!q§() : String
      {
         return §]l§.§+B§;
      }
      
      protected function §&7§() : String
      {
         return StateCutScene.§+B§;
      }
   }
}
