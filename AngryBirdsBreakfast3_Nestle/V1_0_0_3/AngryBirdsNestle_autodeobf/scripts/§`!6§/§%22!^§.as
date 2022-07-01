package §`!6§
{
   import §&!'§.§]S§;
   import §3!!§.§?v§;
   import §9![§.§1!i§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §"!^§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelEndFailState";
       
      
      private var §1x§:§]S§;
      
      public function §"!^§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
      }
      
      protected function §@A§() : XML
      {
         return §"!j§.§3=§.Views.View_LevelEndFail[0];
      }
      
      protected function §%Q§() : void
      {
         var _loc1_:String = §^!§.getNextLevelId();
         if(_loc1_ && !§&N§.§#Y§.§`"$§.userProgress.§[!8§(_loc1_) || !§&N§.§#Y§.§`"$§.userProgress.§^"!§(§^!§.currentLevel))
         {
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_MightyEagle") as §?v§).setVisibility(true);
         }
         else if(§^!§.isCutSceneNext())
         {
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(true);
         }
         else
         {
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
         }
      }
      
      protected function §&R§() : void
      {
         (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
         (§!^§.getItemByName("Button_MightyEagle") as §?v§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1x§ = new §]S§(0,0,0,0);
         §!^§.movieClip.addChildAt(this.§1x§,§!^§.movieClip.numChildren - 1);
         this.§%Q§();
         this.§1x§.§3"5§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §4!l§.§,!8§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§1x§)
         {
            if(§!^§.movieClip.contains(this.§1x§))
            {
               §!^§.movieClip.removeChild(this.§1x§);
            }
            this.§1x§.§3!<§();
            this.§1x§ = null;
         }
         this.§'!`§(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&R§();
      }
      
      protected function §'!`§(param1:String) : void
      {
         (§!^§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_NextLevel") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_CutScene") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_MightyEagle") as §?v§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4!g§();
               §8=§(this.§!"%§());
               break;
            case "REPLAY":
               §8=§(this.§=!Y§());
               break;
            case "MENU":
               §1!i§.§ !S§();
               §8=§(this.§8!+§());
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
      
      protected function §=!Y§() : String
      {
         return §-%§.§]O§;
      }
      
      protected function §8!+§() : String
      {
         return §?E§.§]O§;
      }
      
      protected function §!"%§() : String
      {
         return StateCutScene.§]O§;
      }
   }
}
