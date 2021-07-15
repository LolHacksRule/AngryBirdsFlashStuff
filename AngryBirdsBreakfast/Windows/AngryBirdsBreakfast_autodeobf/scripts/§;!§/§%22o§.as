package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import com.angrybirds.§&!"§;
   
   public class §"o§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndFailState";
       
      
      private var §7!k§:§,!e§;
      
      public function §"o§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.View_LevelEndFail[0];
      }
      
      protected function §?_§() : void
      {
         var _loc1_:String = §&" §.getNextLevelId();
         if(_loc1_ && !§6!!§.singleton.§<!S§.userProgress.§]!g§(_loc1_) || !§6!!§.singleton.§<!S§.userProgress.§<W§(§&" §.currentLevel))
         {
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_MightyEagle") as §;§).setVisibility(true);
         }
         else if(§&" §.isCutSceneNext())
         {
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
         }
         else
         {
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
         }
      }
      
      protected function §+a§() : void
      {
         (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
         (§?P§.getItemByName("Button_MightyEagle") as §;§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7!k§ = new §,!e§(0,0,0,0);
         §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
         this.§?_§();
         this.§7!k§.§=v§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §&!"§.§1!D§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§7!k§)
         {
            if(§?P§.movieClip.contains(this.§7!k§))
            {
               §?P§.movieClip.removeChild(this.§7!k§);
            }
            this.§7!k§.§9O§();
            this.§7!k§ = null;
         }
         this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+a§();
      }
      
      protected function §2!§(param1:String) : void
      {
         (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_CutScene") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_MightyEagle") as §;§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!x§();
               §<f§(this.§+>§());
               break;
            case "REPLAY":
               §<f§(this.§8!w§());
               break;
            case "MENU":
               §'!c§.§&j§();
               §<f§(this.§0!Z§());
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §0!Z§() : String
      {
         return §4!9§.§-!q§;
      }
      
      protected function §+>§() : String
      {
         return StateCutScene.§-!q§;
      }
   }
}
