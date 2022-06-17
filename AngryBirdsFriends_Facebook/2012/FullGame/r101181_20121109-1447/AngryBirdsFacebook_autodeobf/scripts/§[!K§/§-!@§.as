package §[!K§
{
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §1p§.GiftParticle;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §3!7§.§?!F§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §7"@§.§4!K§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §=,§.UserProgressEvent;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!@§ extends §4!K§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
      
      private static const §7"&§:int = 2500;
       
      
      private var §`"#§:Timer;
      
      private var §@!R§:Boolean;
      
      private var §"!E§:Boolean;
      
      private var § !d§:String;
      
      protected var §;]§:Boolean = false;
      
      public function §-!@§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
         §!"+§ = true;
      }
      
      protected function §#p§(param1:int) : void
      {
         (AngryBirdsFP11.sUserProgress as §[<§).§7&§(LevelManager.§'!O§,param1);
         (§#6§.§ q§ as §3T§).§ k§(LevelManager.§'!O§,param1);
         (AngryBirdsFP11.sUserProgress as §[<§).saveLevelProgress(LevelManager.§'!O§,false,true);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §,!C§.§;"§.§4W§(LevelManager.§'!O§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§-!4§(LevelManager.§;!f§(_loc1_));
         }
         else
         {
            LevelManager.§+!;§ = LevelManager.§'!O§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function setScoreData() : void
      {
         var _loc5_:§"m§ = null;
         this.§"!E§ = false;
         this.§ !d§ = null;
         var _loc1_:§7'§ = §6w§.getItemByName("mcGiftIcon");
         _loc1_.setVisibility(false);
         §6w§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §[<§).§<U§(LevelManager.§'!O§);
         var _loc3_:int = §#6§.§'" §.getScore();
         §%"1§ = _loc3_ > _loc2_;
         if(_loc2_ == 0)
         {
            §[!3§ = true;
            _loc1_.setVisibility(true);
            _loc1_.mClip.gotoAndStop(1);
            (_loc5_ = §>!+§.§;"§.§^!K§(_loc1_.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.6,§>!+§.§%%§)).onComplete = this.§4!%§;
            _loc5_.play();
         }
         if(§%"1§)
         {
            this.§@!R§ = false;
            (AngryBirdsFP11.sUserProgress as §[<§).addEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
            this.§#p§(_loc3_);
         }
         §[=§(_loc3_,_loc2_);
         § w§();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§'!O§,_loc3_);
         (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(false);
         (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("UnLit");
         (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("UnLit");
         (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.gotoAndStop("UnLit");
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;]§ = false;
         if(LevelManager.§%^§())
         {
            §^7§();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
         (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         if(§,!C§.§;"§.§4W§(LevelManager.§'!O§))
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Menu") as §^!D§).x = §]4§[0];
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = §]4§[1];
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).x = §]4§[2];
         }
         else
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_Menu") as §^!D§).x = §]4§[0] + Math.abs(§]4§[1] - §]4§[0]) / 2;
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = §]4§[1] + Math.abs(§]4§[2] - §]4§[1]) / 2;
         }
      }
      
      private function §4!%§() : void
      {
         this.§`"#§ = new Timer(§7"&§,1);
         this.§`"#§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
         this.§`"#§.start();
      }
      
      private function §@E§(param1:Event) : void
      {
         if(this.§`"#§)
         {
            this.§`"#§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
            this.§`"#§.reset();
            var _loc2_:§7'§ = §6w§.getItemByName("mcGiftIcon");
            _loc2_.mClip.gotoAndStop(2);
            this.§`"#§ = null;
            var _loc4_:int = 0;
            while(_loc4_ < 15)
            {
               _loc2_.mClip.addChild(new GiftParticle(Math.random() * 30,Math.random() * -30));
               _loc4_++;
            }
            this.§"!E§ = true;
            if(this.§@!R§ && this.§ !d§)
            {
               this.§<^§(this.§ !d§);
            }
            return;
         }
      }
      
      private function §<^§(param1:String) : void
      {
         §?!F§.§;"§.§4!J§(param1,§?!F§.§;"§.§!!y§(param1) + 1);
         var _loc2_:§7'§ = §6w§.getItemByName("mcGiftIcon");
         _loc2_.mClip.gotoAndStop(param1);
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         super.onUserProgressSaved(param1);
         this.§@!R§ = true;
         if(param1.data)
         {
            if(param1.data is String)
            {
               if(param1.data.length > 1)
               {
                  if(this.§"!E§)
                  {
                     this.§ !d§ = param1.data as String;
                     this.§<^§(this.§ !d§);
                  }
                  else
                  {
                     this.§ !d§ = param1.data as String;
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`"#§)
         {
            this.§`"#§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@E§);
            this.§`"#§.reset();
         }
         this.§`"#§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:Boolean = true;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(this.§;]§)
               {
                  _loc4_ = false;
                  §%?§.§ ]§("levelend-win");
                  break;
               }
         }
         if(_loc4_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §;+§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §-k§.STATE_NAME;
      }
   }
}
