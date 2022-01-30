package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §+!5§.§2O§;
   import §@!6§.§3!5§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §?;§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelEndFailState";
       
      
      private var §0!M§:§2O§;
      
      public function §?;§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
      }
      
      protected function §;!<§() : XML
      {
         return §#p§.§'"0§.Views.View_LevelEndFail[0];
      }
      
      protected function §<f§() : void
      {
         var _loc1_:String = §="4§.getNextLevelId();
         if(_loc1_ && !§-!I§.§[f§.§?4§.userProgress.§^!P§(_loc1_) || !§-!I§.§[f§.§?4§.userProgress.§-Q§(§="4§.currentLevel))
         {
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_MightyEagle") as §^!g§).setVisibility(true);
         }
         else if(§="4§.isCutSceneNext())
         {
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(true);
         }
         else
         {
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
         }
      }
      
      protected function §0!Q§() : void
      {
         (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
         (§ !z§.getItemByName("Button_MightyEagle") as §^!g§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0!M§ = new §2O§(0,0,0,0);
         § !z§.movieClip.addChildAt(this.§0!M§,§ !z§.movieClip.numChildren - 1);
         this.§<f§();
         this.§0!M§.§5!F§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §6!E§.§7I§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0!M§)
         {
            if(§ !z§.movieClip.contains(this.§0!M§))
            {
               § !z§.movieClip.removeChild(this.§0!M§);
            }
            this.§0!M§.§[!R§();
            this.§0!M§ = null;
         }
         this.§45§(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§0!Q§();
      }
      
      protected function §45§(param1:String) : void
      {
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_CutScene") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_MightyEagle") as §^!g§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § for§();
               §?n§(this.§`!3§());
               break;
            case "REPLAY":
               §?n§(this.§8"0§());
               break;
            case "MENU":
               §3!5§.§,!8§();
               §?n§(this.§9"1§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
      
      protected function §8"0§() : String
      {
         return §4!R§.§7w§;
      }
      
      protected function §9"1§() : String
      {
         return §^!+§.§7w§;
      }
      
      protected function §`!3§() : String
      {
         return StateCutScene.§7w§;
      }
   }
}
