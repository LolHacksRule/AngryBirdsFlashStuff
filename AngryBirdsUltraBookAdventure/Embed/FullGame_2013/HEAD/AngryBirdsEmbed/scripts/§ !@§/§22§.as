package § !@§
{
   import §#P§.§@7§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§[4§;
   import §1!-§.§^!8§;
   import §5!L§.§=w§;
   import flash.text.TextFieldAutoSize;
   
   public class §22§ extends §7§
   {
       
      
      public function §22§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §+_§ = true;
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§`a§ = §]F§.getItemByName("TextField_ChapterName") as §`a§;
         _loc1_.§@w§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip.alpha = 0;
         (§]F§.getItemByName("Container_FullGame") as §4!=§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§`a§ = null;
         if(§[4§.§"!>§ != null)
         {
            _loc1_ = §]F§.getItemByName("TextField_ChapterName") as §`a§;
            _loc1_.§@w§.text = §[4§.§5C§().writtenName;
            (§]F§.getItemByName("TextField_LevelName") as §`a§).§@w§.text = §^!8§.§@!"§(§[4§.§"!>§);
         }
         (§]F§.getItemByName("Container_PauseMenu") as §4!=§).x = §7§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §=w§.pause();
         if(§!e§ != null)
         {
            §!e§.stop();
         }
         §!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":0},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":1},{"alpha":0},0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("Container_FullGame") as §4!=§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§@7§.§=;§));
         §!e§.onComplete = §super§;
         §!e§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§]F§.getItemByName("Button_Resume") as §7-§).setEnabled(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§]F§.getItemByName("Button_Resume") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§!e§ != null)
         {
            §!e§.stop();
         }
         §!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":OFFSCREEN_X},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":0},{"alpha":1},0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("Container_FullGame") as §4!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         §!e§.onComplete = §!Q§;
         §!e§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §<!7§.§4!"§.§^"§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§!e§)
         {
            §!e§.updateState();
         }
      }
   }
}
