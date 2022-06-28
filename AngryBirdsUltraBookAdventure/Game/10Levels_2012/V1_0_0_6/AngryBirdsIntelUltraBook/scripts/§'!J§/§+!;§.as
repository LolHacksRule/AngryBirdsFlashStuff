package §'!J§
{
   import §'!Q§.§ §;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §;!o§.§>!l§;
   import §;H§.§6M§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§]!e§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+!;§ extends §6M§
   {
       
      
      private var §=U§:Array;
      
      private var § O§:Boolean = false;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      public function §+!;§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§=U§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§=U§.push((§&!m§.getItemByName("Button_Menu") as §==§).x);
         this.§=U§.push((§&!m§.getItemByName("Button_Replay") as §==§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
         §^!c§.§5!Y§.background.§5!e§();
         if(LevelManager.§];§().name == "1000")
         {
            §&!m§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§7!X§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
         }
         else if(LevelManager.§7!J§())
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
         }
         else
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ > param1.totalFrames)
         {
            _loc2_ = 1;
         }
         param1.gotoAndStop(_loc2_);
      }
      
      override public function run(param1:Number) : int
      {
         this.§8"§ += param1;
         if(this.§8"§ >= this.§?!j§)
         {
            this.§2!#§(§&!m§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
            this.§8"§ = 0;
         }
         return super.run(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §@!J§.§!v§(_loc4_);
               §[!P§.§;!K§.§&2§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "SHARE_DEFAULT":
               §>!l§.§ a§("shareDefault",LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),0,false);
               break;
            case "EMBED":
               §]!e§.§@!'§(LevelManager.§%n§,LevelManager.§];§().writtenName + "-" + § §.§'!X§(LevelManager.§%n§),§^!c§.§-U§.getScore(),"");
         }
      }
   }
}
