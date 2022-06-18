package §88§
{
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§!X§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§`!B§;
   import §<!M§.§+!!§;
   import §<!M§.§[i§;
   import §@q§.§6;§;
   import flash.text.TextFieldAutoSize;
   
   public class §0+§ extends §7!A§
   {
       
      
      public function §0+§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §[d§ = true;
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_FacebookLevelPause[0]);
         var _loc1_:§ 3§ = §=V§.getItemByName("TextField_ChapterName") as § 3§;
         _loc1_.set.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§=V§.getItemByName("MovieClip_DarkBG") as §!X§).mClip.alpha = 0;
         (§=V§.getItemByName("Container_FullGame") as §05§).mClip.alpha = 0;
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§ 3§ = null;
         if(§[i§.§0A§ != null)
         {
            _loc1_ = §=V§.getItemByName("TextField_ChapterName") as § 3§;
            _loc1_.set.text = §[i§.§1V§().writtenName;
            (§=V§.getItemByName("TextField_LevelName") as § 3§).set.text = §+!!§.§2!1§(§[i§.§0A§);
         }
         (§=V§.getItemByName("Container_PauseMenu") as §05§).x = §7!A§.OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §'5§.pause();
         if(§"d§ != null)
         {
            §"d§.stop();
         }
         §"d§ = §6;§.§&e§.§=!>§(§6;§.§&e§.§42§(§=V§.getItemByName("Container_PauseMenu") as §05§,{"x":0},null,0.25),§6;§.§&e§.§42§((§=V§.getItemByName("MovieClip_DarkBG") as §!X§).mClip,{"alpha":1},{"alpha":0},0.25),§6;§.§&e§.§42§((§=V§.getItemByName("Container_FullGame") as §05§).mClip,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":0,
            "scaleY":0,
            "alpha":1
         },0.25,§6;§.§3!A§));
         §"d§.onComplete = §`F§;
         §"d§.play();
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§=V§.getItemByName("Button_Resume") as §^!@§).setEnabled(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setEnabled(param1);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§=V§.getItemByName("Button_Resume") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setComponentVisualState(param1);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§"d§ != null)
         {
            §"d§.stop();
         }
         §"d§ = §6;§.§&e§.§=!>§(§6;§.§&e§.§42§(§=V§.getItemByName("Container_PauseMenu") as §05§,{"x":OFFSCREEN_X},null,0.25),§6;§.§&e§.§42§((§=V§.getItemByName("MovieClip_DarkBG") as §!X§).mClip,{"alpha":0},{"alpha":1},0.25),§6;§.§&e§.§42§((§=V§.getItemByName("Container_FullGame") as §05§).mClip,{"alpha":0},{"alpha":1},0.25));
         §"d§.onComplete = §+!$§;
         §"d§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §3J§.§3!2§.§`q§("Pause");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§"d§)
         {
            §"d§.updateState();
         }
      }
   }
}
