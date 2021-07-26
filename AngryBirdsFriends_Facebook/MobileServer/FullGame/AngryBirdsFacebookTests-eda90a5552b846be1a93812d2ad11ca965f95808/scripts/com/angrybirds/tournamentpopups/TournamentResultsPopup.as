package com.angrybirds.tournamentpopups
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.TournamentResultsVO;
   import com.angrybirds.data.UserTournamentScoreVO;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.friendsbar.ui.profile.BirdBotProfilePicture;
   import com.angrybirds.friendsdatacache.CachedFriendDataVO;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.sfx.Star;
   import com.angrybirds.sfx.StarSplash;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournament.TournamentAvatar;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.AddCommasToAmount;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.RankSuffixStringUtil;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements IWalletContainer
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var sResults:TournamentResultsVO;
      
      private static var sClaimed:Boolean;
       
      
      protected var mShowCelebrateTimer:Timer;
      
      private var mWallet:Wallet;
      
      private var mCoinsAddedToInventory:Boolean;
      
      private var mTotalCoinsWhenOpened:int;
      
      protected var mStarSplash:StarSplash;
      
      protected var mStarSplashPool:Vector.<StarSplash>;
      
      private var mLastFrameTime:Number;
      
      public function TournamentResultsPopup(layerIndex:int, priority:int, coinsAddedToInventory:Boolean)
      {
         this.mCoinsAddedToInventory = coinsAddedToInventory;
         sClaimed = false;
         super(layerIndex,priority,this.getViewXML(),ID);
         TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED,this.onTournamentRewardClaimed);
      }
      
      public static function initTournamentResultsPopup() : Boolean
      {
         var resultObject:Object = null;
         var rankIndex:int = 0;
         var res:Object = null;
         var completedTournamentId:String = null;
         var completedTournamentLevels:int = 0;
         var completedTournamentStars:int = 0;
         if(!TournamentModel.instance.lastResult)
         {
            return false;
         }
         sResults = new TournamentResultsVO();
         var i:int = 1;
         for each(resultObject in TournamentModel.instance.lastResult.players)
         {
            if(resultObject.uid == userProgress.userID)
            {
               sResults.user = UserTournamentScoreVO.fromServerObject(resultObject);
               sResults.user.rank = i;
               break;
            }
            i++;
         }
         sResults.first = getPlayerByRank(1);
         sResults.second = getPlayerByRank(2);
         sResults.third = getPlayerByRank(3);
         sResults.rewardItemId = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         rankIndex = sResults.user.rank - 1;
         if(sResults.user.rank >= 4)
         {
            rankIndex = 3;
         }
         sResults.rewardQuantity = TournamentModel.instance.lastResult.prizeCounts[rankIndex];
         FacebookGoogleAnalyticsTracker.trackTournamentFriendCount(TournamentModel.instance.lastResult.players.length);
         FacebookGoogleAnalyticsTracker.trackVirtualCurrencyGained(FacebookGoogleAnalyticsTracker.POWERUP_SOURCE_TOURNAMENT_PRIZE,VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,sResults.rewardQuantity);
         var redBeaten:Boolean = false;
         var yellowBeaten:Boolean = false;
         var birdBot1Score:Number = 0;
         var birdBot2Score:Number = 0;
         for each(res in TournamentModel.instance.lastResult.players)
         {
            if(res.uid == BirdBotProfilePicture.BIRD_BOT_1)
            {
               birdBot1Score = UserTournamentScoreVO.fromServerObject(res).tournamentScore;
            }
            if(res.uid == BirdBotProfilePicture.BIRD_BOT_2)
            {
               birdBot2Score = UserTournamentScoreVO.fromServerObject(res).tournamentScore;
            }
         }
         if(TournamentModel.instance.lastResult.a)
         {
            completedTournamentId = TournamentModel.instance.lastResult.a.tid;
            completedTournamentLevels = TournamentModel.instance.lastResult.a.lc;
            completedTournamentStars = TournamentModel.instance.lastResult.a.s;
            if(sResults.user.tournamentScore > birdBot1Score)
            {
               redBeaten = true;
            }
            if(sResults.user.tournamentScore > birdBot2Score)
            {
               yellowBeaten = true;
            }
            FacebookAnalyticsCollector.getInstance().trackTournamentStatisticsEvent(completedTournamentId,completedTournamentLevels,redBeaten,yellowBeaten,TournamentModel.instance.lastResult.players.length,sResults.user.rank,sResults.user.tournamentScore,completedTournamentStars);
         }
         return true;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      private static function getPlayerByRank(rank:int) : UserTournamentScoreVO
      {
         var i:int = 0;
         var playerObject:Object = null;
         var cachedFriend:CachedFriendDataVO = null;
         if(TournamentModel.instance.lastResult)
         {
            if(TournamentModel.instance.lastResult.players)
            {
               i = 1;
               for each(playerObject in TournamentModel.instance.lastResult.players)
               {
                  if(playerObject != null)
                  {
                     if(i == rank)
                     {
                        cachedFriend = FriendsDataCache.getFriendData(playerObject.uid);
                        if(cachedFriend)
                        {
                           playerObject.n = cachedFriend.name;
                        }
                        return UserTournamentScoreVO.fromServerObject(playerObject);
                     }
                  }
                  i++;
               }
            }
         }
         return null;
      }
      
      public static function get hasResults() : Boolean
      {
         return sResults != null;
      }
      
      protected function onTournamentRewardClaimed(event:TournamentEvent) : void
      {
         this.showPrize();
         sClaimed = true;
         TournamentModel.instance.clearUnconcludedData();
      }
      
      protected function update(event:Event) : void
      {
         var splash:StarSplash = null;
         var deltaTime:Number = getTimer() - this.mLastFrameTime;
         this.mLastFrameTime = getTimer();
         for each(splash in this.mStarSplashPool)
         {
            splash.update(deltaTime);
         }
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var yourRank:int = 0;
         var rankForStory:String = null;
         switch(eventName)
         {
            case "CLAIM_PRIZE":
               mContainer.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               mContainer.getItemByName("ClaimPrizeButton").setEnabled(false);
               TournamentModel.instance.claimReward();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               yourRank = sResults.user.rank;
               rankForStory = yourRank + RankSuffixStringUtil.getRankSuffix(yourRank);
               ExternalInterfaceHandler.performCall("shareTournamentRank",rankForStory,AddCommasToAmount.addCommasToAmount(sResults.user.tournamentScore));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function showPrize() : void
      {
         if(!sResults)
         {
            close();
            return;
         }
         if(!mContainer)
         {
            return;
         }
         mContainer.getItemByName("ClaimPrizeButton").setVisibility(false);
         mContainer.getItemByName("GiftCarouselContainer").setVisibility(false);
         mContainer.mClip.GiftCarouselContainer.mouseEnabled = mContainer.mClip.GiftCarouselContainer.mouseChildren = false;
         mContainer.mClip.getChildByName("GiftBox").visible = false;
         this.mShowCelebrateTimer = new Timer(400,1);
         this.mShowCelebrateTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onCelebrateComplete);
         this.mShowCelebrateTimer.start();
      }
      
      private function onCelebrateComplete(e:TimerEvent) : void
      {
         this.mShowCelebrateTimer.reset();
         this.mShowCelebrateTimer.removeEventListener(TimerEvent.TIMER,this.onCelebrateComplete);
         mContainer.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.mWallet.setCoinsAmountText(this.mTotalCoinsWhenOpened + sResults.rewardQuantity);
         this.mWallet.animateGotCoins(sResults.rewardQuantity);
         mContainer.mClip.GiftCarouselContainer.txtRewardAmount.text = sResults.rewardQuantity + " x";
         var splashPoint:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         mContainer.mClip.GiftCarouselContainer.x = splashPoint.x - 20;
         mContainer.mClip.GiftCarouselContainer.y = splashPoint.y;
         var maxScale:Number = 0.6;
         var tweenScaleUp:ISimpleTween = TweenManager.instance.createTween(mContainer.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,TweenManager.EASING_SINE_OUT);
         var tweenScalePause:ISimpleTween = TweenManager.instance.createTween(mContainer.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "alpha":1,
            "scaleX":maxScale,
            "scaleY":maxScale
         },2.5,TweenManager.EASING_LINEAR);
         var tweenScaleDown:ISimpleTween = TweenManager.instance.createTween(mContainer.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "alpha":1,
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.4,TweenManager.EASING_SINE_OUT);
         var tweenShowPrize:ISimpleTween = TweenManager.instance.createSequenceTween(tweenScaleUp,tweenScalePause,tweenScaleDown);
         tweenShowPrize.play();
         this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,splashPoint.x,splashPoint.y,StarSplash.STARSPLASH_BADGE,StarSplash.STAR_MAX,Star.TYPE_ALL);
         mContainer.mClip.addChild(this.mStarSplash);
         this.mStarSplashPool.push(this.mStarSplash);
         ItemsInventory.instance.loadInventory();
         this.setClaimed();
      }
      
      private function setClaimed() : void
      {
         mContainer.getItemByName("ClaimPrizeButton").setVisibility(false);
         mContainer.mClip.getChildByName("GiftBox").visible = false;
         mContainer.getItemByName("Button_Close").setVisibility(true);
         if(sResults.user.rank <= 3)
         {
            mContainer.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.mCoinsAddedToInventory)
         {
            this.mWallet.setCoinsAmountText(this.mTotalCoinsWhenOpened + sResults.rewardQuantity);
         }
      }
      
      override protected function show(useFadeEffect:Boolean = true) : void
      {
         var prizeCounts:Array = null;
         super.show(useFadeEffect);
         mContainer.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.mStarSplashPool = new Vector.<StarSplash>();
         this.mTotalCoinsWhenOpened = DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.totalCoins;
         if(this.mCoinsAddedToInventory)
         {
            this.mTotalCoinsWhenOpened -= sResults.rewardQuantity;
         }
         this.addWallet(new Wallet(this,false,false));
         this.mWallet.setCoinsAmountText(this.mTotalCoinsWhenOpened);
         SoundEngine.playSound("BirdsApplause");
         if(hasResults)
         {
            this.applyAvatars();
            prizeCounts = TournamentModel.instance.prizeCountLastResults;
            mContainer.mClip.PodiumContainer.firstPlaceText.text.text = prizeCounts[0];
            mContainer.mClip.PodiumContainer.secondPlaceText.text.text = prizeCounts[1];
            mContainer.mClip.PodiumContainer.thirdPlaceText.text.text = prizeCounts[2];
         }
         if(sClaimed)
         {
            this.setClaimed();
         }
      }
      
      public function applyAvatars() : void
      {
         var rankSuffix:String = null;
         var bronzeHolder:MovieClip = null;
         var bronzeAvatar:TournamentAvatar = null;
         var silverHolder:MovieClip = null;
         var silverAvatar:TournamentAvatar = null;
         var goldHolder:MovieClip = null;
         var goldAvatar:TournamentAvatar = null;
         var ownHolder:MovieClip = null;
         var ownAvatar:TournamentAvatar = null;
         if(sResults.third)
         {
            bronzeHolder = mContainer.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            bronzeAvatar = new TournamentAvatar(bronzeHolder,sResults.third);
            FriendsUtil.setTextInCorrectFont(mContainer.mClip.PodiumContainer.TextField_Podium3.text,sResults.third.userName);
         }
         if(sResults.second)
         {
            silverHolder = mContainer.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            silverAvatar = new TournamentAvatar(silverHolder,sResults.second);
            FriendsUtil.setTextInCorrectFont(mContainer.mClip.PodiumContainer.TextField_Podium2.text,sResults.second.userName);
         }
         if(sResults.first)
         {
            goldHolder = mContainer.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            goldAvatar = new TournamentAvatar(goldHolder,sResults.first);
            FriendsUtil.setTextInCorrectFont(mContainer.mClip.PodiumContainer.TextField_Podium1.text,sResults.first.userName);
         }
         var yourRank:int = sResults.user.rank;
         rankSuffix = RankSuffixStringUtil.getRankSuffix(yourRank);
         mContainer.mClip.YourRankTextfield.text = "Your Rank: " + yourRank + rankSuffix;
         if(sResults.user.rank > 3)
         {
            ownHolder = mContainer.mClip.getChildByName("OwnAvatarHolder") as MovieClip;
            ownHolder.visible = true;
            ownAvatar = new TournamentAvatar(ownHolder,sResults.user);
         }
         else
         {
            mContainer.mClip.getChildByName("OwnAvatarHolder").visible = false;
            mContainer.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function get walletContainer() : Sprite
      {
         return mContainer.mClip.walletContainer;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.dispose();
         wallet = null;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      override public function dispose() : void
      {
         this.cleanSplashes();
         mContainer.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         AngryBirdsFacebook.sSingleton.setNextState(StateTournamentLevelSelection.STATE_NAME);
         ItemsInventory.instance.loadInventory();
         this.removeWallet(this.mWallet);
         if(this.mShowCelebrateTimer)
         {
            this.mShowCelebrateTimer.removeEventListener(TimerEvent.TIMER,this.onCelebrateComplete);
            this.mShowCelebrateTimer.reset();
         }
         this.mShowCelebrateTimer = null;
         super.dispose();
      }
      
      private function cleanSplashes() : void
      {
         var splash:StarSplash = null;
         for each(splash in this.mStarSplashPool)
         {
            if(mContainer && mContainer.mClip && mContainer.mClip.contains(splash))
            {
               mContainer.mClip.removeChild(splash);
            }
            splash.clean();
         }
         this.mStarSplashPool = new Vector.<StarSplash>();
      }
   }
}
