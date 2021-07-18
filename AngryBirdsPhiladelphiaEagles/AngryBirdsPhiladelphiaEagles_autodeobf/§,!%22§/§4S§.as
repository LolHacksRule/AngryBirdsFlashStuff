package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §'K§.§3C§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§;!P§;
   import §^]§.§`!K§;
   import flash.text.TextFieldAutoSize;
   
   public class §4S§ extends §="§
   {
       
      
      public function §4S§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §&K§ = true;
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§@4§ = §0q§.getItemByName("TextField_ChapterName") as §@4§;
         _loc1_.§!!@§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§@4§ = null;
         var _loc2_:String = null;
         if(§`!K§.§5g§ != null)
         {
            _loc1_ = §0q§.getItemByName("TextField_ChapterName") as §@4§;
            _loc2_ = §`!K§.§]V§().writtenName;
            if(_loc2_)
            {
               _loc1_.§!!@§.text = §`!K§.§]V§().writtenName;
            }
            (§0q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §;!P§.§[e§(§`!K§.§5g§);
         }
         §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§5e§());
         (§0q§.getItemByName("Container_PauseMenu") as §[Q§).x = §="§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §#! §.pause();
         if(§0]§ != null)
         {
            §0]§.stop();
         }
         §0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":0},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":1},{"alpha":0},0.25));
         §0]§.onComplete = §>!G§;
         §0]§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§0q§.getItemByName("Button_Resume") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Menu") as §^'§).setEnabled(param1);
         (§0q§.getItemByName("Button_Sound") as §^'§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§0q§.getItemByName("Button_Resume") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Sound") as §^'§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§0]§ != null)
         {
            §0]§.stop();
         }
         §0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":OFFSCREEN_X},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":0},{"alpha":1},0.25));
         §0]§.onComplete = §3h§;
         §0]§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "MENU":
               mNextState = §@f§.§-A§;
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§5e§();
               AngryBirdsFP11.§6r§(_loc4_);
               §!D§.§#!O§(§!D§.§8T§,int(_loc4_));
               §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "RESTART_LEVEL":
               §#! §.§`'§.§4-§();
               mNextState = §5!'§();
               §-O§.§8!5§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§0]§)
         {
            §0]§.updateState();
         }
      }
   }
}
