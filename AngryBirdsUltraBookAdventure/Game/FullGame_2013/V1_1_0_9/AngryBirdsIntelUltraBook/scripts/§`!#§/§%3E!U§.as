package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§@!A§;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§^! §;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §]F§.§`!G§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §>!U§ extends §@!A§
   {
       
      
      public function §>!U§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §]!E§ = true;
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_FacebookLevelPause[0]);
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         var _loc1_:§54§ = §'!Q§.getItemByName("TextField_ChapterName") as §54§;
         _loc1_.§5!B§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
      }
      
      protected function §5![§(param1:String) : String
      {
         return §@!c§.§<!N§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§54§ = null;
         if(LevelManager.§"L§ != null)
         {
            _loc1_ = §'!Q§.getItemByName("TextField_ChapterName") as §54§;
            _loc1_.§5!B§.text = LevelManager.§+!$§().writtenName;
            (§'!Q§.getItemByName("TextField_LevelName") as §54§).§5!B§.text = this.§5![§(LevelManager.§"L§);
         }
         (§'!Q§.getItemByName("Container_PauseMenu") as §^! §).x = §@!A§.OFFSCREEN_X;
         §3^§(false);
         §,!s§.pause();
         if(§ !d§ != null)
         {
            § !d§.stop();
         }
         § !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":0},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":1},{"alpha":0},0.25));
         § !d§.onComplete = §^R§;
         § !d§.play();
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         §'!Q§.getItemByName("Button_Help").setVisibility(false);
         §'!Q§.getItemByName("Button_Sound").setVisibility(false);
      }
      
      override protected function closePauseMenu() : void
      {
         if(§ !d§ != null)
         {
            § !d§.stop();
         }
         § !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":OFFSCREEN_X},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":0},{"alpha":1},0.25));
         § !d§.onComplete = §7g§;
         § !d§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         switch(param2)
         {
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"C§();
               AngryBirdsFP11.§]!G§(_loc4_);
               break;
            case "LEARN_MORE":
               _loc5_ = "http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000859891";
               §!!K§.§%$§(_loc5_);
               §<t§.§`n§.§5!M§();
               _loc6_ = new URLRequest(_loc5_);
               navigateToURL(_loc6_,"_blank");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
