package §0o§
{
   import § !k§.§=!#§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §<2§ extends §=!#§
   {
       
      
      public function §<2§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §[!?§ = true;
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_FacebookLevelPause[0]);
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
         var _loc1_:§3!@§ = §`-§.getItemByName("TextField_ChapterName") as §3!@§;
         _loc1_.§!!2§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
      }
      
      protected function §7#§(param1:String) : String
      {
         return §+!g§.§,!X§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§3!@§ = null;
         if(LevelManager.§^!F§ != null)
         {
            _loc1_ = §`-§.getItemByName("TextField_ChapterName") as §3!@§;
            _loc1_.§!!2§.text = LevelManager.§5!K§().writtenName;
            (§`-§.getItemByName("TextField_LevelName") as §3!@§).§!!2§.text = this.§7#§(LevelManager.§^!F§);
         }
         (§`-§.getItemByName("Container_PauseMenu") as §9!#§).x = §=!#§.OFFSCREEN_X;
         §"!f§(false);
         §4!]§.pause();
         if(§'!N§ != null)
         {
            §'!N§.stop();
         }
         §'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":0},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":1},{"alpha":0},0.25));
         §'!N§.onComplete = §"4§;
         §'!N§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §`-§.getItemByName("Button_Help").setVisibility(false);
         §`-§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§'!N§ != null)
         {
            §'!N§.stop();
         }
         §'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":OFFSCREEN_X},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":0},{"alpha":1},0.25));
         §'!N§.onComplete = §91§;
         §'!N§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         switch(param2)
         {
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§`;§();
               AngryBirdsFP11.§0S§(_loc4_);
               break;
            case "LEARN_MORE":
               _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §]V§.§ 4§(_loc5_);
               §[!m§.§1H§.§2!3§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
