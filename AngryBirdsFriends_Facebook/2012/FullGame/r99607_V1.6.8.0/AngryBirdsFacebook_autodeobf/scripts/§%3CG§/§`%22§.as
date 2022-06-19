package §<G§
{
   import §"",§.§"Z§;
   import §'i§.UserProgressEvent;
   import §+"§.§'!0§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§#z§;
   import §9&§.GiftParticle;
   import §<!e§.§[!t§;
   import §[!K§.§&"7§;
   import §[!z§.LevelManager;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`"§ extends §&"7§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §2d§:int = 2500;
       
      
      private var §>!a§:Timer;
      
      private var §1!=§:Boolean;
      
      private var set:Boolean;
      
      private var §=e§:String;
      
      public function §`"§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
         §@!`§ = true;
      }
      
      protected function §`!X§(param1:int) : void
      {
         (AngryBirdsFP11.sUserProgress as §2!P§).§?;§(LevelManager.§[!<§,param1);
         (§9!%§.§ !W§ as § W§).§"! §(LevelManager.§[!<§,param1);
         (AngryBirdsFP11.sUserProgress as §2!P§).saveLevelProgress(LevelManager.§[!<§,false,true);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §[!t§.§8c§.§1!y§(LevelManager.§[!<§);
         LevelManager.§'!"§(LevelManager.§?">§(_loc1_));
         mNextState = this.getCutSceneState();
      }
      
      override protected function setScoreData() : void
      {
         var _loc5_:§-!F§ = null;
         this.set = false;
         this.§=e§ = null;
         var _loc1_:§#z§ = §2"-§.getItemByName("mcGiftIcon");
         _loc1_.setVisibility(false);
         §2"-§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §2!P§).§8l§(LevelManager.§[!<§);
         var _loc3_:int = §9!%§.§&N§.getScore();
         §>!^§ = _loc3_ > _loc2_;
         if(_loc2_ == 0)
         {
            §+`§ = true;
            _loc1_.setVisibility(true);
            _loc1_.mClip.gotoAndStop(1);
            (_loc5_ = §7!b§.§8c§.§4&§(_loc1_.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.6,§7!b§.§5E§)).onComplete = this.§8"B§;
            _loc5_.play();
         }
         if(§>!^§)
         {
            this.§1!=§ = false;
            (AngryBirdsFP11.sUserProgress as §2!P§).addEventListener(UserProgressEvent.§]"4§,this.onUserProgressSaved);
            this.§`!X§(_loc3_);
         }
         §1L§(_loc3_,_loc2_);
         §?"6§();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§[!<§,_loc3_);
         (§2"-§.getItemByName("MovieClip_NewHighScoreBadge") as §"Z§).setVisibility(false);
         (§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).mClip.gotoAndStop("UnLit");
         (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).mClip.gotoAndStop("UnLit");
         (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).mClip.gotoAndStop("UnLit");
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:String = §[!t§.§8c§.§1!y§(LevelManager.§[!<§);
         if(_loc1_ == null || _loc1_ == "")
         {
            §2"-§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         else
         {
            §2"-§.getItemByName("Button_NextLevel").setVisibility(true);
         }
      }
      
      private function §8"B§() : void
      {
         this.§>!a§ = new Timer(§2d§,1);
         this.§>!a§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§<$§);
         this.§>!a§.start();
      }
      
      private function §<$§(param1:Event) : void
      {
         if(this.§>!a§)
         {
            this.§>!a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§<$§);
            this.§>!a§.reset();
            var _loc2_:§#z§ = §2"-§.getItemByName("mcGiftIcon");
            _loc2_.mClip.gotoAndStop(2);
            this.§>!a§ = null;
            var _loc4_:int = 0;
            while(_loc4_ < 15)
            {
               _loc2_.mClip.addChild(new GiftParticle(Math.random() * 30,Math.random() * -30));
               _loc4_++;
            }
            this.set = true;
            if(this.§1!=§ && this.§=e§)
            {
               this.§@!<§(this.§=e§);
            }
            return;
         }
      }
      
      private function §@!<§(param1:String) : void
      {
         §'!0§.§8c§.§'u§(param1,§'!0§.§8c§.§9+§(param1) + 1);
         var _loc2_:§#z§ = §2"-§.getItemByName("mcGiftIcon");
         _loc2_.mClip.gotoAndStop(param1);
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§1!=§ = true;
         if(param1.data)
         {
            if(param1.data is String)
            {
               if(param1.data.length > 1)
               {
                  if(this.set)
                  {
                     this.§=e§ = param1.data as String;
                     this.§@!<§(this.§=e§);
                  }
                  else
                  {
                     this.§=e§ = param1.data as String;
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!a§)
         {
            this.§>!a§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§<$§);
            this.§>!a§.reset();
         }
         this.§>!a§ = null;
      }
      
      override protected function getCutSceneState() : String
      {
         return §<i§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §0o§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §5w§.STATE_NAME;
      }
   }
}
