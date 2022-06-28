package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§>!"§;
   import §2y§.§[!i§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>L§.§+!i§;
   import §@!&§.§'!o§;
   import §^!m§.§4!i§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §7a§ extends §>!"§
   {
       
      
      private var §@X§:Array;
      
      private var §"=§:Boolean = false;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      public function §7a§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§@X§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§@X§.push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
         this.§@X§.push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
         §,!s§.§=!I§.background.§4!=§();
         if(LevelManager.§+!$§().name == "1000")
         {
            §'!Q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§8`§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
         }
         else if(LevelManager.§7v§())
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
         }
         else
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §3!F§(param1:MovieClip) : void
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
         this.§@!U§ += param1;
         if(this.§@!U§ >= this.§&!!§)
         {
            this.§3!F§(§'!Q§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
            this.§@!U§ = 0;
         }
         return super.run(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §!!K§.§%$§(_loc4_);
               §<t§.§`n§.§5!M§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "SHARE_DEFAULT":
               §+!i§.§>!y§("shareDefault",LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),0,false);
               break;
            case "EMBED":
               §4!i§.§4!x§(LevelManager.§"L§,LevelManager.§+!$§().writtenName + "-" + §@!c§.§<!N§(LevelManager.§"L§),§,!s§.§ Q§.getScore(),"");
         }
      }
   }
}
