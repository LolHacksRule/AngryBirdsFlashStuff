package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§="5§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class §0!&§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelEndFailStateRio";
       
      
      private var §#h§:§]`§;
      
      public function §0!&§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(this.§'!H§());
      }
      
      protected function §'!H§() : XML
      {
         return §"!f§.§%!1§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §,!j§() : void
      {
         var _loc1_:String = §1!c§.§+5§();
         if(_loc1_ && !AngryBirdsFP11.§5!c§.§2T§(_loc1_) || !AngryBirdsFP11.§5!c§.§90§(§1!c§.§'Z§))
         {
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_MightyEagle") as §="5§).setVisibility(true);
         }
         else if(§1!c§.§ "'§())
         {
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(true);
         }
         else
         {
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(false);
         }
      }
      
      protected function §+!h§() : void
      {
         (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(false);
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#h§ = new §]`§(0,0,0,0);
         §;i§.movieClip.addChildAt(this.§#h§,§;i§.movieClip.numChildren - 1);
         this.§,!j§();
         this.§#h§.§8!%§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §%s§.§`!f§.clearLevel();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#h§)
         {
            if(§;i§.movieClip.contains(this.§#h§))
            {
               §;i§.movieClip.removeChild(this.§#h§);
            }
            this.§#h§.clean();
            this.§#h§ = null;
         }
         this.§^![§(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+!h§();
      }
      
      protected function §^![§(param1:String) : void
      {
         (§;i§.getItemByName("Button_Menu") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_NextLevel") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_CutScene") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §+0§.§!i§();
               mNextState = this.§5i§();
               break;
            case "REPLAY":
               §+0§.§2!2§();
               mNextState = this.§'!#§();
               break;
            case "MENU":
               §'!B§.§>T§();
               mNextState = this.§--§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      protected function §'!#§() : String
      {
         return §+0§.§8G§;
      }
      
      protected function §--§() : String
      {
         return §#B§.§8G§;
      }
      
      protected function §5i§() : String
      {
         return StateCutScene.§8G§;
      }
   }
}
