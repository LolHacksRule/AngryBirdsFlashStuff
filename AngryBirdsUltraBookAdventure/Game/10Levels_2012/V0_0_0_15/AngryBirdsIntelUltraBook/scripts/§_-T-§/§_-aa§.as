package §_-T-§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-UO§;
   import §_-hX§.§_-Gc§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-IO§;
   import §_-x8§.§_-nG§;
   import com.angrybirds.friendsbar.§_-ri§;
   
   public class §_-aa§ extends §_-nG§
   {
      
      public static var §_-yr§:String = "";
      
      public static const §_-pk§:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§_-dd§ = null;
      
      private var mChapterTween1:§_-dd§ = null;
      
      private var mChapterTween2:§_-dd§ = null;
      
      private var §_-DS§:§_-dd§ = null;
      
      private var §_-0F-§:§_-dd§ = null;
      
      private var §_-n2§:§_-Gc§;
      
      private var §_-XP§:§_-IO§;
      
      public function §_-aa§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_ChapterFacebookSelection[0]);
         this.§_-XP§ = new §_-IO§(§_-s0§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = false;
         (§ in§.§_-HY§ as §_-rG§).§_-Cw§("");
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.start();
         }
         § in§.§_-Dc§.§_-Vf§(false);
         § in§.§_-Dc§.clearLevel();
         if(§_-yr§ == "")
         {
            §_-pX§.playSound("Intel_StartPlay",§_-pX§.§_-02H§,0,-1,this.§_-eq§);
         }
         else
         {
            AngryBirdsFP11.playThemeMusic();
         }
         var _loc1_:int = 0;
         while(_loc1_ <= 3)
         {
            this.§_-lA§(_loc1_);
            _loc1_++;
         }
         §_-s0§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
         §_-s0§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-f0§);
         this.§_-XP§.start();
      }
      
      private function §_-eq§() : void
      {
         if(§_-rE§)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function deActivate() : void
      {
         §_-yr§ == "";
         super.deActivate();
         this.§_-XP§.stop();
         this.§_-8V§();
         §_-s0§.getItemByName("MovieClip_StartPlaying").mClip.scaleX = 1;
         §_-s0§.getItemByName("MovieClip_StartPlaying").mClip.scaleY = 1;
         §_-UO§.§_-yr§ = §_-pk§;
      }
      
      private function §_-8V§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween1 != null)
         {
            this.mChapterTween1.stop();
            this.mChapterTween1 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
         if(this.§_-DS§ != null)
         {
            this.§_-DS§.stop();
            this.§_-DS§ = null;
         }
      }
      
      private function §_-lA§(param1:int) : void
      {
         var _loc2_:§_-0C5§ = LevelManager.§_-h8§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         §_-s0§.setText(AngryBirdsFP11.sUserProgress.§_-Zh§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc2_),"Textfield_CollectedStars" + param1);
         §_-s0§.setText(AngryBirdsFP11.sUserProgress.§_-80§(_loc2_) + "/" + AngryBirdsFP11.sUserProgress.§_-q4§(_loc2_),"Textfield_ME_Score" + param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§_-XP§.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§_-s8§("1000-" + _loc5_);
            mNextState = StateCutScene.§_-pk§;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §_-7A§.§_-pk§;
               break;
            case "CHAPTER0":
               §_-pX§.playSound("Menu_Confirm");
               LevelManager.§_-07s§ = 0;
               mNextState = §_-UO§.§_-pk§;
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("MovieClip_StartPlaying").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§_-cx§.§_-Kl§);
               this.mChapterTween0.play();
         }
      }
   }
}
