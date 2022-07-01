package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §7"1§.§@!9§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §6J§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelEndFailState";
       
      
      private var §5!,§:§@!9§;
      
      public function §6J§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
      }
      
      protected function §[x§() : XML
      {
         return §=!A§.§`O§.Views.View_LevelEndFail[0];
      }
      
      protected function §]f§() : void
      {
         var _loc1_:String = §97§.getNextLevelId();
         if(_loc1_ && !§,!X§.§>!G§.§>!I§.userProgress.§"!`§(_loc1_) || !§,!X§.§>!G§.§>!I§.userProgress.§,g§(§97§.currentLevel))
         {
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_MightyEagle") as §73§).setVisibility(true);
         }
         else if(§97§.isCutSceneNext())
         {
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(true);
         }
         else
         {
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
         }
      }
      
      protected function § 4§() : void
      {
         (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
         (§5+§.getItemByName("Button_MightyEagle") as §73§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§5!,§ = new §@!9§(0,0,0,0);
         §5+§.movieClip.addChildAt(this.§5!,§,§5+§.movieClip.numChildren - 1);
         this.§]f§();
         this.§5!,§.§;!$§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §#Z§.§'0§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§5!,§)
         {
            if(§5+§.movieClip.contains(this.§5!,§))
            {
               §5+§.movieClip.removeChild(this.§5!,§);
            }
            this.§5!,§.§^!%§();
            this.§5!,§ = null;
         }
         this.§2V§(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ 4§();
      }
      
      protected function §2V§(param1:String) : void
      {
         (§5+§.getItemByName("Button_Menu") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Replay") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_NextLevel") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_CutScene") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_MightyEagle") as §73§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8!,§();
               §8!`§(this.§&!i§());
               break;
            case "REPLAY":
               §8!`§(this.§2!1§());
               break;
            case "MENU":
               §%!c§.§0O§();
               §8!`§(this.§6h§());
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
      
      protected function §2!1§() : String
      {
         return §5!h§.§+a§;
      }
      
      protected function §6h§() : String
      {
         return §&g§.§+a§;
      }
      
      protected function §&!i§() : String
      {
         return StateCutScene.§+a§;
      }
   }
}
