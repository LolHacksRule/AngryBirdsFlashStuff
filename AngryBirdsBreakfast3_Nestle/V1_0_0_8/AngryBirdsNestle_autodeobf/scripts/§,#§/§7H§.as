package §,#§
{
   import §"!G§.§3!f§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§9!M§;
   import §=b§.§5!p§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   
   public class §7H§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelEndFailState";
       
      
      private var § Y§:§5!p§;
      
      public function §7H§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
      }
      
      protected function §'!N§() : XML
      {
         return §8!1§.§31§.Views.View_LevelEndFail[0];
      }
      
      protected function §1"&§() : void
      {
         var _loc1_:String = §!3§.getNextLevelId();
         if(_loc1_ && !§-O§.§5!1§.§]u§.userProgress.§4"%§(_loc1_) || !§-O§.§5!1§.§]u§.userProgress.§-"8§(§!3§.currentLevel))
         {
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_MightyEagle") as §9!M§).setVisibility(true);
         }
         else if(§!3§.isCutSceneNext())
         {
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(true);
         }
         else
         {
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
         }
      }
      
      protected function §<>§() : void
      {
         (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
         (§^!6§.getItemByName("Button_MightyEagle") as §9!M§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ Y§ = new §5!p§(0,0,0,0);
         §^!6§.movieClip.addChildAt(this.§ Y§,§^!6§.movieClip.numChildren - 1);
         this.§1"&§();
         this.§ Y§.§<!9§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §4"6§.§;!k§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ Y§)
         {
            if(§^!6§.movieClip.contains(this.§ Y§))
            {
               §^!6§.movieClip.removeChild(this.§ Y§);
            }
            this.§ Y§.§6T§();
            this.§ Y§ = null;
         }
         this.§0!p§(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<>§();
      }
      
      protected function §0!p§(param1:String) : void
      {
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_CutScene") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_MightyEagle") as §9!M§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@$§();
               §'"6§(this.§ Q§());
               break;
            case "REPLAY":
               §'"6§(this.§9!&§());
               break;
            case "MENU":
               §]d§.§]!u§();
               §'"6§(this.§4;§());
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
      
      protected function §9!&§() : String
      {
         return § K§.§'u§;
      }
      
      protected function §4;§() : String
      {
         return §=%§.§'u§;
      }
      
      protected function § Q§() : String
      {
         return StateCutScene.§'u§;
      }
   }
}
