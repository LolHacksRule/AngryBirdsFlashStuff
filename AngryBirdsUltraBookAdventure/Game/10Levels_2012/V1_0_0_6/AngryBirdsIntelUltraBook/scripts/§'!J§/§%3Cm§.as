package §'!J§
{
   import §'!Q§.§ §;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§?!x§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §;H§.§-!X§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §<m§ extends §-!X§
   {
       
      
      public function §<m§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?C§ = true;
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_FacebookLevelPause[0]);
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         var _loc1_:§?!x§ = §&!m§.getItemByName("TextField_ChapterName") as §?!x§;
         _loc1_.§,!F§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
      }
      
      protected function §5f§(param1:String) : String
      {
         return § §.§'!X§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§?!x§ = null;
         if(LevelManager.§%n§ != null)
         {
            _loc1_ = §&!m§.getItemByName("TextField_ChapterName") as §?!x§;
            _loc1_.§,!F§.text = LevelManager.§];§().writtenName;
            (§&!m§.getItemByName("TextField_LevelName") as §?!x§).§,!F§.text = this.§5f§(LevelManager.§%n§);
         }
         (§&!m§.getItemByName("Container_PauseMenu") as §#?§).x = §-!X§.OFFSCREEN_X;
         §3$§(false);
         §^!c§.pause();
         if(§<!K§ != null)
         {
            §<!K§.stop();
         }
         §<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":0},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":1},{"alpha":0},0.25));
         §<!K§.onComplete = §^!-§;
         §<!K§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §&!m§.getItemByName("Button_Help").setVisibility(false);
         §&!m§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§<!K§ != null)
         {
            §<!K§.stop();
         }
         §<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":OFFSCREEN_X},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         §<!K§.onComplete = §6!1§;
         §<!K§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         switch(param2)
         {
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§0!b§();
               AngryBirdsFP11.§5!C§(_loc4_);
               break;
            case "LEARN_MORE":
               _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
               §@!J§.§!v§(_loc5_);
               §[!P§.§;!K§.§&2§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
