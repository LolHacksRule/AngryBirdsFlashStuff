package §6k§
{
   import §%!'§.§"!e§;
   import §-B§.§="0§;
   import §-B§.§]!<§;
   import §2!6§.§`"J§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §9!h§.UserProgressEvent;
   import §;n§.§&G§;
   import §<";§.§'y§;
   import §@",§.§^!f§;
   import §[">§.GiftParticle;
   import §^!o§.§=1§;
   import §`!n§.LevelManager;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §["K§ extends §^!f§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §^!W§:int = 2500;
       
      
      private var §^v§:Timer;
      
      private var §%!Q§:Boolean;
      
      private var §5"?§:Boolean;
      
      private var §6%§:String;
      
      public function §["K§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
         §=!J§ = true;
      }
      
      protected function §+!I§(param1:int) : void
      {
         (AngryBirdsFP11.sUserProgress as §'y§).§;P§(LevelManager.§`-§,param1);
         (§&2§.§5!k§ as §,"I§).§3!C§(LevelManager.§`-§,param1);
         (AngryBirdsFP11.sUserProgress as §'y§).saveLevelProgress(LevelManager.§`-§,false,true);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §=1§.§1[§.§4O§(LevelManager.§`-§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§^p§(LevelManager.§&!1§(_loc1_));
         }
         else
         {
            LevelManager.§]!5§ = LevelManager.§`-§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function setScoreData() : void
      {
         var _loc5_:§!"&§ = null;
         this.§5"?§ = false;
         this.§6%§ = null;
         var _loc1_:§&G§ = §2!K§.getItemByName("mcGiftIcon");
         _loc1_.setVisibility(false);
         §2!K§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §'y§).§6!C§(LevelManager.§`-§);
         var _loc3_:int = §&2§.§,!x§.getScore();
         §]"1§ = _loc3_ > _loc2_;
         if(_loc2_ == 0)
         {
            §["?§ = true;
            _loc1_.setVisibility(true);
            _loc1_.mClip.gotoAndStop(1);
            (_loc5_ = §&p§.§1[§.§7!3§(_loc1_.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.6,§&p§.§>!i§)).onComplete = this.§^!n§;
            _loc5_.play();
         }
         if(§]"1§)
         {
            this.§%!Q§ = false;
            (AngryBirdsFP11.sUserProgress as §'y§).addEventListener(UserProgressEvent.§%"B§,this.onUserProgressSaved);
            this.§+!I§(_loc3_);
         }
         §?`§(_loc3_,_loc2_);
         §^!+§();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§`-§,_loc3_);
         (§2!K§.getItemByName("MovieClip_NewHighScoreBadge") as §="0§).setVisibility(false);
         (§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).mClip.gotoAndStop("UnLit");
         (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).mClip.gotoAndStop("UnLit");
         (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).mClip.gotoAndStop("UnLit");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§;"@§())
         {
            §!!O§();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setVisibility(true);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setVisibility(true);
         (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         if(§=1§.§1[§.§4O§(LevelManager.§`-§))
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Menu") as §]!<§).x = §2">§[0];
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = §2">§[1];
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).x = §2">§[2];
         }
         else
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_Menu") as §]!<§).x = §2">§[0] + Math.abs(§2">§[1] - §2">§[0]) / 2;
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = §2">§[1] + Math.abs(§2">§[2] - §2">§[1]) / 2;
         }
      }
      
      private function §^!n§() : void
      {
         this.§^v§ = new Timer(§^!W§,1);
         this.§^v§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5",§);
         this.§^v§.start();
      }
      
      private function §5",§(param1:Event) : void
      {
         if(this.§^v§)
         {
            this.§^v§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5",§);
            this.§^v§.reset();
            var _loc2_:§&G§ = §2!K§.getItemByName("mcGiftIcon");
            _loc2_.mClip.gotoAndStop(2);
            this.§^v§ = null;
            var _loc4_:int = 0;
            while(_loc4_ < 15)
            {
               _loc2_.mClip.addChild(new GiftParticle(Math.random() * 30,Math.random() * -30));
               _loc4_++;
            }
            this.§5"?§ = true;
            if(this.§%!Q§ && this.§6%§)
            {
               this.§[!M§(this.§6%§);
            }
            return;
         }
      }
      
      private function §[!M§(param1:String) : void
      {
         §`"J§.§1[§.§0?§(param1,§`"J§.§1[§.§'>§(param1) + 1);
         var _loc2_:§&G§ = §2!K§.getItemByName("mcGiftIcon");
         _loc2_.mClip.gotoAndStop(param1);
         §"!e§.§3"E§(§"!e§.§2g§,param1,1);
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§%!Q§ = true;
         if(param1.data)
         {
            if(param1.data is String)
            {
               if(param1.data.length > 1)
               {
                  if(this.§5"?§)
                  {
                     this.§6%§ = param1.data as String;
                     this.§[!M§(this.§6%§);
                  }
                  else
                  {
                     this.§6%§ = param1.data as String;
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§^v§)
         {
            this.§^v§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5",§);
            this.§^v§.reset();
         }
         this.§^v§ = null;
      }
      
      override protected function getCutSceneState() : String
      {
         return §0§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §?1§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §-#§.STATE_NAME;
      }
   }
}
