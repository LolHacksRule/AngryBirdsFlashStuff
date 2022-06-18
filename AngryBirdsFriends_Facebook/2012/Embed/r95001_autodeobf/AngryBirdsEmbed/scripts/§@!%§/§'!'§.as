package §@!%§
{
   import § "§.§8!3§;
   import § "§.§]!&§;
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§;g§;
   import §4-§.§>Z§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import flash.text.TextFieldAutoSize;
   
   public class §'!'§ extends §9B§
   {
       
      
      public function §'!'§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §7+§ = true;
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§>Z§ = §`k§.getItemByName("TextField_ChapterName") as §>Z§;
         _loc1_.§23§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§`k§.getItemByName("MovieClip_DarkBG") as §;g§).mClip.alpha = 0;
         (§`k§.getItemByName("Container_FullGame") as §'J§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§>Z§ = null;
         if(§8!3§.§-[§ != null)
         {
            _loc1_ = §`k§.getItemByName("TextField_ChapterName") as §>Z§;
            _loc1_.§23§.text = §8!3§.§&3§().writtenName;
            (§`k§.getItemByName("TextField_LevelName") as §>Z§).§23§.text = §]!&§.§!!2§(§8!3§.§-[§);
         }
         (§`k§.getItemByName("Container_PauseMenu") as §'J§).x = §9B§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §#!4§.pause();
         if(§;&§ != null)
         {
            §;&§.stop();
         }
         §;&§ = §,G§.§+S§.§,+§(§,G§.§+S§.§1u§(§`k§.getItemByName("Container_PauseMenu") as §'J§,{"x":0},null,0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("MovieClip_DarkBG") as §;g§).mClip,{"alpha":1},{"alpha":0},0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("Container_FullGame") as §'J§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§,G§.§;§));
         §;&§.onComplete = §0!-§;
         §;&§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§`k§.getItemByName("Button_Resume") as §%+§).setEnabled(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§`k§.getItemByName("Button_Resume") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§;&§ != null)
         {
            §;&§.stop();
         }
         §;&§ = §,G§.§+S§.§,+§(§,G§.§+S§.§1u§(§`k§.getItemByName("Container_PauseMenu") as §'J§,{"x":OFFSCREEN_X},null,0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("MovieClip_DarkBG") as §;g§).mClip,{"alpha":0},{"alpha":1},0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("Container_FullGame") as §'J§).mClip,{"alpha":0},{"alpha":1},0.25));
         §;&§.onComplete = §2§;
         §;&§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#@§.§]z§.§[!2§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§;&§)
         {
            §;&§.updateState();
         }
      }
   }
}
