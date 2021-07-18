package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!]§.§]!v§;
   import §<i§.§`!r§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   
   public class §9k§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndFailStateRio";
       
      
      private var §<E§:§]!v§;
      
      public function §9k§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(this.§+!;§());
      }
      
      protected function §+!;§() : XML
      {
         return §]!M§.§"!V§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §,!-§() : void
      {
         var _loc1_:String = §`!r§.§8E§();
         if(_loc1_ && !AngryBirdsFP11.§>!7§.§%!a§(_loc1_) || !AngryBirdsFP11.§>!7§.§]"9§(§`!r§.§0B§))
         {
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setVisibility(true);
         }
         else if(§`!r§.§,!9§())
         {
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(true);
         }
         else
         {
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(false);
         }
      }
      
      protected function §&!R§() : void
      {
         (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(false);
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<E§ = new §]!v§(0,0,0,0);
         §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
         this.§,!-§();
         this.§<E§.§[!r§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §'_§.§=M§.clearLevel();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§<E§)
         {
            if(§`!v§.movieClip.contains(this.§<E§))
            {
               §`!v§.movieClip.removeChild(this.§<E§);
            }
            this.§<E§.clean();
            this.§<E§ = null;
         }
         this.§>!I§(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&!R§();
      }
      
      protected function §>!I§(param1:String) : void
      {
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_CutScene") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §2!!§() : void
      {
         §`!;§.§;c§();
         mNextState = this.§<!p§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§2!!§();
               break;
            case "REPLAY":
               §`!;§.§%P§();
               mNextState = this.§"!0§();
               break;
            case "MENU":
               §0"#§.§4"#§();
               mNextState = this.§>!9§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      protected function §>!9§() : String
      {
         return §1!i§.§%!Q§;
      }
      
      protected function §<!p§() : String
      {
         return StateCutScene.§%!Q§;
      }
   }
}
