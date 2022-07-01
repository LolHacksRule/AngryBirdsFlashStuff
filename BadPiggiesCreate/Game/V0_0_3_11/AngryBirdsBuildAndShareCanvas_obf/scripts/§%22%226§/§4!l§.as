package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §2!O§.§,w§;
   import §;!A§.§2v§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §?!k§.§0!t§;
   
   public class §4!l§ extends §,w§
   {
      
      public static const §^z§:String = "LevelEndFailStateRio";
       
      
      private var §;v§:§!!g§;
      
      public function §4!l§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(this.§[",§());
      }
      
      protected function §[",§() : XML
      {
         return §8!O§.§'!J§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §>! §() : void
      {
         var _loc1_:String = §+"%§.§^!`§();
         if(_loc1_ && !AngryBirdsFP11.§8!I§.§-M§(_loc1_) || !AngryBirdsFP11.§8!I§.§`!#§(§+"%§.§9!'§))
         {
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_MightyEagle") as §2v§).setVisibility(true);
         }
         else if(§+"%§.§#x§())
         {
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(true);
         }
         else
         {
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(false);
         }
      }
      
      protected function §5!%§() : void
      {
         (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(false);
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;v§ = new §!!g§(0,0,0,0);
         §%""§.movieClip.addChildAt(this.§;v§,§%""§.movieClip.numChildren - 1);
         this.§>! §();
         this.§;v§.§6"+§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §?z§.§=7§.clearLevel();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;v§)
         {
            if(§%""§.movieClip.contains(this.§;v§))
            {
               §%""§.movieClip.removeChild(this.§;v§);
            }
            this.§;v§.clean();
            this.§;v§ = null;
         }
         this.§<"1§(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5!%§();
      }
      
      protected function §<"1§(param1:String) : void
      {
         (§%""§.getItemByName("Button_Menu") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_NextLevel") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_CutScene") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!Z§.§0""§();
               mNextState = this.§5!,§();
               break;
            case "REPLAY":
               §!Z§.§0!f§();
               mNextState = this.§2!v§();
               break;
            case "MENU":
               §0!t§.§,!S§();
               mNextState = this.§%J§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      protected function §2!v§() : String
      {
         return §!Z§.§^z§;
      }
      
      protected function §%J§() : String
      {
         return §`!%§.§^z§;
      }
      
      protected function §5!,§() : String
      {
         return StateCutScene.§^z§;
      }
   }
}
