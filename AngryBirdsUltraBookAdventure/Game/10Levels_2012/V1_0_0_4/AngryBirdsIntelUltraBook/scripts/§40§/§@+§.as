package §40§
{
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §4e§.§=!p§;
   import §9!5§.§"Y§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §?!7§.§5!I§;
   import §@i§.§=r§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §@+§ extends §"Y§
   {
       
      
      private var §+!s§:Array;
      
      private var §=D§:Boolean = false;
      
      private var §@!I§:Number = 41.666666666666664;
      
      private var §,<§:int = 0;
      
      public function §@+§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§+!s§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§+!s§.push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
         this.§+!s§.push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
         § _§.§!6§.background.§>G§();
         if(LevelManager.§0v§().name == "1000")
         {
            §5!P§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§9!j§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
         }
         else if(LevelManager.§8!<§())
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
         }
         else
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §?!@§(param1:MovieClip) : void
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
         this.§,<§ += param1;
         if(this.§,<§ >= this.§@!I§)
         {
            this.§?!@§(§5!P§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
            this.§,<§ = 0;
         }
         return super.run(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §'N§.§`I§(_loc4_);
               §@!9§.§6!f§.§5C§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "SHARE_DEFAULT":
               §=r§.§[!3§("shareDefault",LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),0,false);
               break;
            case "EMBED":
               §@M§.§'t§(LevelManager.§4Y§,LevelManager.§0v§().writtenName + "-" + §=!p§.§1!j§(LevelManager.§4Y§),§ _§.§?!]§.getScore(),"");
         }
      }
   }
}
