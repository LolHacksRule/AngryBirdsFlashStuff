package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§@_§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §8!H§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §&!=§:§&"$§;
      
      public function §8!H§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(this.§!!n§());
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.View_LevelEndFail[0];
      }
      
      protected function §1![§() : void
      {
         var _loc1_:String = §6u§.getNextLevelId();
         if(_loc1_ && !§ !g§.§;!'§.§&!`§.userProgress.§]!B§(_loc1_) || !§ !g§.§;!'§.§&!`§.userProgress.§<!J§(§6u§.currentLevel))
         {
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setVisibility(true);
         }
         else if(§6u§.isCutSceneNext())
         {
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(true);
         }
         else
         {
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
         }
      }
      
      protected function §-n§() : void
      {
         (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
         (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&!=§ = new §&"$§(0,0,0,0);
         §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
         this.§1![§();
         this.§&!=§.§7t§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §9q§.§>!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§&!=§)
         {
            if(§8!A§.movieClip.contains(this.§&!=§))
            {
               §8!A§.movieClip.removeChild(this.§&!=§);
            }
            this.§&!=§.§;"F§();
            this.§&!=§ = null;
         }
         this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§-n§();
      }
      
      protected function §2"6§(param1:String) : void
      {
         (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_CutScene") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?R§();
               §8!^§(this.§2"%§());
               break;
            case "REPLAY":
               §8!^§(this.§^!m§());
               break;
            case "MENU":
               §<!O§.§'N§();
               §8!^§(this.§4?§());
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      protected function §2"%§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
