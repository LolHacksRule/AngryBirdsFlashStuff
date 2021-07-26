package com.angrybirds.tournament
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.server.TournamentLoader;
   import com.angrybirds.states.tournament.StateOverlappingTournamentsMenu;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class OverlappingTournamentButton
   {
      
      public static const STATE_NOT_INITIALIZED:String = "NONE";
      
      public static const STATE_UPCOMING:String = "UPCOMING";
      
      public static const STATE_JOIN:String = "JOIN";
      
      public static const STATE_PLAY:String = "PLAY";
      
      public static const STATE_CLAIM:String = "CLAIM";
      
      public static const STATE_ENDED:String = "ENDED";
      
      public static const STATE_MISSED:String = "MISSED";
      
      private static const BUTTON_PART_HEADER:String = "OT_HEADER";
      
      private static const BUTTON_PART_HEADER_DISABLED:String = "OT_HEADER_DISABLED";
      
      private static const BUTTON_PART_HEADER_ICON:String = "OT_HEADER_ICON";
      
      private static const BUTTON_PART_IMAGE:String = "OT_IMAGE";
      
      private static const smWeekDayLabels:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
       
      
      private var mOverlappingTournamentInfo:Object;
      
      private var mTournamentButton:UIComponentRovio;
      
      private var mTournamentModel:TournamentModel;
      
      private var mBrandInitialized:Boolean;
      
      public function OverlappingTournamentButton(tournamentButton:UIComponentRovio, overlappingTournamentInfo:Object)
      {
         super();
         this.mTournamentButton = tournamentButton;
         this.mTournamentButton.setEnabled(false);
         this.mTournamentModel = TournamentModel.instance;
         this.mOverlappingTournamentInfo = overlappingTournamentInfo;
         this.mTournamentButton.visible = false;
         if(overlappingTournamentInfo == null)
         {
            this.mOverlappingTournamentInfo = new Object();
            this.mOverlappingTournamentInfo.state = STATE_NOT_INITIALIZED;
            this.initState();
         }
         else
         {
            this.initBrandedGraphics();
         }
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      private function initState() : void
      {
         var currentButtonMC:MovieClip = null;
         var leagueCoinReward:int = 0;
         var friendCoinReward:int = 0;
         this.mTournamentButton.visible = true;
         this.mBrandInitialized = true;
         this.mTournamentButton.mClip.getChildByName("Current").visible = false;
         this.mTournamentButton.mClip.getChildByName("Current_join").visible = false;
         this.mTournamentButton.mClip.getChildByName("Upcoming").visible = false;
         this.mTournamentButton.mClip.getChildByName("Missed").visible = false;
         this.mTournamentButton.mClip.getChildByName("Claim").visible = false;
         this.mTournamentButton.mClip.getChildByName("Ended").visible = false;
         switch(this.mOverlappingTournamentInfo.state)
         {
            case STATE_NOT_INITIALIZED:
               return;
            case STATE_UPCOMING:
               currentButtonMC = this.mTournamentButton.mClip.getChildByName("Upcoming") as MovieClip;
               currentButtonMC.visible = true;
               this.mTournamentButton.setEnabled(false);
               break;
            case STATE_JOIN:
               currentButtonMC = this.mTournamentButton.mClip.getChildByName("Current_join") as MovieClip;
               this.mTournamentButton.setEnabled(true);
               currentButtonMC.visible = true;
               break;
            case STATE_PLAY:
               currentButtonMC = this.mTournamentButton.mClip.getChildByName("Current") as MovieClip;
               (currentButtonMC.getChildByName("PositionText") as TextField).text = "" + this.mOverlappingTournamentInfo.tournamentRank;
               if(this.mOverlappingTournamentInfo.tournamentRank <= 10)
               {
                  (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
               }
               else if(this.mOverlappingTournamentInfo.tournamentRank <= 20)
               {
                  (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
               }
               else
               {
                  (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               this.mTournamentButton.setEnabled(true);
               currentButtonMC.visible = true;
               break;
            case STATE_MISSED:
               currentButtonMC = this.mTournamentButton.mClip.getChildByName("Missed") as MovieClip;
               this.mTournamentButton.setEnabled(false);
               currentButtonMC.visible = true;
               break;
            case STATE_ENDED:
            case STATE_CLAIM:
               if(this.mOverlappingTournamentInfo.state == STATE_ENDED)
               {
                  currentButtonMC = this.mTournamentButton.mClip.getChildByName("Ended") as MovieClip;
                  this.mTournamentButton.setEnabled(false);
               }
               else
               {
                  currentButtonMC = this.mTournamentButton.mClip.getChildByName("Claim") as MovieClip;
                  this.mTournamentButton.setEnabled(true);
               }
               if(this.mOverlappingTournamentInfo.leagueRankChange)
               {
                  (currentButtonMC.getChildByName("RewardLeaguePointsText") as TextField).text = "" + this.mOverlappingTournamentInfo.leagueRankChange;
               }
               else
               {
                  (currentButtonMC.getChildByName("RewardLeaguePointsText") as TextField).text = "-";
               }
               leagueCoinReward = 0;
               if(this.mOverlappingTournamentInfo.coinsReward)
               {
                  leagueCoinReward = this.mOverlappingTournamentInfo.coinsReward;
               }
               if(this.mOverlappingTournamentInfo.leagueRewardsUpdate)
               {
                  leagueCoinReward = this.mOverlappingTournamentInfo.leagueRewardsUpdate[0].quantity;
               }
               friendCoinReward = 0;
               if(this.mOverlappingTournamentInfo.friendRewardsUpdate)
               {
                  friendCoinReward = this.mOverlappingTournamentInfo.friendRewardsUpdate[0].quantity;
               }
               if(leagueCoinReward > 0)
               {
                  (currentButtonMC.getChildByName("RewardCoinsText") as TextField).text = "" + leagueCoinReward;
               }
               else
               {
                  (currentButtonMC.getChildByName("RewardCoinsText") as TextField).text = "-";
               }
               if(this.mOverlappingTournamentInfo.tournamentRank == undefined)
               {
                  (currentButtonMC.getChildByName("PositionText") as TextField).text = "-";
                  (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
               }
               else
               {
                  (currentButtonMC.getChildByName("PositionText") as TextField).text = "" + this.mOverlappingTournamentInfo.tournamentRank;
                  if(this.mOverlappingTournamentInfo.tournamentRank <= 10)
                  {
                     (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(1);
                  }
                  else if(this.mOverlappingTournamentInfo.tournamentRank <= 20)
                  {
                     (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(2);
                  }
                  else
                  {
                     (currentButtonMC.getChildByName("PositionBG") as MovieClip).gotoAndStop(3);
                  }
               }
               currentButtonMC.visible = true;
         }
         var date:Date = new Date();
         date.time = this.mOverlappingTournamentInfo.start;
         (currentButtonMC.getChildByName("StartDayText") as TextField).text = smWeekDayLabels[date.getDay()];
      }
      
      public function update(deltaTime:Number) : void
      {
         var secondsLeft:int = 0;
         var now:Number = NaN;
         switch(this.mOverlappingTournamentInfo.state)
         {
            case STATE_NOT_INITIALIZED:
               return;
            case STATE_UPCOMING:
               secondsLeft = this.updateTimeLeft((this.mTournamentButton.mClip.getChildByName("Upcoming") as MovieClip).getChildByName("UpcomingTimerText") as TextField,this.mOverlappingTournamentInfo.start);
               now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(secondsLeft == 0)
               {
                  this.mOverlappingTournamentInfo.state = STATE_JOIN;
                  this.initState();
               }
               break;
            case STATE_JOIN:
            case STATE_PLAY:
               this.updateTimeLeft((this.mTournamentButton.mClip.getChildByName("Current") as MovieClip).getChildByName("DaysLeft") as TextField,this.mOverlappingTournamentInfo.end);
               secondsLeft = this.updateTimeLeft((this.mTournamentButton.mClip.getChildByName("Current_join") as MovieClip).getChildByName("DaysLeft") as TextField,this.mOverlappingTournamentInfo.end);
               if(secondsLeft == 0)
               {
                  StateOverlappingTournamentsMenu.forceRefreshOverlappingTournamentData();
               }
         }
      }
      
      protected function updateTimeLeft(targetTextField:TextField, targetTime:Number) : int
      {
         var timeLeftPretty:Array = null;
         var secondsLeft:int = this.getSecondsLeft(targetTime);
         if(secondsLeft > 0)
         {
            timeLeftPretty = FriendsUtil.getTimeLeftAsPrettyString(secondsLeft);
            targetTextField.text = timeLeftPretty[0];
            timeLeftPretty = null;
         }
         else
         {
            secondsLeft = 0;
            targetTextField.text = "0";
         }
         return secondsLeft;
      }
      
      private function initBrandedGraphics() : void
      {
         var iconPosition:MovieClip = null;
         this.mBrandInitialized = false;
         if(this.brand == "")
         {
            iconPosition = this.mTournamentButton.mClip.getChildByName("IconPosition") as MovieClip;
            iconPosition.removeChildren();
            this.initState();
            return;
         }
         var tournamentLoader:TournamentLoader = new TournamentLoader();
         tournamentLoader.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,function assetLoaded(event:TournamentEvent):void
         {
            var stateName:String = null;
            var iconPosition:MovieClip = null;
            var iconNumber:int = 0;
            var buttonCurrent:MovieClip = null;
            var cls:Class = null;
            var oldClip:MovieClip = null;
            tournamentLoader = null;
            var handleStates:Array = ["Current","Current_join","Claim"];
            var brandedName:String = "_" + brand;
            for each(stateName in handleStates)
            {
               buttonCurrent = mTournamentButton.mClip.getChildByName(stateName) as MovieClip;
               cls = AssetCache.getAssetFromCache(BUTTON_PART_HEADER + brandedName,false,false);
               if(cls)
               {
                  oldClip = buttonCurrent.getChildByName(BUTTON_PART_HEADER) as MovieClip;
                  oldClip.removeChildren();
                  oldClip.addChild(new cls());
               }
            }
            handleStates = ["Upcoming","Missed","Ended"];
            for each(stateName in handleStates)
            {
               buttonCurrent = mTournamentButton.mClip.getChildByName(stateName) as MovieClip;
               cls = AssetCache.getAssetFromCache(BUTTON_PART_HEADER_DISABLED + brandedName,false,false);
               if(cls)
               {
                  oldClip = buttonCurrent.getChildByName(BUTTON_PART_HEADER_DISABLED) as MovieClip;
                  oldClip.removeChildren();
                  oldClip.addChild(new cls());
               }
            }
            iconPosition = mTournamentButton.mClip.getChildByName("IconPosition") as MovieClip;
            iconPosition.removeChildren();
            iconNumber = mOverlappingTournamentInfo.id % 3;
            cls = AssetCache.getAssetFromCache(BUTTON_PART_HEADER_ICON + brandedName + "_" + iconNumber,false,false);
            if(cls)
            {
               iconPosition.addChild(new cls());
            }
            handleStates = ["Current_join","Upcoming"];
            for each(stateName in handleStates)
            {
               buttonCurrent = mTournamentButton.mClip.getChildByName(stateName) as MovieClip;
               cls = AssetCache.getAssetFromCache(BUTTON_PART_IMAGE + brandedName + "_" + iconNumber,false,false);
               if(cls)
               {
                  oldClip = buttonCurrent.getChildByName(BUTTON_PART_IMAGE) as MovieClip;
                  oldClip.removeChildren();
                  oldClip.addChild(new cls());
               }
            }
            initState();
         });
         tournamentLoader.loadAssets(this.brand,null,null);
      }
      
      private function getSecondsLeft(targetTime:Number) : int
      {
         var seconds:int = (targetTime - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
         return int(Math.max(0,seconds));
      }
      
      public function get tournamentId() : int
      {
         return !!this.mOverlappingTournamentInfo ? int(this.mOverlappingTournamentInfo.id) : 0;
      }
      
      public function get buttonName() : String
      {
         return this.mTournamentButton.name;
      }
      
      public function isTournamentClaimable() : Boolean
      {
         if(this.mOverlappingTournamentInfo.state == STATE_CLAIM && this.mOverlappingTournamentInfo.rewardClaimed == 0)
         {
            return true;
         }
         return false;
      }
      
      public function get brand() : String
      {
         if(this.mOverlappingTournamentInfo.brand)
         {
            return this.mOverlappingTournamentInfo.brand.toUpperCase();
         }
         return "";
      }
      
      public function isBrandInitialized() : Boolean
      {
         return this.mBrandInitialized;
      }
   }
}
