package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.OpenGraphData;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class LevelScorePlate extends BasePlate implements IGiftingPlate
   {
       
      
      private var mPlate:MovieClip;
      
      private var mFeatherMask:Sprite;
      
      private var mCheckMarkAnimation:MovieClip;
      
      private var mTournamentChallengeButton:SimpleButton;
      
      private var mMiniChallengeButton:MiniPlusButton;
      
      private var mBragButtonPauseTimer:Timer;
      
      private var mChallengeButtonPauseTimer:Timer;
      
      public function LevelScorePlate()
      {
         super();
         this.init();
      }
      
      private static function numberFormat(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var j:int = 0;
         var i:int = 0;
         var inc:Number = Math.pow(10,maxDecimals);
         var str:String = String(Math.round(inc * Number(number)) / inc);
         var hasSep:*;
         var sep:int = !!(hasSep = str.indexOf(".") == -1) ? int(str.length) : int(str.indexOf("."));
         var ret:* = (hasSep && !forceDecimals ? "" : (!!siStyle ? "," : ".")) + str.substr(sep + 1);
         if(forceDecimals)
         {
            for(j = 0; j <= maxDecimals - (str.length - (!!hasSep ? sep - 1 : sep)); ret += "0",j++)
            {
            }
         }
         while(i + 3 < (str.substr(0,1) == "-" ? sep - 1 : sep))
         {
            ret = (!!siStyle ? "." : ",") + str.substr(sep - (i = i + 3),3) + ret;
         }
         return str.substr(0,sep - i) + ret;
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("com.AngryBirds.friendsbar.LevelScorePlateAsset")());
         this.mPlate.mcBackground.stop();
         this.makeFeatherMask();
         this.mPlate.mcCrown.stop();
         this.stopPauseTimer();
         this.mPlate.btnBrag.addEventListener(MouseEvent.CLICK,this.onBragClick);
         addLeagueIcon();
      }
      
      override public function set data(value:FriendListItemVO) : void
      {
         super.data = value;
         this.stopPauseTimer();
         this.onCheckMarkAnimationDone();
      }
      
      override public function update() : void
      {
         if(!this.userLevelScoreVO)
         {
            return;
         }
         var scorePlateFrame:int = 1;
         if(isMe)
         {
            scorePlateFrame = 2;
         }
         else if(isBirdBot)
         {
            scorePlateFrame = 3;
         }
         this.mPlate.gotoAndStop(scorePlateFrame);
         this.mPlate.btnBrag.visible = this.userLevelScoreVO.beaten == true && !(AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.isUserBragged(this.userLevelScoreVO.userId) && ExceptionUserIDsManager.instance.canSendBragRequestTo(this.userLevelScoreVO.userId) && !isBirdBot;
         updatePhoto();
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtName,this.userLevelScoreVO.userName || "",MAX_NAME_WIDTH);
         this.mPlate.mcBackground.gotoAndStop(!!this.userLevelScoreVO.isTournamentScore ? 2 : 1);
         this.mPlate.mcFeather.visible = !this.userLevelScoreVO.isTournamentScore;
         var offset:Number = !!this.userLevelScoreVO.isTournamentScore ? Number(26) : Number(0);
         this.mPlate.mcStar1.x = 61 + offset;
         this.mPlate.mcStar2.x = 75 + offset;
         this.mPlate.mcStar3.x = 89 + offset;
         this.mPlate.txtScore.x = 55 + offset;
         if(this.userLevelScoreVO.rank <= 3 && (this.userLevelScoreVO.levelScore > 0 || this.userLevelScoreVO.mightyEagleScore > 0))
         {
            this.mPlate.mcCrown.visible = true;
            this.mPlate.txtRank.visible = false;
            this.mPlate.mcCrown.gotoAndStop(this.userLevelScoreVO.rank);
         }
         else
         {
            this.mPlate.mcCrown.visible = false;
            this.mPlate.txtRank.visible = true;
            this.mPlate.txtRank.text = this.userLevelScoreVO.rank.toString() || "";
            FriendsUtil.setTextInCorrectFont(this.mPlate.txtRank,this.userLevelScoreVO.rank.toString() || "");
         }
         this.mFeatherMask.scaleX = this.getMEScale(this.userLevelScoreVO.mightyEagleScore);
         FriendsUtil.setTextInCorrectFont(this.mPlate.txtScore,numberFormat(this.userLevelScoreVO.levelScore) || "0");
         this.mPlate.mcStar1.visible = this.userLevelScoreVO.stars >= 1;
         this.mPlate.mcStar2.visible = this.userLevelScoreVO.stars >= 2;
         this.mPlate.mcStar3.visible = this.userLevelScoreVO.stars >= 3;
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
         if(!this.userLevelScoreVO.isTournamentScore)
         {
            mLeagueIcon.visible = false;
            mStarPlayer.visible = false;
            return;
         }
         if(!isBirdBot && LeagueModel.instance.active)
         {
            if(this.userLevelScoreVO.leagueStars > 0)
            {
               mLeagueIcon.visible = false;
               mStarPlayer.visible = true;
               mStarPlayer.txtRakning.text = this.userLevelScoreVO.leagueStars.toString();
            }
            else
            {
               mLeagueIcon.visible = true;
               mStarPlayer.visible = false;
               if(this.userLevelScoreVO.leagueName)
               {
                  mLeagueIcon.gotoAndStop(this.userLevelScoreVO.leagueName);
               }
               else
               {
                  mLeagueIcon.gotoAndStop("NONE");
               }
            }
         }
      }
      
      private function updateTournamentChallengeButton() : void
      {
         if(OpenGraphData.getObjectId(OpenGraphData.CHALLENGE_TO_TOURNAMENT))
         {
            if(!isBirdBot && !isMe && this.userLevelScoreVO.canBeChallenged)
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
      
      private function getMEScale(value:int) : Number
      {
         if(value <= 0)
         {
            return 0;
         }
         if(value < 25)
         {
            return 0.125;
         }
         return Math.floor(value / 25) * 0.25;
      }
      
      public function setCanSendGift(canSend:Boolean, playTransition:Boolean) : void
      {
         if(isBirdBot)
         {
            canSend = false;
         }
         mMiniGiftButton.setCanSendGift(canSend,playTransition);
      }
      
      private function onBragClick(e:Event) : void
      {
         this.mPlate.btnBrag.removeEventListener(MouseEvent.CLICK,this.onBragClick);
         this.handleExternalCallbacks(true);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.BRAG,this,true));
         this.mBragButtonPauseTimer = new Timer(1000);
         this.mBragButtonPauseTimer.addEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
         this.mBragButtonPauseTimer.start();
      }
      
      private function onBragReceived(friendId:String) : void
      {
      }
      
      private function onBragCompleted(friendId:String) : void
      {
         if(friendId == this.userLevelScoreVO.userId)
         {
            this.handleExternalCallbacks(false);
            this.mPlate.btnBrag.visible = false;
            this.mCheckMarkAnimation = new AssetCache.getAssetFromCache("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
            this.mCheckMarkAnimation.x = this.mPlate.btnBrag.x + 30;
            this.mCheckMarkAnimation.y = this.mPlate.btnBrag.y + 8;
            addChildAt(this.mCheckMarkAnimation,numChildren - 1);
            this.mCheckMarkAnimation.addFrameScript(this.mCheckMarkAnimation.totalFrames - 1,this.onCheckMarkAnimationDone);
            this.mCheckMarkAnimation.play();
         }
      }
      
      private function onCheckMarkAnimationDone() : void
      {
         if(this.mCheckMarkAnimation)
         {
            this.mCheckMarkAnimation.stop();
            removeChild(this.mCheckMarkAnimation);
            this.mCheckMarkAnimation = null;
         }
      }
      
      private function onBragCancelled(friendId:String) : void
      {
         if(friendId == this.userLevelScoreVO.userId)
         {
            this.handleExternalCallbacks(false);
            this.mPlate.btnBrag.visible = true;
            this.userLevelScoreVO.beaten = true;
         }
      }
      
      private function onButtonPauseTimer(e:TimerEvent) : void
      {
         this.stopPauseTimer();
      }
      
      private function stopPauseTimer() : void
      {
         if(this.mBragButtonPauseTimer)
         {
            this.mBragButtonPauseTimer.stop();
            this.mBragButtonPauseTimer.removeEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
            this.mBragButtonPauseTimer = null;
            this.mPlate.btnBrag.addEventListener(MouseEvent.CLICK,this.onBragClick);
         }
         if(this.mChallengeButtonPauseTimer)
         {
            this.mChallengeButtonPauseTimer.stop();
            this.mChallengeButtonPauseTimer.removeEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
            this.mChallengeButtonPauseTimer = null;
            this.mTournamentChallengeButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
            this.mMiniChallengeButton.miniPlusButton.addEventListener(MouseEvent.CLICK,this.onChallengeClick,false,0,true);
         }
      }
      
      private function handleExternalCallbacks(addListeners:Boolean) : void
      {
         if(addListeners)
         {
            ExternalInterfaceHandler.addCallback("bragRequestReceived",this.onBragReceived);
            ExternalInterfaceHandler.addCallback("bragCompleted",this.onBragCompleted);
            ExternalInterfaceHandler.addCallback("bragCancelled",this.onBragCancelled);
            ExternalInterfaceHandler.addCallback("challengeCancelled",this.onChallengeCancelled);
         }
         else
         {
            ExternalInterfaceHandler.removeCallback("bragRequestReceived",this.onBragReceived);
            ExternalInterfaceHandler.removeCallback("bragCompleted",this.onBragCompleted);
            ExternalInterfaceHandler.removeCallback("bragCancelled",this.onBragCancelled);
            ExternalInterfaceHandler.removeCallback("challengeCancelled",this.onChallengeCancelled);
         }
      }
      
      private function makeFeatherMask() : void
      {
         this.mFeatherMask = new Sprite();
         this.mFeatherMask.x = this.mPlate.mcFeather.x;
         this.mFeatherMask.y = this.mPlate.mcFeather.y;
         this.mFeatherMask.graphics.beginFill(0);
         this.mFeatherMask.graphics.drawRect(0,0,this.mPlate.mcFeather.width,this.mPlate.mcFeather.height);
         this.mFeatherMask.graphics.endFill();
         this.mPlate.addChild(this.mFeatherMask);
         this.mPlate.mcFeather.mask = this.mFeatherMask;
      }
      
      public function get userLevelScoreVO() : UserLevelScoreVO
      {
         return data as UserLevelScoreVO;
      }
      
      private function onChallengeClick(e:MouseEvent) : void
      {
         this.mTournamentChallengeButton.removeEventListener(MouseEvent.CLICK,this.onChallengeClick);
         this.mMiniChallengeButton.miniPlusButton.removeEventListener(MouseEvent.CLICK,this.onChallengeClick);
         this.handleExternalCallbacks(true);
         dispatchEvent(new FriendsBarEvent(FriendsBarEvent.SEND_CHALLENGE_TO_USER_CLICKED,this.data,true));
         this.mChallengeButtonPauseTimer = new Timer(1000);
         this.mChallengeButtonPauseTimer.addEventListener(TimerEvent.TIMER,this.onButtonPauseTimer);
         this.mChallengeButtonPauseTimer.start();
      }
      
      private function onChallengeCancelled(userID:String) : void
      {
         if(this.userLevelScoreVO && userID == this.userLevelScoreVO.userId)
         {
            this.handleExternalCallbacks(false);
            this.updateTournamentChallengeButton();
         }
      }
   }
}
