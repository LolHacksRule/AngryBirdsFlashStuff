package com.angrybirds.popups.qualifier
{
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.easing.Bounce;
   import com.rovio.tween.easing.Linear;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.effects.easing.Back;
   
   public class QualifierInterruptedPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierInterruptedPopUp";
      
      private static const STATE_NONE:uint = 0;
      
      private static const STATE_SHOW_ROUND_BUTTONS:uint = 1;
      
      private static const STATE_SHOW_LAST_ROUND_BUTTON:uint = 2;
      
      private static const STATE_SHOW_WEEKLY_TOURNAMENT:uint = 3;
      
      private static const STATE_SHOW_CHEST:uint = 4;
      
      private static const STATE_SHOW_LAST_ROUND_COMPLETED:uint = 5;
      
      private static const STATE_WEEKLY_TOURNAMENT_SLIDING:uint = 6;
      
      private static const STATE_INTRODUCE_LEAGUES:uint = 7;
      
      private static const STATE_SHOW_STARS:uint = 8;
      
      private static const STATE_SHOW_RANK_UP_TEXT:uint = 9;
      
      private static const STATE_SHOW_CLAIM_REWARDS:uint = 10;
      
      private static const NUM_LEAGUES:uint = 7;
      
      private static const NUM_STARS:uint = 3;
      
      private static const LAST_ROUND_MC_MAX_SCALE:int = 2;
      
      private static var sFriendsScoreData:Array;
      
      private static const MAX_FRIENDS_TO_SHOW:uint = 6;
      
      private static var mFriendsDataAvailable:Boolean = false;
      
      private static var mFriendsDisplayed:Boolean = false;
      
      private static var SFX_NAMES_FOR_LEAGUES:Array = ["league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_silver","league_promotion_diamond"];
      
      public static var SHOWN:Boolean = false;
       
      
      private var mYellowBar:DisplayObject;
      
      private var mRounds:int;
      
      private var mWeeklyTournamentMC:DisplayObjectContainer;
      
      private var mDebugClip:Sprite;
      
      private var mLeaguesMC:DisplayObjectContainer;
      
      private const ROUND_BUTTON_5_ROUNDS_X_PADDING:uint = 25;
      
      private const ROUND_BUTTON_5_ROUNDS_X_OFFSET:uint = 10;
      
      private var mYellowBarOriginalScaleX:Number;
      
      private var mYellowBarOriginalScaleY:Number;
      
      private var mUpdateTimer:int;
      
      private var mNextStateTimer:int;
      
      private var mNextStateDelay:int;
      
      private var mNextState:uint = 0;
      
      private var mCurrentState:uint = 0;
      
      private var mRoundMCs:Array;
      
      private var lastRoundOrigScaleX:Number;
      
      private var lastRoundOrigScaleY:Number;
      
      private var mRewardChestMC:DisplayObject;
      
      private var mClaimButton:DisplayObject;
      
      private var mYellowBarOriginalX:Number;
      
      private var mYellowBarOriginalY:Number;
      
      private var mLeagueMCs:Array;
      
      private var mRankUpMC:DisplayObject;
      
      private var mPlayerAvatar:DisplayObjectContainer;
      
      private var playPlayerJumping:Boolean = false;
      
      private var _curve:Array;
      
      private var _curvePoints:int = 30;
      
      private var curveAngle:Number;
      
      private var index:int;
      
      private var mFriendAvatarsGrp1MC:DisplayObjectContainer;
      
      private var mFriendAvatarsGrp2MC:DisplayObjectContainer;
      
      private var mPlayerFinalAvatarMC:DisplayObjectContainer;
      
      private var mTweenManager:TweenManager;
      
      private var mRoundSoundCounter:int;
      
      private var mPlayedRoundOpenerSounds:Boolean;
      
      private var mPlayedStarSounds:Boolean;
      
      private var mStarSoundCounter:int;
      
      private var mPlayedLeagueSounds:Boolean;
      
      private var mLeagueSoundCounter:int;
      
      public function QualifierInterruptedPopUp(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         this.mRoundMCs = [];
         this.mLeagueMCs = [];
         this._curve = [];
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_QualifierInterruptedPopUp[0],ID);
      }
      
      public static function setFriendsData(scoreData:Array) : void
      {
         var userProgress:FacebookUserProgress = null;
         var scoreVO:UserTournamentScoreVO = null;
         var maxLimit:uint = 0;
         var challengeIndex:int = 0;
         var vo:UserTournamentScoreVO = null;
         if(!mFriendsDataAvailable)
         {
            sFriendsScoreData = [];
            userProgress = AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
            for each(scoreVO in scoreData)
            {
               if(scoreVO.userId != userProgress.userID && scoreVO.leagueName != "QUALIFIER")
               {
                  sFriendsScoreData.push(scoreVO);
               }
            }
            maxLimit = MAX_FRIENDS_TO_SHOW - sFriendsScoreData.length;
            challengeIndex = 0;
            while(challengeIndex < CachedFacebookFriends.challengeCandidates.length && challengeIndex < maxLimit)
            {
               vo = CachedFacebookFriends.challengeCandidates[challengeIndex];
               if(CachedFacebookFriends.challengedIDs.indexOf(vo.userId) == -1 && vo.leagueName != "QUALIFIER")
               {
                  sFriendsScoreData.push(CachedFacebookFriends.challengeCandidates[challengeIndex]);
               }
               challengeIndex++;
            }
            mFriendsDataAvailable = true;
         }
      }
      
      override protected function init() : void
      {
         var starMC:DisplayObject = null;
         SHOWN = true;
         super.init();
         SoundEngine.addNewChannelControl("leagues_channel",10,1);
         this.mTweenManager = TweenManager.instance;
         this.mRounds = TournamentModel.instance.qualifierRoundsCompleted;
         var mClip:MovieClip = mContainer.mClip;
         this.mYellowBar = mClip.yellowBar;
         this.mWeeklyTournamentMC = mClip.weeklyTournamentMC;
         this.mLeaguesMC = mClip.leaguesMC;
         this.mRewardChestMC = mClip.rewardChest;
         this.mClaimButton = mClip.btnClaim;
         this.mRankUpMC = mClip.rankUpMC;
         this.mPlayerAvatar = mClip.PlayerAvatar;
         this.setUpProfilePics();
         for(var i:int = 1; i <= NUM_LEAGUES; i++)
         {
            this.mLeagueMCs.push(this.mLeaguesMC.getChildByName("QualifierLeague" + i));
         }
         for(var k:int = 0; k < NUM_STARS; k++)
         {
            starMC = this.mLeaguesMC.getChildByName("QualifierStar" + (k + 1));
            starMC.visible = false;
         }
         this.mYellowBarOriginalX = this.mYellowBar.x - (this.mYellowBar.width >> 1);
         this.mYellowBarOriginalY = this.mYellowBar.y - (this.mYellowBar.height >> 1);
         this.mYellowBarOriginalScaleX = this.mYellowBar.scaleX;
         this.mYellowBarOriginalScaleY = this.mYellowBar.scaleY;
         this.mWeeklyTournamentMC.visible = false;
         this.mLeaguesMC.visible = false;
         this.mRewardChestMC.visible = false;
         this.mClaimButton.visible = false;
         this.mRankUpMC.visible = false;
         this.mPlayerFinalAvatarMC.visible = false;
         this.mPlayerAvatar.visible = false;
         this.mClaimButton.addEventListener(MouseEvent.CLICK,this.onClaimClick);
         this.setUpUIForRounds(mClip);
         this.grabPoints();
      }
      
      private function setUpProfilePics() : void
      {
         var frame1:DisplayObject = null;
         var frame2:DisplayObject = null;
         this.mFriendAvatarsGrp1MC = DisplayObjectContainer(this.mWeeklyTournamentMC.getChildByName("FriendAvatarsGroup1"));
         this.mFriendAvatarsGrp2MC = DisplayObjectContainer(this.mWeeklyTournamentMC.getChildByName("FriendAvatarsGroup2"));
         this.mPlayerFinalAvatarMC = DisplayObjectContainer(this.mWeeklyTournamentMC.getChildByName("PlayerAvatar"));
         var maxFriendsPlatePerGroup:uint = MAX_FRIENDS_TO_SHOW >> 1;
         for(var i:int = 0; i < maxFriendsPlatePerGroup; i++)
         {
            frame1 = this.mFriendAvatarsGrp1MC.getChildByName("FriendAvatar" + (i + 1));
            frame2 = this.mFriendAvatarsGrp2MC.getChildByName("FriendAvatar" + (i + 1));
            frame2.visible = false;
            frame1.visible = false;
         }
         this.showPlayerProfile();
         this.showFriends();
      }
      
      private function setUpUIForRounds(mClip:MovieClip) : void
      {
         switch(this.mRounds)
         {
            case 1:
               this.mYellowBar.scaleX = 0.8;
               break;
            case 2:
               this.mYellowBar.scaleX = 1.1;
               break;
            case 3:
               this.mYellowBar.scaleX = 1;
               break;
            case 4:
               this.mYellowBar.scaleX = 1.1;
         }
         this.addRoundsButtons();
         var lastRoundMC:MovieClip = this.mRoundMCs[this.mRounds - 1];
         if(this.mRounds < 5)
         {
            this.mWeeklyTournamentMC.x = lastRoundMC.x + lastRoundMC.mc.width + (this.mWeeklyTournamentMC.width >> 1) + 60;
         }
         this.mPlayerAvatar.x = lastRoundMC.x + (lastRoundMC.mc.width * LAST_ROUND_MC_MAX_SCALE - this.mPlayerAvatar.width >> 1);
         this.mPlayerAvatar.y = lastRoundMC.y - (lastRoundMC.mc.height * LAST_ROUND_MC_MAX_SCALE >> 1) - this.mPlayerAvatar.height;
      }
      
      private function addRoundsButtons() : void
      {
         var rndClass:Class = null;
         var rndParentMC:MovieClip = null;
         var rndMC:MovieClip = null;
         var mClip:MovieClip = mContainer.mClip;
         var xPos:Number = this.mYellowBar.x - (this.mYellowBar.width >> 1) + this.ROUND_BUTTON_5_ROUNDS_X_PADDING;
         var buttonLinkageName:String = this.mRounds > 2 ? "QualifierProgressRoundDefault" : "QualifierProgressRoundBig";
         for(var i:int = 0; i < this.mRounds; i++)
         {
            rndClass = AssetCache.getAssetFromCache(buttonLinkageName);
            rndParentMC = new rndClass();
            rndParentMC.x = xPos;
            rndMC = rndParentMC.mc;
            xPos += rndMC.width + this.ROUND_BUTTON_5_ROUNDS_X_OFFSET;
            rndParentMC.y = this.mYellowBar.y - (this.mYellowBar.height >> 1) + (this.mYellowBar.height - rndMC.height >> 1) + (rndMC.height >> 1);
            rndParentMC.visible = false;
            mClip.addChild(rndParentMC);
            this.mRoundMCs.push(rndParentMC);
         }
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.mUpdateTimer = getTimer();
         mContainer.mClip.addEventListener(Event.ENTER_FRAME,this.cbOnEnterFrame);
         if(this.mRounds > 1)
         {
            this.setNextState(STATE_SHOW_ROUND_BUTTONS);
         }
         else
         {
            this.setNextState(STATE_SHOW_LAST_ROUND_BUTTON);
         }
      }
      
      private function cbOnEnterFrame(event:Event) : void
      {
         var currentTimer:int = getTimer();
         var dt:int = currentTimer - this.mUpdateTimer;
         this.mUpdateTimer = currentTimer;
         this.update(dt);
      }
      
      private function update(dt:int) : void
      {
         if(this.mNextState != STATE_NONE && this.mNextState != this.mCurrentState)
         {
            this.mNextStateTimer += dt;
            if(this.mNextStateTimer >= this.mNextStateDelay)
            {
               this.changeState();
            }
         }
         this.updateState(dt);
         if(!mFriendsDisplayed)
         {
            if(mFriendsDataAvailable)
            {
               this.showFriends();
               mFriendsDisplayed = true;
            }
         }
      }
      
      private function updateState(dt:int) : void
      {
         var roundMc:MovieClip = null;
         var soundNum:uint = 0;
         var soundStr:String = null;
         var fn:Function = null;
         var starMC:DisplayObject = null;
         var leagueMC:DisplayObject = null;
         var soundName:String = null;
         switch(this.mCurrentState)
         {
            case STATE_SHOW_LAST_ROUND_COMPLETED:
               if(this.playPlayerJumping)
               {
                  if(this.index < this._curve.length - 1)
                  {
                     this.mPlayerAvatar.x = this._curve[this.index].x;
                     this.mPlayerAvatar.y = this._curve[this.index].y;
                     ++this.index;
                  }
                  else
                  {
                     this.playPlayerJumping = false;
                     this.mPlayerAvatar.visible = false;
                     this.mPlayerFinalAvatarMC.visible = true;
                     this.setNextState(STATE_WEEKLY_TOURNAMENT_SLIDING,1000);
                  }
               }
               break;
            case STATE_SHOW_ROUND_BUTTONS:
               if(!this.mPlayedRoundOpenerSounds)
               {
                  roundMc = this.mRoundMCs[this.mRoundSoundCounter];
                  if(roundMc && roundMc.scaleX >= 1)
                  {
                     soundNum = this.mRoundSoundCounter > 2 ? uint(3) : uint(this.mRoundSoundCounter + 1);
                     soundStr = "element_appear_" + soundNum;
                     SoundEngine.playSound(soundStr,SoundEngine.UI_CHANNEL);
                     fn = function():void
                     {
                        SoundEngine.playSound("Checkmark",SoundEngine.UI_CHANNEL);
                     };
                     setTimeout(fn,0.5);
                     if(this.mRoundSoundCounter < this.mRounds - 2)
                     {
                        ++this.mRoundSoundCounter;
                     }
                     else
                     {
                        this.mPlayedRoundOpenerSounds = true;
                     }
                  }
               }
               break;
            case STATE_SHOW_STARS:
               if(!this.mPlayedStarSounds)
               {
                  if(this.mStarSoundCounter > NUM_STARS - 1)
                  {
                     this.mPlayedStarSounds = true;
                  }
                  else
                  {
                     starMC = this.mLeaguesMC.getChildByName("QualifierStar" + (this.mStarSoundCounter + 1));
                     if(starMC && starMC.scaleX >= 0.5)
                     {
                        SoundEngine.playSound("league_promotion_star",SoundEngine.UI_CHANNEL);
                        ++this.mStarSoundCounter;
                     }
                  }
               }
               break;
            case STATE_INTRODUCE_LEAGUES:
               if(!this.mPlayedLeagueSounds)
               {
                  if(this.mLeagueSoundCounter > NUM_LEAGUES - 1)
                  {
                     this.mPlayedLeagueSounds = true;
                  }
                  else
                  {
                     leagueMC = this.mLeagueMCs[this.mLeagueSoundCounter];
                     if(leagueMC && leagueMC.scaleX <= 2 && leagueMC.scaleX != 0)
                     {
                        soundName = SFX_NAMES_FOR_LEAGUES[this.mLeagueSoundCounter];
                        SoundEngine.playSound(soundName,"leagues_channel");
                        ++this.mLeagueSoundCounter;
                     }
                  }
               }
         }
      }
      
      private function changeState() : void
      {
         this.mCurrentState = this.mNextState;
         this.mNextState = STATE_NONE;
         switch(this.mCurrentState)
         {
            case STATE_SHOW_ROUND_BUTTONS:
               this.showPreviouslyCompletedRounds();
               break;
            case STATE_SHOW_LAST_ROUND_BUTTON:
               this.showLastRound();
               break;
            case STATE_SHOW_WEEKLY_TOURNAMENT:
               this.showWeeklyTournament();
               break;
            case STATE_SHOW_CHEST:
               this.showChest();
               break;
            case STATE_SHOW_LAST_ROUND_COMPLETED:
               this.showLastRoundCompleted();
               break;
            case STATE_WEEKLY_TOURNAMENT_SLIDING:
               this.tweenSlidingWeeklyTournament();
               break;
            case STATE_INTRODUCE_LEAGUES:
               this.showLeagues();
               break;
            case STATE_SHOW_STARS:
               this.showLeagueStars();
               break;
            case STATE_SHOW_CLAIM_REWARDS:
               this.showClaimButton();
               break;
            case STATE_SHOW_RANK_UP_TEXT:
               this.showRankUpText();
         }
      }
      
      private function showRankUpText() : void
      {
         var rankUpTween:IManagedTween = this.mTweenManager.createTween(this.mRankUpMC,{
            "scaleX":this.mRankUpMC.scaleX,
            "scaleY":this.mRankUpMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,Quadratic.easeIn);
         this.mRankUpMC.visible = true;
         this.mRankUpMC.scaleY = 0;
         this.mRankUpMC.scaleX = 0;
         rankUpTween.play();
         SoundEngine.playSound("Congratulations_text_appear",SoundEngine.UI_CHANNEL);
         rankUpTween.onComplete = function fn():void
         {
            setNextState(STATE_SHOW_CLAIM_REWARDS,300);
         };
      }
      
      private function showLeagueStars() : void
      {
         var starMC:DisplayObject = null;
         var starDelay:Number = NaN;
         this.mPlayedStarSounds = false;
         this.mStarSoundCounter = 0;
         var tweens:Array = [];
         for(var k:int = 0; k < NUM_STARS; k++)
         {
            starMC = this.mLeaguesMC.getChildByName("QualifierStar" + (k + 1));
            starDelay = 0;
            if(k < 1)
            {
               starDelay = 0.2;
            }
            tweens.push(this.mTweenManager.createTween(starMC,{
               "scaleX":starMC.scaleX,
               "scaleY":starMC.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.3,Bounce.easeOut,starDelay));
            starMC.visible = true;
            starMC.scaleY = 0;
            starMC.scaleX = 0;
         }
         var starShowingTween:IManagedTween = this.mTweenManager.createSequenceTweens(tweens);
         starShowingTween.play();
         starShowingTween.onComplete = function fn():void
         {
            setNextState(STATE_SHOW_RANK_UP_TEXT);
         };
      }
      
      private function showClaimButton() : void
      {
         var showClaimButtonTween:IManagedTween = this.mTweenManager.createTween(this.mClaimButton,{
            "scaleX":this.mClaimButton.scaleX,
            "scaleY":this.mClaimButton.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Bounce.easeOut);
         showClaimButtonTween.play();
         this.mClaimButton.visible = true;
         this.mClaimButton.scaleY = 0;
         this.mClaimButton.scaleX = 0;
         SoundEngine.playSound("button_appear");
      }
      
      private function showPreviouslyCompletedRounds() : void
      {
         var delay:Number = NaN;
         var roundMc:MovieClip = null;
         var tween:IManagedTween = null;
         this.mRoundSoundCounter = 0;
         this.mPlayedRoundOpenerSounds = false;
         var tweens:Array = [];
         for(var i:int = 0; i < this.mRoundMCs.length - 1; i++)
         {
            delay = Math.max(0.3,0.05 * (this.mRoundMCs.length - 1 - i));
            roundMc = this.mRoundMCs[i];
            tween = this.mTweenManager.createTween(roundMc,{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,Quadratic.easeIn,delay);
            tweens.push(tween);
            roundMc.visible = true;
            roundMc.rotatingShine.visible = false;
            roundMc.scaleY = 0;
            roundMc.scaleX = 0;
         }
         var buttonOpenTween:IManagedTween = this.mTweenManager.createSequenceTweens(tweens);
         buttonOpenTween.play();
         buttonOpenTween.onComplete = function fn():void
         {
            setNextState(STATE_SHOW_LAST_ROUND_BUTTON,500);
         };
      }
      
      private function showLastRoundCompleted() : void
      {
         var lastRoundMC:MovieClip = this.mRoundMCs[this.mRounds - 1];
         var lastRoundCompTween:IManagedTween = this.mTweenManager.createTween(lastRoundMC,{
            "scaleX":this.lastRoundOrigScaleX,
            "scaleY":this.lastRoundOrigScaleY
         },{
            "scaleX":lastRoundMC.scaleX,
            "scaleY":lastRoundMC.scaleY
         },0.3,Quadratic.easeIn);
         lastRoundCompTween.play();
         lastRoundCompTween.onComplete = function fn():void
         {
            playPlayerJumping = true;
            SoundEngine.playSound("Congratulation_ambient");
         };
      }
      
      private function showChest() : void
      {
         var chestTween:IManagedTween = this.mTweenManager.createTween(this.mRewardChestMC,{
            "scaleX":this.mRewardChestMC.scaleX,
            "scaleY":this.mRewardChestMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Bounce.easeOut);
         this.mRewardChestMC.visible = true;
         this.mRewardChestMC.scaleY = 0;
         this.mRewardChestMC.scaleX = 0;
         chestTween.onComplete = function fn():void
         {
            setNextState(STATE_SHOW_LAST_ROUND_COMPLETED,500);
         };
         chestTween.play();
      }
      
      private function showLastRound() : void
      {
         var lRoundMC:MovieClip = this.mRoundMCs[this.mRounds - 1];
         this.lastRoundOrigScaleX = lRoundMC.scaleX;
         this.lastRoundOrigScaleY = lRoundMC.scaleY;
         var tween1:IManagedTween = this.mTweenManager.createTween(lRoundMC,{
            "scaleX":lRoundMC.scaleX * LAST_ROUND_MC_MAX_SCALE,
            "scaleY":lRoundMC.scaleY * LAST_ROUND_MC_MAX_SCALE
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,Quadratic.easeIn);
         var tween2:IManagedTween = this.mTweenManager.createTween(this.mPlayerAvatar,{"alpha":this.mPlayerAvatar.alpha},{"alpha":0},0.3,Quadratic.easeIn);
         lRoundMC.visible = true;
         var shineMC:MovieClip = MovieClip(lRoundMC.getChildByName("rotatingShine"));
         var shineTween:IManagedTween = this.mTweenManager.createTween(shineMC,{"rotation":0},{"rotation":-360},5,TweenManager.EASING_LINEAR);
         shineTween.stopOnComplete = false;
         shineTween.play();
         lRoundMC.scaleY = 0;
         lRoundMC.scaleX = 0;
         this.mPlayerAvatar.alpha = 0;
         this.mPlayerAvatar.visible = true;
         var tween:IManagedTween = this.mTweenManager.createParallelTween(tween1,tween2);
         tween.onComplete = function fn():void
         {
            SoundEngine.playSoundFromVariation("element_appear_3",SoundEngine.UI_CHANNEL);
            SoundEngine.playSound("Checkmark",SoundEngine.UI_CHANNEL);
            setNextState(STATE_SHOW_WEEKLY_TOURNAMENT,500);
         };
         tween.play();
      }
      
      private function showWeeklyTournament() : void
      {
         this.mWeeklyTournamentMC.visible = true;
         var tween2:IManagedTween = this.mTweenManager.createTween(this.mWeeklyTournamentMC,{
            "scaleX":this.mWeeklyTournamentMC.scaleX,
            "scaleY":this.mWeeklyTournamentMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.3,Quadratic.easeIn);
         this.mWeeklyTournamentMC.scaleY = 0;
         this.mWeeklyTournamentMC.scaleX = 0;
         tween2.onComplete = function fn():void
         {
            SoundEngine.playSound("Weekly_tournament_element",SoundEngine.UI_CHANNEL);
            setNextState(STATE_SHOW_CHEST,1000);
         };
         tween2.play();
      }
      
      private function showLeagues() : void
      {
         var leagueMC:DisplayObjectContainer = null;
         var duration:Number = NaN;
         var delay:Number = NaN;
         var shineMC:MovieClip = null;
         var shineTween:IManagedTween = null;
         var icon:MovieClip = null;
         var startScaleX:Number = NaN;
         var startScaleY:Number = NaN;
         var finalScaleX:Number = NaN;
         var finalScaleY:Number = NaN;
         var iconTween1:IManagedTween = null;
         var iconTween2:IManagedTween = null;
         var pulsateTween:IManagedTween = null;
         this.mPlayedLeagueSounds = false;
         this.mLeagueSoundCounter = 0;
         var tweens:Array = [];
         for(var i:int = 0; i < this.mLeagueMCs.length; i++)
         {
            leagueMC = this.mLeagueMCs[i];
            if(i == 0)
            {
               shineMC = MovieClip(leagueMC.getChildByName("rotatingShine"));
               shineTween = this.mTweenManager.createTween(shineMC,{"rotation":0},{"rotation":-360},5,TweenManager.EASING_LINEAR);
               shineTween.stopOnComplete = false;
               shineTween.play();
               icon = MovieClip(leagueMC.getChildByName("icon"));
               startScaleX = icon.scaleX;
               startScaleY = icon.scaleY;
               finalScaleX = icon.scaleX * 1.2;
               finalScaleY = icon.scaleY * 1.2;
               iconTween1 = this.mTweenManager.createTween(icon,{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },1.5,Quadratic.easeOut);
               iconTween2 = this.mTweenManager.createTween(icon,{
                  "scaleX":startScaleX,
                  "scaleY":startScaleY
               },{
                  "scaleX":finalScaleX,
                  "scaleY":finalScaleY
               },1.5,Quadratic.easeOut,0.5);
               pulsateTween = this.mTweenManager.createSequenceTween(iconTween1,iconTween2);
               pulsateTween.stopOnComplete = false;
               pulsateTween.play();
            }
            duration = Math.max(0.2,0.07 * (this.mLeagueMCs.length - i));
            delay = 0;
            if(i > this.mLeagueMCs.length - 3)
            {
               delay = 0.3;
            }
            tweens.push(this.mTweenManager.createTween(leagueMC,{
               "scaleX":leagueMC.scaleX,
               "scaleY":leagueMC.scaleY
            },{
               "scaleX":leagueMC.scaleX * 3,
               "scaleY":leagueMC.scaleY * 3
            },duration,Quadratic.easeIn,delay));
            leagueMC.scaleY = 0;
            leagueMC.scaleX = 0;
         }
         this.mLeaguesMC.visible = true;
         var leagueOpeningTween:IManagedTween = this.mTweenManager.createSequenceTweens(tweens);
         leagueOpeningTween.play();
         leagueOpeningTween.onComplete = function fn():void
         {
            setNextState(STATE_SHOW_STARS,300);
         };
      }
      
      private function tweenSlidingWeeklyTournament() : void
      {
         var roundMc:MovieClip = null;
         var tween:IManagedTween = null;
         var tweens:Array = [];
         for(var i:int = 0; i < this.mRoundMCs.length; i++)
         {
            roundMc = this.mRoundMCs[i];
            tween = this.mTweenManager.createTween(roundMc,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":roundMc.scaleX,
               "scaleY":roundMc.scaleY
            },0.3,Quadratic.easeOut,0.75);
            tweens.push(tween);
         }
         var roundsCloseTween:IManagedTween = this.mTweenManager.createParallelTweens(tweens);
         roundsCloseTween.play();
         roundsCloseTween.onComplete = function fn():void
         {
            var yellowBarEnlargeTween:IManagedTween = mTweenManager.createTween(mYellowBar,{"scaleX":mYellowBarOriginalScaleX},{"scaleX":mYellowBar.scaleX},0.5,Linear.easeIn);
            var slideTween:IManagedTween = mTweenManager.createTween(mWeeklyTournamentMC,{"x":mLeaguesMC.x - (mWeeklyTournamentMC.width >> 1) - 20},{"x":mWeeklyTournamentMC.x},0.6,Back.easeInOut);
            var playerAvatarFinalScaleX:Number = mPlayerFinalAvatarMC.scaleX * 1.2;
            var playerAvatarFinalScaleY:Number = mPlayerFinalAvatarMC.scaleY * 1.2;
            var playerAvatartween:IManagedTween = mTweenManager.createTween(mPlayerFinalAvatarMC,{
               "x":-(mPlayerFinalAvatarMC.width + (playerAvatarFinalScaleX - mPlayerFinalAvatarMC.scaleX) * mPlayerFinalAvatarMC.width >> 1),
               "y":mPlayerFinalAvatarMC.y - (playerAvatarFinalScaleY - mPlayerFinalAvatarMC.scaleY) * mPlayerFinalAvatarMC.height,
               "scaleX":playerAvatarFinalScaleX,
               "scaleY":playerAvatarFinalScaleY
            },{
               "x":mPlayerFinalAvatarMC.x,
               "y":mPlayerFinalAvatarMC.y,
               "scaleX":mPlayerFinalAvatarMC.scaleX,
               "scaleY":mPlayerFinalAvatarMC.scaleY
            },0.6,Linear.easeIn);
            var friendsSet1Tween:IManagedTween = mTweenManager.createTween(mFriendAvatarsGrp1MC,{"x":-(mWeeklyTournamentMC.width >> 1)},{"x":mFriendAvatarsGrp1MC.x},0.6,Linear.easeIn);
            var friendsSet2Tween:IManagedTween = mTweenManager.createTween(mFriendAvatarsGrp2MC,{"x":(mWeeklyTournamentMC.width >> 1) - mFriendAvatarsGrp2MC.width + 10},{"x":mFriendAvatarsGrp2MC.x},0.6,Linear.easeIn);
            var weeklyTournamentTween:IManagedTween = mTweenManager.createParallelTween(yellowBarEnlargeTween,slideTween,playerAvatartween,friendsSet1Tween,friendsSet2Tween);
            weeklyTournamentTween.play();
            SoundEngine.playSound("boomerang_swish");
            var endSound:Function = function():void
            {
               SoundEngine.playSound("ui_ingame_scorebox_gain_position",SoundEngine.UI_CHANNEL);
            };
            setTimeout(endSound,0.6);
            weeklyTournamentTween.onComplete = function fn():void
            {
               setNextState(STATE_INTRODUCE_LEAGUES);
            };
         };
      }
      
      private function setNextState(state:uint, delay:int = 0) : void
      {
         this.mNextState = state;
         this.mNextStateDelay = delay;
         this.mNextStateTimer = 0;
      }
      
      private function onClaimClick(event:MouseEvent) : void
      {
         SoundEngine.playSound("chest_open_special",SoundEngine.UI_CHANNEL);
         mContainer.mClip.removeEventListener(Event.ENTER_FRAME,this.cbOnEnterFrame);
         mContainer.mClip.btnClaim.removeEventListener(MouseEvent.CLICK,this.onClaimClick);
         close(true,false);
         AngryBirdsBase.singleton.popupManager.openPopup(new QualifierRewardPopUp(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
      }
      
      private function grabPoints() : void
      {
         var t1:Number = NaN;
         var t1s:Number = NaN;
         var ts:Number = NaN;
         var tt12:Number = NaN;
         var cx:Number = NaN;
         var cy:Number = NaN;
         this._curve.length = 0;
         var t:Number = 0;
         var startX:Number = this.mPlayerAvatar.x;
         var startY:Number = this.mPlayerAvatar.y;
         var endX:Number = this.mPlayerFinalAvatarMC.localToGlobal(new Point(mContainer.mClip.x,mContainer.mClip.y)).x;
         var endY:Number = this.mPlayerFinalAvatarMC.localToGlobal(new Point(mContainer.mClip.x,mContainer.mClip.y)).y;
         var controlX:Number = this.mPlayerAvatar.x + 30;
         var controlY:Number = this.mPlayerAvatar.y - 100;
         if(AngryBirdsBase.singleton.isFullScreenMode())
         {
            controlX += 30;
            controlY -= 150;
         }
         while(t <= 1)
         {
            t1 = 1 - t;
            t1s = t1 * t1;
            ts = t * t;
            tt12 = 2 * t * t1;
            cx = t1s * startX + tt12 * controlX + ts * endX;
            cy = t1s * startY + tt12 * controlY + ts * endY;
            this._curve.push(new Point(cx,cy));
            t += 1 / this._curvePoints;
         }
         var last:int = this._curve.length - 1;
         var prev:int = this._curve.length - 2;
         this.curveAngle = Math.atan2(this._curve[last].y - this._curve[prev].y,this._curve[last].x - this._curve[prev].x);
      }
      
      private function showPlayerProfile() : void
      {
         var userProgress:FacebookUserProgress = AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
         var profilePic1:ProfilePicture = new ProfilePicture(userProgress.userID,"",true,FacebookProfilePicture.NORMAL,"",true);
         var profilePic2:ProfilePicture = new ProfilePicture(userProgress.userID,"",true,FacebookProfilePicture.NORMAL,"",true);
         this.mPlayerAvatar.addChild(profilePic1);
         this.mPlayerFinalAvatarMC.addChild(profilePic2);
         profilePic1.scaleX = profilePic1.scaleY = 0.9;
         profilePic2.scaleX = profilePic2.scaleY = 0.9;
         profilePic1.x += 5;
         profilePic1.y += 5;
         profilePic2.x += 5;
         profilePic2.y += 5;
      }
      
      private function showFriends() : void
      {
         var max:int = 0;
         var leftFrameCounter:uint = 0;
         var rightFrameCounter:uint = 0;
         var i:int = 0;
         var scoreVO:UserTournamentScoreVO = null;
         var grpDsp:DisplayObjectContainer = null;
         var frameDsp:DisplayObjectContainer = null;
         var profile:ProfilePicture = null;
         if(sFriendsScoreData != null)
         {
            max = Math.min(MAX_FRIENDS_TO_SHOW,sFriendsScoreData.length);
            leftFrameCounter = 0;
            rightFrameCounter = 0;
            for(i = 0; i < max; i++)
            {
               scoreVO = sFriendsScoreData[i];
               grpDsp = i % 2 == 0 ? this.mFriendAvatarsGrp1MC : this.mFriendAvatarsGrp2MC;
               if(i % 2 == 0)
               {
                  leftFrameCounter++;
                  frameDsp = DisplayObjectContainer(grpDsp.getChildByName("FriendAvatar" + leftFrameCounter));
               }
               else
               {
                  rightFrameCounter++;
                  frameDsp = DisplayObjectContainer(grpDsp.getChildByName("FriendAvatar" + rightFrameCounter));
               }
               profile = new ProfilePicture(scoreVO.userId,"",false,null,scoreVO.profileImageURL,true);
               profile.scaleY = 1.1;
               profile.scaleX = 1.1;
               profile.x += 3;
               profile.y += 3;
               frameDsp.addChild(profile);
               frameDsp.visible = true;
            }
         }
      }
   }
}
