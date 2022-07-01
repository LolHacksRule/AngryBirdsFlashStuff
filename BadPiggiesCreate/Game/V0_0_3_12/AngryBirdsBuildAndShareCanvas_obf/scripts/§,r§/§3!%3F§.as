package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0E§.§-!F§;
   import §2I§.§,"+§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   
   public class §3!?§ extends §,v§
   {
      
      public static const §8n§:String = "LevelEndFailStateRio";
       
      
      private var §1!<§:§,"+§;
      
      public function §3!?§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(this.§2t§());
      }
      
      protected function §2t§() : XML
      {
         return §#! §.§5!;§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §7!`§() : void
      {
         var _loc1_:String = §-!F§.§?!K§();
         if(_loc1_ && !AngryBirdsFP11.§`!j§.§7!1§(_loc1_) || !AngryBirdsFP11.§`!j§.§]"7§(§-!F§.§"!L§))
         {
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setVisibility(true);
         }
         else if(§-!F§.§5j§())
         {
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(true);
         }
         else
         {
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(false);
         }
      }
      
      protected function §>![§() : void
      {
         (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(false);
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1!<§ = new §,"+§(0,0,0,0);
         §?F§.movieClip.addChildAt(this.§1!<§,§?F§.movieClip.numChildren - 1);
         this.§7!`§();
         this.§1!<§.§%r§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §%W§.§5"8§.clearLevel();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§1!<§)
         {
            if(§?F§.movieClip.contains(this.§1!<§))
            {
               §?F§.movieClip.removeChild(this.§1!<§);
            }
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
         this.§`h§(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>![§();
      }
      
      protected function §`h§(param1:String) : void
      {
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_CutScene") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!O§.§7!-§();
               mNextState = this.§'!3§();
               break;
            case "REPLAY":
               §'!O§.§8U§();
               mNextState = this.§=d§();
               break;
            case "MENU":
               §^k§.§3,§();
               mNextState = this.§`!G§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      protected function §=d§() : String
      {
         return §'!O§.§8n§;
      }
      
      protected function §`!G§() : String
      {
         return §+!F§.§8n§;
      }
      
      protected function §'!3§() : String
      {
         return StateCutScene.§8n§;
      }
   }
}
