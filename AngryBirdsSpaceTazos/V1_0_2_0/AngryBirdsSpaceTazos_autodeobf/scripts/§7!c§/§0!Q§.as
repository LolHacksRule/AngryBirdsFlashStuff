package §7!c§
{
   import §!i§.§3!A§;
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §]!O§.§^!j§;
   
   public class §0!Q§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §0"#§:§^!j§;
      
      public function §0!Q§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(this.§,3§());
      }
      
      protected function §,3§() : XML
      {
         return §?e§.§'"G§.Views.View_LevelEndFail[0];
      }
      
      protected function §4"§() : void
      {
         var _loc1_:String = §,W§.getNextLevelId();
         if(_loc1_ && !§&!h§.§ u§.§-!V§.userProgress.§1">§(_loc1_) || !§&!h§.§ u§.§-!V§.userProgress.§%!+§(§,W§.currentLevel))
         {
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_MightyEagle") as §3!A§).setVisibility(true);
         }
         else if(§,W§.isCutSceneNext())
         {
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(true);
         }
         else
         {
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(false);
         }
      }
      
      protected function §[!`§() : void
      {
         (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(false);
         (§4§.getItemByName("Button_MightyEagle") as §3!A§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0"#§ = new §^!j§(0,0,0,0);
         §4§.movieClip.addChildAt(this.§0"#§,§4§.movieClip.numChildren - 1);
         this.§4"§();
         this.§0"#§.§#A§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §;0§.§@!^§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0"#§)
         {
            if(§4§.movieClip.contains(this.§0"#§))
            {
               §4§.movieClip.removeChild(this.§0"#§);
            }
            this.§0"#§.§#!O§();
            this.§0"#§ = null;
         }
         this.§5"2§(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§[!`§();
      }
      
      protected function §5"2§(param1:String) : void
      {
         (§4§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_NextLevel") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_CutScene") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_MightyEagle") as §3!A§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0" §();
               §2g§(this.§@I§());
               break;
            case "REPLAY":
               §2g§(this.§+"6§());
               break;
            case "MENU":
               §"!S§.§#9§();
               §2g§(this.§<!r§());
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
      
      protected function §+"6§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      protected function §<!r§() : String
      {
         return §!!Q§.STATE_NAME;
      }
      
      protected function §@I§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
