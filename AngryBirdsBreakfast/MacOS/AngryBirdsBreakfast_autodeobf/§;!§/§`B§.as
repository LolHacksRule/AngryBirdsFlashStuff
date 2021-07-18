package §;!§
{
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §#![§.§%!W§;
   import §&v§.§#!R§;
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§[!x§;
   import com.angrybirds.§&!"§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §`B§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelSelectionState";
       
      
      public function §`B§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §`!K§() : XML
      {
         return §4!=§.§'!u§(§#"0§.§+#§.Views.ViewLevelSelectionCustom[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`!2§.§?>§();
         §&!"§.§1!D§.§"!Q§(false);
         §6!!§.singleton.§%![§.§[!"§();
         this.§+1§();
         §?P§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §?P§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
         (§6!!§.singleton as §4!=§).§"!<§();
         §&" §.resetCurrentLevel();
         §&" §.resetPreviousLevel();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      private function §+1§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= §%!W§.§9!v§.length)
         {
            _loc2_ = §?P§.getItemByName("Button_Level" + _loc1_).mClip;
            _loc2_.TextField_LevelNum.text.mouseEnabled = false;
            if(§`!2§.§'!d§(§%!W§.§9!v§[_loc1_ - 1]))
            {
               (§?P§.getItemByName("Button_Level" + _loc1_) as §;§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = §%!W§.§?&§[_loc1_ - 1];
               _loc3_ = §6!!§.singleton.§<!S§.userProgress.§9"+§(§%!W§.§9!v§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§?P§.getItemByName("Button_Level" + _loc1_) as §;§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = §%!W§.§?&§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§<!_§("1-1");
               break;
            case "C1_LEVEL_2":
               this.§<!_§("1-2");
               break;
            case "C1_LEVEL_3":
               this.§<!_§("1-3");
               break;
            case "C1_LEVEL_4":
               this.§<!_§("1-4");
               break;
            case "C1_LEVEL_5":
               this.§<!_§("1-5");
               break;
            case "C1_LEVEL_6":
               this.§<!_§("1-6");
               break;
            case "C1_LEVEL_7":
               this.§<!_§("1-7");
               break;
            case "BUTTON_BACK":
               (§6!!§.singleton as §4!=§).§?!b§.§[o§(null);
               (§6!!§.singleton as §4!=§).§=D§(false);
               §<f§(§^!N§.§-!q§);
               §'!c§.§3!f§("Menu_Back");
               break;
            case "BUTTON_QUIT":
               §6!!§.singleton.§%![§.openPopup(new §[!x§());
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_MUTE":
               (§6!!§.singleton as §4!=§).§5@§();
               this.updateMuteButtonState();
               break;
            case "BUTTON_CREDITS":
               this.§%!n§();
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_FULLSCREEN":
               (§6!!§.singleton as §4!=§).§?!l§();
               §'!c§.§3!f§("Menu_Confirm");
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               if(!(§6!!§.singleton as §4!=§).§&!N§())
               {
                  §6!!§.singleton.§%![§.openPopup(new §[!x§());
                  §'!c§.§3!f§("Menu_Confirm");
               }
         }
      }
      
      override public function updateMuteButtonState() : void
      {
         var _loc1_:Boolean = (§6!!§.singleton as §4!=§).soundsEnabled;
         §?P§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
         §'!c§.§3!f§("Menu_Confirm");
      }
      
      private function §<!_§(param1:String) : void
      {
         if(§`!2§.§'!d§(param1))
         {
            §&" §.loadLevel(param1);
            §<f§(StateCutScene.§-!q§);
            §'!c§.§3!f§("Menu_Confirm");
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!G§.§2Z§.updateTextFields(§?P§.container,"StateEpisodeSelection");
      }
      
      private function §%!n§() : void
      {
         var _loc1_:§5!Y§ = (§6!!§.singleton as §4!=§).§@!R§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(§%!W§.§ H§));
         (§6!!§.singleton as §4!=§).§<f§(§-!v§.§-!q§);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
   }
}
