package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class TournamentScorePlate extends BasePlate implements IGiftingPlate
   {
       
      
      private var mPlate:MovieClip;
      
      private var mTournamentChallengeButton:SimpleButton;
      
      private var mMiniChallengeButton:MiniPlusButton;
      
      private var mChallengeButtonPauseTimer:Timer;
      
      public function TournamentScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.TournamentScorePlateAsset")());
         this.mPlate.mcCrown.stop();
         addLeagueIcon();
         this.stopPauseTimer();
         tabChildren = false;
      }
      
      override public function set data(value:FriendListItemVO) : void
      {
         super.data = value;
         this.stopPauseTimer();
      }
      
      override public function update() : void
      {
         if(!this.userTournamentScoreVO)
         {
            return;
         }
         var tournamentPlateFrame:int = 1;
         if(isMe)
         {
            tournamentPlateFrame = 2;
         }
         else if(isBirdBot)
         {
            tournamentPlateFrame = 3;
         }
         this.mPlate.gotoAndStop(tournamentPlateFrame);
         updatePhoto();
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.userTournamentScoreVO.userName || "",MAX_NAME_WIDTH);
         if(this.userTournamentScoreVO.rank <= 3 && this.userTournamentScoreVO.tournamentScore > 0)
         {
            this.mPlate.mcCrown.visible = true;
            this.mPlate.txtRank.visible = false;
            this.mPlate.mcCrown.gotoAndStop(this.userTournamentScoreVO.rank);
         }
         else
         {
            this.mPlate.mcCrown.visible = false;
            this.mPlate.txtRank.visible = true;
            FriendsUtil.setTextInCorrectFont(this.mPlate.txtRank,this.userTournamentScoreVO.rank.toString() || "");
         }
         this.mPlate.txtScore.text = AddCommasToAmount.addCommasToAmount(this.userTournamentScoreVO.tournamentScore) || "0";
         if(this.userTournamentScoreVO.tournamentScore > 0)
         {
            this.mPlate.txtCoins.visible = true;
            this.mPlate.CoinsBG.visible = true;
            this.mPlate.mcCoin.visible = true;
            this.mPlate.txtCoins.text = this.userTournamentScoreVO.rewardCoins > 0 ? "+" + this.userTournamentScoreVO.rewardCoins : this.userTournamentScoreVO.rewardCoins;
         }
         else
         {
            this.mPlate.mcCoin.visible = false;
            this.mPlate.CoinsBG.visible = false;
            this.mPlate.txtCoins.visible = false;
            this.mPlate.txtCoins.text = "0";
         }
         updateGiftPlate();
         updateBirdbotButton();
         this.updateLeagueIcon();
         this.updateTournamentChallengeButton();
         this.updateMiniChallengeButton();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!mLeagueIcon || !mStarPlayer)
         {
            return;
         }
         if(!isBirdBot && LeagueModel.instance.active)
         {
            if(this.userTournamentScoreVO.leagueStars > 0)
            {
               mLeagueIcon.visible = false;
               mStarPlayer.visible = true;
               mStarPlayer.txtRakning.text = this.userTournamentScoreVO.leagueStars.toString();
            }
            else
            {
               mLeagueIcon.visible = true;
               mStarPlayer.visible = false;
               if(this.userTournamentScoreVO.leagueName && FriendsUtil.movieClipHasLabel(mLeagueIcon,this.userTournamentScoreVO.leagueName))
               {
                  mLeagueIcon.gotoAndStop(this.userTournamentScoreVO.leagueName);
               }
               else
               {
                  mLeagueIcon.gotoAndStop("NONE");
               }
            }
         }
      }
      
      public function setCanSendGift(canSend:Boolean, playTransition:Boolean) : void
      {
         if(isBirdBot)
         {
            canSend = false;
         }
         mMiniGiftButton.setCanSendGift(canSend,playTransition);
      }
      
      public function get userTournamentScoreVO() : UserTournamentScoreVO
      {
         return data as UserTournamentScoreVO;
      }
      
      protected function updateTournamentChallengeButton() : void
      {
         if(OpenGraphData.getObjectId(OpenGraphData.CHALLENGE_TO_TOURNAMENT))
         {
            if(!isBirdBot && !isMe && this.userTournamentScoreVO.canBeChallenged)
            {
               if(!this.mTournamentChallengeButton)
               {
                  this.mTournamentChallengeButton = new AssetCache.getAssetFromCache("ButtonChallenge")();
                  this.mTournamentChallengeButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
                  addChild(this.mTournamentChallengeButton);
               }
               this.mTournamentChallengeButton.visible = true;
               this.mTournamentChallengeButton.y = 22;
               this.mTournamentChallengeButton.x = 59;
               if(mMiniGiftButton && this.contains(mMiniGiftButton.mAssetHolder))
               {
                  mMiniGiftButton.mAssetHolder.visible = false;
               }
               this.mPlate.txtScore.visible = false;
               this.mPlate.txtRank.visible = false;
               if(!this.mMiniChallengeButton)
               {
                  this.mMiniChallengeButton = new MiniPlusButton();
                  addChild(this.mMiniChallengeButton.mAssetHolder);
                  this.mMiniChallengeButton.miniPlusButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
               }
               this.mMiniChallengeButton.miniPlusButton.visible = true;
            }
            else if(this.mTournamentChallengeButton)
            {
               this.mTournamentChallengeButton.visible = false;
               if(mMiniGiftButton && this.contains(mMiniGiftButton.mAssetHolder))
               {
                  mMiniGiftButton.mAssetHolder.visible = true;
               }
               this.mPlate.txtScore.visible = true;
               this.mMiniChallengeButton.miniPlusButton.visible = false;
            }
            else
            {
               this.mPlate.txtScore.visible = true;
            }
         }
      }
      
      private function updateMiniChallengeButton() : void
      {
         if(this.mMiniChallengeButton)
         {
            setChildIndex(this.mMiniChallengeButton.mAssetHolder,numChildren - 1);
         }
      }
      
      private function onChallengeClick(e:MouseEvent) : void
      {
         if(!this.mChallengeButtonPauseTimer)
         {
            this.mTournamentChallengeButton.removeEventListener(MouseEvent.CLICK,this.onChallengeClick);
            this.mMiniChallengeButton.miniPlusButton.removeEventListener(MouseEvent.CLICK,this.onChallengeClick);
            this.handleExternalCallbacks(true);
            dispatchEvent(new FriendsBarEvent(FriendsBarEvent.SEND_CHALLENGE_TO_USER_CLICKED,this.data,true));
            this.mChallengeButtonPauseTimer = new Timer(2000);
            this.mChallengeButtonPauseTimer.addEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
            this.mChallengeButtonPauseTimer.start();
         }
      }
      
      private function onChallengeCompleted(userID:String) : void
      {
         if(this.userTournamentScoreVO && userID == this.userTournamentScoreVO.userId)
         {
            this.handleExternalCallbacks(false);
            this.mTournamentChallengeButton.visible = false;
            this.mMiniChallengeButton.miniPlusButton.visible = false;
         }
      }
      
      private function onChallengeCancelled(userID:String) : void
      {
         if(this.userTournamentScoreVO && userID == this.userTournamentScoreVO.userId)
         {
            this.handleExternalCallbacks(false);
            this.mTournamentChallengeButton.visible = true;
            this.mMiniChallengeButton.miniPlusButton.visible = true;
         }
      }
      
      private function handleExternalCallbacks(addListeners:Boolean) : void
      {
         if(addListeners)
         {
            ExternalInterfaceHandler.addCallback("challengeSentToUser",this.onChallengeCompleted);
            ExternalInterfaceHandler.addCallback("challengeCancelled",this.onChallengeCancelled);
         }
         else
         {
            ExternalInterfaceHandler.removeCallback("challengeSentToUser",this.onChallengeCompleted);
            ExternalInterfaceHandler.removeCallback("challengeCancelled",this.onChallengeCancelled);
         }
      }
      
      private function onButtonPauseTimer(e:TimerEvent) : void
      {
         this.stopPauseTimer();
      }
      
      private function stopPauseTimer() : void
      {
         if(this.mChallengeButtonPauseTimer)
         {
            this.mChallengeButtonPauseTimer.stop();
            this.mChallengeButtonPauseTimer.removeEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
            this.mChallengeButtonPauseTimer = null;
            this.mTournamentChallengeButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
            this.mMiniChallengeButton.miniPlusButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
         }
      }
   }
}
