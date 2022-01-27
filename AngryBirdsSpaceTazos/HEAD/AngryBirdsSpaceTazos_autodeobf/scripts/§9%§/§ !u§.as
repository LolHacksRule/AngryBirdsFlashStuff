package §9%§
{
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   
   public class § !u§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §'!<§:§2!^§;
      
      public function § !u§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(this.§8u§());
      }
      
      protected function §8u§() : XML
      {
         return §@!T§.§-!8§.Views.View_LevelEndFail[0];
      }
      
      protected function §`!E§() : void
      {
         var _loc1_:String = §#"=§.getNextLevelId();
         if(_loc1_ && !§2&§.§6o§.§2c§.userProgress.§7>§(_loc1_) || !§2&§.§6o§.§2c§.userProgress.§0"?§(§#"=§.currentLevel))
         {
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_MightyEagle") as §87§).setVisibility(true);
         }
         else if(§#"=§.isCutSceneNext())
         {
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(true);
         }
         else
         {
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(false);
         }
      }
      
      protected function §!j§() : void
      {
         (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(false);
         (§%!A§.getItemByName("Button_MightyEagle") as §87§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'!<§ = new §2!^§(0,0,0,0);
         §%!A§.movieClip.addChildAt(this.§'!<§,§%!A§.movieClip.numChildren - 1);
         this.§`!E§();
         this.§'!<§.§[!1§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §8k§.§;!]§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§'!<§)
         {
            if(§%!A§.movieClip.contains(this.§'!<§))
            {
               §%!A§.movieClip.removeChild(this.§'!<§);
            }
            this.§'!<§.§&"#§();
            this.§'!<§ = null;
         }
         this.§+!q§(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!j§();
      }
      
      protected function §+!q§(param1:String) : void
      {
         (§%!A§.getItemByName("Button_Menu") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Replay") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_NextLevel") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_CutScene") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_MightyEagle") as §87§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §7!&§();
               § !I§(this.§4a§());
               break;
            case "REPLAY":
               § !I§(this.§7T§());
               break;
            case "MENU":
               §<5§.§>!R§();
               § !I§(this.§#!K§());
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
      
      protected function §7T§() : String
      {
         return §^! §.STATE_NAME;
      }
      
      protected function §#!K§() : String
      {
         return § §.STATE_NAME;
      }
      
      protected function §4a§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
