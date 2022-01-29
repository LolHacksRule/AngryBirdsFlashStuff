package com.angrybirds.league.ui
{
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.LeagueType;
   import com.angrybirds.league.events.ProgressAnimationEvent;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Views.UIView;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class LeagueProgressBar extends EventDispatcher
   {
      
      private static const LEAGUE_TEXT_YOU_ARE_IN:String = "You are in";
      
      private static const LEAGUE_TEXT_YOU_WERE_IN:String = "You were in";
      
      private static const LEAGUE_TEXT_PROMOTED:String = "Promoted to";
      
      private static const LEAGUE_TEXT_DEMOTED:String = "Demoted to ";
      
      private static const LOOP_CHANNEL_NAME:String = "RatingCountLoopCountChannel";
       
      
      public var mCurrentLeagueRankingIcon:MovieClip;
      
      private var nextLeagueRankingIcon:MovieClip;
      
      private var mProgressTween:ISimpleTween = null;
      
      private var mProgressTweenPromote:ISimpleTween = null;
      
      private var mProgressTweenDemote:ISimpleTween = null;
      
      private var leagueProgressBar:MovieClip = null;
      
      private var leagueProgressFill:MovieClip = null;
      
      private var mUIView:UIView;
      
      private var mcPromotionAnimation:MovieClip;
      
      private var mcPromotionAnimationShine:MovieClip;
      
      private var mcPromotionAnimationNextLeague:MovieClip;
      
      private var mcPromotionAnimationNextLeagueShine:MovieClip;
      
      private var mResultType:int;
      
      private var mPrevResult:Object;
      
      private var mStarRating:Number = -1;
      
      private var mUserRating:Number = 0;
      
      private var mUserRatingGain:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var promotionAnimationClass:Class;
      
      private var demotionAnimationClass:Class;
      
      private var starDemotionAnimationClass:Class;
      
      private var starPromotionAnimationClass:Class;
      
      private var promotionAnimationShineClass:Class;
      
      private var starPromotionAnimationShineClass:Class;
      
      private var mAnimating:Boolean;
      
      private const POSITION_KEEP:Number = 0;
      
      private const POSITION_PROMOTED:Number = 1;
      
      private const POSITION_DEMOTED:Number = -1;
      
      private var playerStatus:Number = 0;
      
      private var FILL_BAR_ANIMATION_SPEED:Number = 0.5;
      
      private var mUserRatingCountTween:ISimpleTween;
      
      private var SCORE_VALUE:Number = 20;
      
      private var mProgressCompleted:Array;
      
      public function LeagueProgressBar(mUIView:UIView)
      {
         this.mProgressCompleted = [false,false];
         super();
         this.mUIView = mUIView;
         this.promotionAnimationClass = AssetCache.getAssetFromCache("PromotionAnimation");
         this.demotionAnimationClass = AssetCache.getAssetFromCache("DemotionAnimation");
         this.starDemotionAnimationClass = AssetCache.getAssetFromCache("DemotionAnimationStar");
         this.starPromotionAnimationClass = AssetCache.getAssetFromCache("PromotionAnimationStar");
         this.promotionAnimationShineClass = AssetCache.getAssetFromCache("PromotionAnimationShine");
         this.starPromotionAnimationShineClass = AssetCache.getAssetFromCache("PromotionAnimationStarShine");
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,6,2);
      }
      
      private function onPromotionAnimation(e:Event) : void
      {
         if(this.mcPromotionAnimation.currentFrameLabel == "action_sound_crack")
         {
            SoundEngine.playSound(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).demotionSound,LOOP_CHANNEL_NAME);
         }
         if(this.mcPromotionAnimation.currentFrameLabel == "action_sound_puff")
         {
            SoundEngine.playSound(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).puffSound,LOOP_CHANNEL_NAME);
         }
         if(this.mcPromotionAnimation.currentFrameLabel == "action_sound_glow")
         {
            SoundEngine.playSound(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).glowSound,LOOP_CHANNEL_NAME);
         }
         if(this.mcPromotionAnimation.currentFrameLabel == "action_sound_promo_change")
         {
            SoundEngine.playSound(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).promotionSound,LOOP_CHANNEL_NAME);
         }
         if(this.mcPromotionAnimation.currentFrameLabel == "action_sound_promo_change_star")
         {
            SoundEngine.playSound("league_promotion_star",LOOP_CHANNEL_NAME);
         }
         if(this.mcPromotionAnimation.currentFrameLabel == "action_change")
         {
            this.setLeaguePromotionInfo();
         }
         else if(this.mcPromotionAnimation.currentFrame == this.mcPromotionAnimation.totalFrames)
         {
            this.mProgressCompleted[1] = true;
            this.mcPromotionAnimation.stop();
            this.mcPromotionAnimation.visible = false;
            this.mcPromotionAnimation.removeEventListener(Event.ENTER_FRAME,this.onPromotionAnimation);
            if(this.mCurrentLeagueRankingIcon.contains(this.mcPromotionAnimation))
            {
               this.mCurrentLeagueRankingIcon.removeChild(this.mcPromotionAnimation);
            }
            if(this.mcPromotionAnimationShine)
            {
               this.mcPromotionAnimationShine.stop();
               this.mcPromotionAnimationShine.visible = false;
               if(this.mCurrentLeagueRankingIcon.contains(this.mcPromotionAnimationShine))
               {
                  this.mCurrentLeagueRankingIcon.removeChild(this.mcPromotionAnimationShine);
               }
            }
            this.mAnimating = false;
         }
         else if(this.mcPromotionAnimation.currentFrame == 1)
         {
            this.mAnimating = true;
            if(this.mcPromotionAnimation.txtStarRating)
            {
               if(this.starRating >= 0 && this.mUserRatingGain < 0)
               {
                  this.mcPromotionAnimation.txtStarRating.text = (this.starRating + 1).toString();
               }
            }
            if(this.mcPromotionAnimation is this.demotionAnimationClass)
            {
               if(this.mcPromotionAnimationShine)
               {
                  this.mcPromotionAnimationShine.visible = false;
               }
               this.mCurrentLeagueRankingIcon.setChildIndex(this.mcPromotionAnimation,this.mCurrentLeagueRankingIcon.numChildren - 1);
            }
         }
      }
      
      private function setLeaguePromotionInfo() : void
      {
         if(this.mCurrentLeagueRankingIcon)
         {
            if(this.starRating >= 0 && this.mUserRatingGain > 0 || this.starRating >= 1 && this.mUserRatingGain < 0)
            {
               this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
               this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = true;
               this.mCurrentLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = this.starRating.toString();
            }
            else if(this.mPrevResult && this.mPrevResult.l)
            {
               this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).id);
               if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
               {
                  this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.mUIView.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.mUserRatingGain > 0 ? LEAGUE_TEXT_PROMOTED : LEAGUE_TEXT_DEMOTED;
         if(this.starRating > 0 || this.starRating == 0 && this.mUserRatingGain < 0 && LeagueType.getLeagueById(this.mPrevResult.l.li.tn).id == LeagueType.sDiamondLeague.id)
         {
            (this.mUIView.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = LEAGUE_TEXT_YOU_ARE_IN;
         }
         (this.mUIView.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = LeagueType.getLeagueById(this.mPrevResult.l.li.tn).name + "!";
      }
      
      private function getUserFromResult() : Object
      {
         var o:Object = null;
         for each(o in this.mPrevResult.l.p)
         {
            if(o.u == (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID)
            {
               return o;
            }
         }
         return null;
      }
      
      private function onPromotionAnimationNextLeague(e:Event) : void
      {
         var starAmount:Number = NaN;
         if(this.mcPromotionAnimationNextLeague.currentFrameLabel == "action_change")
         {
            if(this.nextLeagueRankingIcon)
            {
               if(this.mcPromotionAnimationNextLeagueShine)
               {
                  this.nextLeagueRankingIcon.setChildIndex(this.mcPromotionAnimationNextLeague,this.nextLeagueRankingIcon.numChildren - 1);
                  this.mcPromotionAnimationNextLeagueShine.stop();
                  this.mcPromotionAnimationNextLeagueShine.visible = false;
               }
               starAmount = this.playerStatus == this.POSITION_PROMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(this.starRating - 1) : (this.playerStatus == this.POSITION_DEMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(this.starRating + 1) : Number(this.starRating));
               if(this.mPrevResult.l.nli.ls && this.mPrevResult.l.nli.ls > 0)
               {
                  this.nextLeagueRankingIcon.gotoAndStop("STAR");
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = this.mPrevResult.l.nli.ls.toString();
               }
               else if(this.starRating >= 0 && this.mUserRatingGain > 0)
               {
                  this.nextLeagueRankingIcon.gotoAndStop("STAR");
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (this.starRating + 1).toString();
               }
               else if(this.starRating > 1 && this.mUserRatingGain < 0)
               {
                  this.nextLeagueRankingIcon.gotoAndStop("STAR");
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
               }
               else if(this.starRating == 0 && this.mUserRatingGain != 0)
               {
                  this.nextLeagueRankingIcon.gotoAndStop("STAR");
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = "1";
               }
               else if(this.starRating == -1 && LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id == LeagueType.sDiamondLeague.id)
               {
                  this.nextLeagueRankingIcon.gotoAndStop("DIAMOND");
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = false;
               }
               else
               {
                  this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.nli.tn).id);
               }
            }
         }
         else if(this.mcPromotionAnimationNextLeague.currentFrame == this.mcPromotionAnimationNextLeague.totalFrames)
         {
            this.mcPromotionAnimationNextLeague.stop();
            this.mcPromotionAnimationNextLeague.visible = false;
            this.mcPromotionAnimationNextLeague.removeEventListener(Event.ENTER_FRAME,this.onPromotionAnimation);
            if(this.nextLeagueRankingIcon.contains(this.mcPromotionAnimationNextLeague))
            {
               this.nextLeagueRankingIcon.removeChild(this.mcPromotionAnimationNextLeague);
            }
            if(this.mcPromotionAnimationNextLeagueShine)
            {
               this.mcPromotionAnimationNextLeagueShine.stop();
               this.mcPromotionAnimationNextLeagueShine.visible = false;
               if(this.nextLeagueRankingIcon.contains(this.mcPromotionAnimationNextLeagueShine))
               {
                  this.nextLeagueRankingIcon.removeChild(this.mcPromotionAnimationNextLeagueShine);
               }
            }
            this.mAnimating = false;
         }
         else if(this.mcPromotionAnimationNextLeague.currentFrame == 1)
         {
            this.mAnimating = true;
            if(this.nextLeagueRankingIcon.StarPromotionIcon && this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating)
            {
               starAmount = this.playerStatus == this.POSITION_PROMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(this.starRating - 1) : (this.playerStatus == this.POSITION_DEMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(this.starRating + 1) : Number(this.starRating));
               if(this.starRating >= 0 && this.mUserRatingGain > 0)
               {
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = this.starRating.toString();
               }
               else if(this.starRating >= 0 && this.mUserRatingGain < 0)
               {
                  starAmount = this.playerStatus == this.POSITION_DEMOTED ? Number(starAmount + 1) : Number(starAmount);
                  this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                  this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
               }
            }
            if(this.mcPromotionAnimationNextLeague is this.demotionAnimationClass)
            {
               if(this.mcPromotionAnimationNextLeagueShine)
               {
                  this.mcPromotionAnimationNextLeagueShine.visible = false;
               }
               this.nextLeagueRankingIcon.setChildIndex(this.mcPromotionAnimationNextLeague,this.nextLeagueRankingIcon.numChildren - 1);
            }
         }
      }
      
      public function animate(prevResult:Object = null, resultType:int = 0, shouldAnimate:Boolean = false) : void
      {
         var previousMinRating:Number = NaN;
         var currentMinRating:Number = NaN;
         var nextMinRating:Number = NaN;
         var userFromResults:Object = null;
         var userRating:Number = NaN;
         var scaleDirection:Number = NaN;
         var upperLimit:Number = NaN;
         var lowerLimit:Number = NaN;
         var o:Object = null;
         this.mResultType = resultType;
         this.mPrevResult = prevResult;
         this.playerStatus = this.POSITION_KEEP;
         this.mProgressCompleted = [false,false];
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         this.resetLeagueIcons();
         this.leagueProgressBar = this.mUIView.getItemByName("LeagueProgress").mClip;
         this.leagueProgressFill = this.leagueProgressBar.mcProgress;
         this.mUIView.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.mUIView.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(prevResult && prevResult.l)
         {
            this.mUIView.getItemByName("LeaguesRatingProgress").setVisibility(true);
            previousMinRating = !!prevResult.l.pli ? Number(prevResult.l.pli.rt) : Number(0);
            currentMinRating = !!prevResult.l.li ? Number(prevResult.l.li.rt) : Number(previousMinRating);
            nextMinRating = !!prevResult.l.nli ? Number(prevResult.l.nli.rt) : Number(0);
            if(nextMinRating == 0 && LeagueModel.instance.currentLeague())
            {
               nextMinRating = LeagueType.getNextLeagueId(LeagueModel.instance.currentLeague().id).minRating;
            }
            else if(nextMinRating == 0 && prevResult.l.pli)
            {
               nextMinRating = LeagueType.getNextLeagueId(LeagueType.getNextLeagueId(prevResult.l.pli.tn).id).minRating;
            }
            userFromResults = this.getUserFromResult();
            userRating = userFromResults && userFromResults.lr ? Number(userFromResults.lr) : (!!LeagueModel.instance.getPlayerProfileForLeague() ? Number(LeagueModel.instance.getPlayerProfileForLeague().lr) : Number(0));
            this.leagueProgressFill.scaleX = FriendsUtil.Clamp((userRating - this.mUserRatingGain - currentMinRating) / (nextMinRating - currentMinRating),0,1);
            scaleDirection = 1;
            if(this.starRating == -1 && prevResult.l.li && prevResult.l.pli && LeagueType.getLeagueById(prevResult.l.li.tn).id == LeagueType.sDiamondLeague.id && LeagueType.getLeagueById(prevResult.l.pli.tn).id == LeagueType.sDiamondLeague.id)
            {
               this.starRating = 0;
            }
            upperLimit = nextMinRating;
            lowerLimit = currentMinRating;
            for each(o in prevResult.l.p)
            {
               if(o.u == (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID)
               {
                  if(o.lr)
                  {
                     userRating = o.lr;
                  }
                  if(o.p)
                  {
                     if(o.p == "u")
                     {
                        upperLimit = !!this.mPrevResult.lastResult ? Number(currentMinRating) : Number(upperLimit);
                        lowerLimit = !!this.mPrevResult.lastResult ? Number(previousMinRating) : Number(lowerLimit);
                        this.playerStatus = this.POSITION_PROMOTED;
                        scaleDirection = 1;
                     }
                     if(o.p == "d")
                     {
                        upperLimit = !!this.mPrevResult.lastResult ? Number(previousMinRating) : Number(upperLimit);
                        lowerLimit = !!this.mPrevResult.lastResult ? Number(currentMinRating) : Number(lowerLimit);
                        if(this.mPrevResult.lastResult)
                        {
                           if(this.starRating != 0 || this.starRating == 0 && prevResult.l.li && prevResult.l.li.tn == LeagueType.sDiamondLeague.id)
                           {
                              lowerLimit += 100;
                              upperLimit += 100;
                           }
                        }
                        this.leagueProgressFill.scaleX = FriendsUtil.Clamp((userRating + this.mUserRatingGain - upperLimit) / (upperLimit - lowerLimit),0,1);
                        scaleDirection = 0;
                        this.playerStatus = this.POSITION_DEMOTED;
                     }
                  }
               }
            }
            this.mUserRating = userRating;
            this.setLeagueIcons(prevResult,this.starRating);
            if(this.mResultType == StateTournamentResults.RESULTS_SCREEN)
            {
               this.setupAnimations(this.starRating);
            }
            this.tweenAnimations(scaleDirection,nextMinRating,upperLimit,lowerLimit,this.starRating,shouldAnimate);
            this.setProgressText(userRating,this.mUserRatingGain,upperLimit,lowerLimit,this.mResultType == StateTournamentResults.RESULTS_SCREEN);
         }
         else
         {
            this.showPlayerNotParticipateInLeague();
         }
      }
      
      private function showPlayerNotParticipateInLeague() : void
      {
         this.mCurrentLeagueRankingIcon.gotoAndStop("NOLEAGUE");
         this.mUIView.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.mUIView.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.mUIView.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.mUIView.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function tweenAnimations(scaleDirection:Number, currentMinRating:Number, upperLimit:Number, lowerLimit:Number, starRating:Number, shouldAnimate:Boolean = false) : void
      {
         var changeToNewLeague:Boolean = false;
         var starAmount:Number = NaN;
         var progressBarScaleX:Number = NaN;
         var scaleAmount:Number = NaN;
         var animationSpeed:Number = NaN;
         var userRatingFrom:Number = NaN;
         var userRatingTo:Number = NaN;
         if(this.mResultType == StateTournamentResults.RESULTS_SCREEN && this.mPrevResult.lastResult)
         {
            changeToNewLeague = this.mPrevResult.l.pli && this.mPrevResult.l.li && (this.mPrevResult.l.pli.tn != this.mPrevResult.l.li.tn || starRating >= 0);
            starAmount = this.playerStatus == this.POSITION_PROMOTED ? Number(starRating - 1) : (this.playerStatus == this.POSITION_DEMOTED && starRating != -1 ? Number(starRating + 1) : Number(starRating));
            if(changeToNewLeague && this.playerStatus != this.POSITION_KEEP)
            {
               (this.mUIView.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).name + "!";
               if(this.mUserRatingGain < 0)
               {
                  if(starRating == 0)
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (starRating + 1).toString();
                     this.nextLeagueRankingIcon.gotoAndStop("STAR");
                     this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (starRating + 1).toString();
                  }
                  else if(starRating >= 1)
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
                     this.nextLeagueRankingIcon.gotoAndStop("STAR");
                     this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (starAmount + 1).toString();
                  }
                  else if(starRating == -1 && LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id == LeagueType.sDiamondLeague.id)
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id);
                     this.nextLeagueRankingIcon.gotoAndStop("STAR");
                     this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = "1";
                  }
                  else
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id);
                     if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
                     {
                        this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
                     }
                     this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getNextLeagueId(this.mPrevResult.l.pli.tn).id);
                  }
                  if(!shouldAnimate)
                  {
                     this.mUserRatingCount = this.mUserRating + Math.abs(this.mUserRatingGain);
                  }
               }
               else
               {
                  starAmount = this.playerStatus == this.POSITION_PROMOTED ? Number(starRating - 1) : (this.playerStatus == this.POSITION_DEMOTED ? Number(starRating + 1) : Number(starRating));
                  if(starRating == 1)
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id);
                     if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
                     {
                        this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
                     }
                     this.nextLeagueRankingIcon.gotoAndStop("STAR");
                     this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starRating.toString();
                  }
                  else if(starRating > 1)
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.mCurrentLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
                     this.nextLeagueRankingIcon.gotoAndStop("STAR");
                     this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
                     this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (starAmount + 1).toString();
                  }
                  else
                  {
                     this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id);
                     this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.li.tn).id);
                  }
                  if(!shouldAnimate)
                  {
                     this.mUserRatingCount = this.mUserRating - Math.abs(this.mUserRatingGain);
                  }
               }
               progressBarScaleX = FriendsUtil.Clamp((this.mUserRating - this.mUserRatingGain - lowerLimit) / (upperLimit - lowerLimit),0,1);
               if(this.mUserRatingGain < 0)
               {
                  progressBarScaleX = FriendsUtil.Clamp((this.mUserRating + this.mUserRatingGain * -1 - lowerLimit) / (upperLimit - lowerLimit),0,1);
               }
               this.leagueProgressFill.scaleX = progressBarScaleX;
               this.setProgressBarLimits(upperLimit,lowerLimit);
               if(shouldAnimate)
               {
                  scaleAmount = Math.abs(progressBarScaleX - scaleDirection);
                  animationSpeed = this.getAnimationSpeed(Math.abs(this.mUserRatingGain) * scaleAmount);
                  if(this.playerStatus == this.POSITION_PROMOTED)
                  {
                     this.animateUserRatingCounter(true,lowerLimit,upperLimit,animationSpeed);
                  }
                  else
                  {
                     this.animateUserRatingCounter(true,upperLimit,lowerLimit,animationSpeed);
                  }
                  this.mProgressTween = TweenManager.instance.createTween(this.leagueProgressFill,{"scaleX":FriendsUtil.Clamp(scaleDirection,0,1)},null,animationSpeed);
                  this.mProgressTween.onComplete = this.onProgressTweenCompleted;
                  this.mProgressTween.play();
               }
            }
            else
            {
               this.nextLeagueRankingIcon.visible = true;
               if(this.mUserRating > 0)
               {
                  this.leagueProgressFill.scaleX = FriendsUtil.Clamp((this.mUserRating - this.mUserRatingGain - lowerLimit) / (upperLimit - lowerLimit),0,1);
               }
               else
               {
                  this.leagueProgressFill.scaleX = FriendsUtil.Clamp((this.mUserRating + this.mUserRatingGain - lowerLimit) / (upperLimit - lowerLimit),0,1);
               }
               userRatingFrom = 0;
               userRatingTo = this.mUserRating;
               if(this.mUserRatingGain > 0)
               {
                  userRatingFrom = userRatingTo - this.mUserRatingGain;
               }
               else
               {
                  userRatingFrom = userRatingTo + Math.abs(this.mUserRatingGain);
               }
               this.mProgressCompleted[1] = true;
               if(shouldAnimate)
               {
                  animationSpeed = this.getAnimationSpeed(Math.abs(this.mUserRatingGain));
                  this.animateUserRatingCounter(true,userRatingFrom,userRatingTo,animationSpeed);
                  this.mProgressTween = TweenManager.instance.createTween(this.leagueProgressFill,{"scaleX":FriendsUtil.Clamp((this.mUserRating - lowerLimit) / (upperLimit - lowerLimit),0,1)},null,animationSpeed);
                  this.mProgressTween.onComplete = this.onNormalProgressTweenCompleted;
                  this.mProgressTween.play();
               }
               else
               {
                  this.mUserRatingCount = userRatingFrom;
               }
            }
         }
         else
         {
            this.nextLeagueRankingIcon.visible = true;
            this.leagueProgressFill.scaleX = FriendsUtil.Clamp(Math.abs(this.mUserRating - lowerLimit) / (upperLimit - lowerLimit),0,1);
            this.setProgressBarLimits(upperLimit,lowerLimit);
            if(shouldAnimate)
            {
               animationSpeed = this.getAnimationSpeed(this.mUserRatingGain);
               this.animateUserRatingCounter(false,this.mUserRating,this.mUserRating,animationSpeed);
               if(this.mUserRatingGain != 0)
               {
                  this.mProgressTween = TweenManager.instance.createTween(this.leagueProgressFill,{"scaleX":FriendsUtil.Clamp(Math.abs(this.mUserRating - lowerLimit) / (upperLimit - lowerLimit),0,1)},null,animationSpeed);
                  this.mProgressTween.onComplete = this.onNormalProgressTweenCompleted;
                  this.mProgressTween.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.mUserRating;
            }
         }
      }
      
      private function getAnimationSpeed(value:Number) : Number
      {
         var speed:Number = Math.abs(value) / this.SCORE_VALUE * this.FILL_BAR_ANIMATION_SPEED;
         if(speed < 0.1)
         {
            return 0.1;
         }
         return speed;
      }
      
      private function animateUserRatingCounter(animate:Boolean, userRatingFrom:Number, userRatingTo:Number, animationSpeed:Number) : void
      {
         if(animate)
         {
            if(this.mUserRatingCountTween)
            {
               this.mUserRatingCountTween.stop();
               this.mUserRatingCountTween = null;
            }
            if(userRatingFrom != userRatingTo)
            {
               SoundEngine.playSound("gamescorescreen_score_count_loop",LOOP_CHANNEL_NAME,100);
            }
            this.mUserRatingCountTween = TweenManager.instance.createTween(this,{"mUserRatingCount":userRatingTo},{"mUserRatingCount":userRatingFrom},animationSpeed);
            this.mUserRatingCountTween.onComplete = this.onUserRatingCountCompleted;
            this.mUserRatingCountTween.play();
         }
         else
         {
            this.mUserRatingCount = userRatingTo;
         }
      }
      
      private function resetLeagueIcons() : void
      {
         this.mCurrentLeagueRankingIcon = this.mUIView.getItemByName("CurrentLeagueIcon").mClip;
         this.nextLeagueRankingIcon = this.mUIView.getItemByName("NextLeagueIcon").mClip;
         this.mCurrentLeagueRankingIcon.gotoAndStop(0);
         this.nextLeagueRankingIcon.gotoAndStop(0);
         if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
         {
            this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
         }
         if(this.nextLeagueRankingIcon.StarPromotionIcon)
         {
            this.nextLeagueRankingIcon.StarPromotionIcon.visible = false;
         }
      }
      
      private function setLeagueIcons(prevResult:Object, starRating:Number = 0) : void
      {
         var leagueId:String = null;
         var leagueName:String = null;
         var starAmount:Number = this.playerStatus == this.POSITION_PROMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(starRating - 1) : (this.playerStatus == this.POSITION_DEMOTED && this.mResultType == StateTournamentResults.RESULTS_SCREEN ? Number(starRating + 1) : Number(starRating));
         if(starRating == 1 && this.playerStatus == this.POSITION_PROMOTED && this.mPrevResult.lastResult)
         {
            this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(this.mPrevResult.l.pli.tn).id);
         }
         else if(starRating > 0)
         {
            this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
            this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = true;
            this.mCurrentLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
         }
         else if(starRating == -1 && this.playerStatus == this.POSITION_DEMOTED && LeagueType.getLeagueById(prevResult.l.pli.tn).id == LeagueType.sDiamondLeague.id && prevResult.lastResult)
         {
            this.mCurrentLeagueRankingIcon.gotoAndStop("DIAMOND");
            if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
            {
               this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
            }
         }
         else if(prevResult.l.li)
         {
            this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(prevResult.l.li.tn).id);
            if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
            {
               this.mCurrentLeagueRankingIcon.StarPromotionIcon.visible = false;
            }
         }
         else if(prevResult.l.pli)
         {
            if(!prevResult.lastResult && this.playerStatus == this.POSITION_PROMOTED)
            {
               this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getNextLeagueId(prevResult.l.pli.tn).id);
            }
            else if(!prevResult.lastResult && this.playerStatus == this.POSITION_DEMOTED)
            {
               this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getPreviousLeagueId(prevResult.l.pli.tn).id);
            }
            else
            {
               this.mCurrentLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(prevResult.l.pli.tn).id);
            }
         }
         else
         {
            this.mCurrentLeagueRankingIcon.visble = false;
         }
         if(starRating == 1 && this.playerStatus == this.POSITION_PROMOTED)
         {
            this.nextLeagueRankingIcon.gotoAndStop("STAR");
            this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
            if(this.mPrevResult.lastResult)
            {
               this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starRating.toString();
            }
            else
            {
               this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = this.mPrevResult.l.nli.ls.toString();
            }
         }
         else if(starRating >= 0)
         {
            this.nextLeagueRankingIcon.gotoAndStop("STAR");
            starAmount = this.playerStatus == this.POSITION_DEMOTED ? Number(starAmount) : Number(starAmount + 1);
            if(!prevResult.lastResult && prevResult.l.nli.ls)
            {
               starAmount = prevResult.l.nli.ls;
            }
            this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
            this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = starAmount.toString();
         }
         else if(prevResult.lastResult && this.playerStatus == this.POSITION_DEMOTED && LeagueType.getLeagueById(prevResult.l.pli.tn).id == LeagueType.sDiamondLeague.id && starRating == -1)
         {
            this.nextLeagueRankingIcon.gotoAndStop("STAR");
            this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
            this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = (this.mPrevResult.l.pli.ls + 1).toString();
         }
         else if(prevResult.l.nli)
         {
            this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(prevResult.l.nli.tn).id);
            if(prevResult.l.nli.ls && prevResult.l.nli.ls >= 1)
            {
               this.nextLeagueRankingIcon.gotoAndStop("STAR");
               this.nextLeagueRankingIcon.StarPromotionIcon.visible = true;
               this.nextLeagueRankingIcon.StarPromotionIcon.txtStarRating.text = this.mPrevResult.l.nli.ls.toString();
            }
         }
         else if(prevResult.l.pli)
         {
            leagueId = !!LeagueModel.instance.currentLeague() ? LeagueModel.instance.currentLeague().id : prevResult.l.pli.tn;
            if(!prevResult.lastResult && this.playerStatus == this.POSITION_PROMOTED)
            {
               if(LeagueModel.instance.currentLeague())
               {
                  this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getNextLeagueId(LeagueModel.instance.currentLeague().id).id);
               }
               else if(prevResult.l.pli)
               {
                  this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getNextLeagueId(LeagueType.getNextLeagueId(prevResult.l.pli.tn).id).id);
               }
            }
            else if(!prevResult.lastResult && this.playerStatus == this.POSITION_DEMOTED)
            {
               this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getNextLeagueId(leagueId).id);
            }
            else
            {
               this.nextLeagueRankingIcon.gotoAndStop(LeagueType.getLeagueById(leagueId).id);
            }
         }
         else
         {
            this.nextLeagueRankingIcon.visble = false;
         }
         var leaguePositionText:String = "";
         if(!prevResult.lastResult && this.playerStatus == this.POSITION_PROMOTED && starRating <= 0)
         {
            leaguePositionText = LEAGUE_TEXT_PROMOTED;
         }
         else if(!prevResult.lastResult && this.playerStatus == this.POSITION_DEMOTED && starRating <= 0)
         {
            leaguePositionText = LEAGUE_TEXT_DEMOTED;
         }
         else
         {
            leaguePositionText = !!prevResult.l.li ? LEAGUE_TEXT_YOU_ARE_IN : LEAGUE_TEXT_YOU_WERE_IN;
         }
         (this.mUIView.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = leaguePositionText;
         if(prevResult.l.li || prevResult.l.pli)
         {
            leagueName = !!prevResult.l.li ? LeagueType.getLeagueById(prevResult.l.li.tn).name + "!" : LeagueType.getLeagueById(prevResult.l.pli.tn).name + "!";
            if(!prevResult.lastResult && this.playerStatus == this.POSITION_PROMOTED)
            {
               leagueName = !!prevResult.l.li ? LeagueType.getLeagueById(prevResult.l.li.tn).name + "!" : LeagueType.getNextLeagueId(prevResult.l.pli.tn).name + "!";
            }
            else if(!prevResult.lastResult && this.playerStatus == this.POSITION_PROMOTED)
            {
               leagueName = !!prevResult.l.li ? LeagueType.getPreviousLeagueId(prevResult.l.li.tn).name + "!" : LeagueType.getPreviousLeagueId(prevResult.l.pli.tn).name + "!";
            }
            (this.mUIView.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = leagueName;
         }
         else
         {
            (this.mUIView.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function setProgressText(userRating:Number, mUserRatingGain:Number, upperLimit:Number, lowerLimit:Number, animate:Boolean = false) : void
      {
         this.setProgressBarLimits(upperLimit,lowerLimit);
      }
      
      private function onUserRatingCountCompleted() : void
      {
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         if(this.mUserRatingCountTween)
         {
            this.mUserRatingCountTween.stop();
            this.mUserRatingCountTween = null;
         }
      }
      
      private function setProgressBarLimits(upperLimit:Number, lowerLimit:Number) : void
      {
         if(lowerLimit > -1)
         {
            (this.mUIView.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = lowerLimit.toString();
         }
         else
         {
            (this.mUIView.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.mUIView.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = upperLimit.toString();
      }
      
      private function setupAnimations(starRating:Number = 0) : void
      {
         this.stopAnimations();
         if(this.playerStatus == this.POSITION_KEEP)
         {
            return;
         }
         this.mcPromotionAnimation = new this.promotionAnimationClass();
         this.mcPromotionAnimationShine = new this.promotionAnimationShineClass();
         this.mcPromotionAnimationNextLeagueShine = new this.promotionAnimationShineClass();
         this.mcPromotionAnimationNextLeague = new this.promotionAnimationClass();
         if(this.mUserRatingGain > 0 && this.playerStatus == this.POSITION_PROMOTED)
         {
            this.mcPromotionAnimationNextLeagueShine = new this.promotionAnimationShineClass();
            if(starRating > 0)
            {
               this.mcPromotionAnimation = new this.starPromotionAnimationClass();
               this.mcPromotionAnimationNextLeague = new this.starPromotionAnimationClass();
               this.mcPromotionAnimationShine = new this.starPromotionAnimationShineClass();
               this.mcPromotionAnimationNextLeagueShine = new this.starPromotionAnimationShineClass();
            }
         }
         else if(this.mUserRatingGain < 0 && this.playerStatus == this.POSITION_DEMOTED)
         {
            this.mcPromotionAnimation = new this.demotionAnimationClass();
            this.mcPromotionAnimationNextLeague = new this.demotionAnimationClass();
            if(starRating >= 0)
            {
               this.mcPromotionAnimation = new this.starDemotionAnimationClass();
               this.mcPromotionAnimationNextLeague = new this.starDemotionAnimationClass();
            }
         }
         this.mcPromotionAnimation.name = "LeaguePromotionAnimation";
         this.mcPromotionAnimation.gotoAndStop(0);
         this.mcPromotionAnimation.visible = false;
         this.mcPromotionAnimationNextLeague.name = "LeaguePromotionAnimationNextLeague";
         this.mcPromotionAnimationNextLeague.gotoAndStop(0);
         this.mcPromotionAnimationNextLeague.visible = false;
         this.mcPromotionAnimationShine.visible = false;
         this.mcPromotionAnimationShine.name = "LeaguePromotionAnimationShine";
         this.mcPromotionAnimationShine.gotoAndStop(0);
         this.mcPromotionAnimationNextLeagueShine.visible = false;
         this.mcPromotionAnimationNextLeagueShine.name = "LeaguePromotionAnimationNextLeagueShine";
         this.mcPromotionAnimationNextLeagueShine.gotoAndStop(0);
         var animationObject:DisplayObject = this.mCurrentLeagueRankingIcon.getChildByName(this.mcPromotionAnimation.name);
         if(animationObject)
         {
            this.mCurrentLeagueRankingIcon.removeChild(animationObject);
         }
         this.mcPromotionAnimation.addEventListener(Event.ENTER_FRAME,this.onPromotionAnimation);
         this.mCurrentLeagueRankingIcon.addChild(this.mcPromotionAnimation);
         var promotionAnimPoint:Point = new Point(26,20);
         var promotionAnimScale:Number = 1;
         if(this.mcPromotionAnimation is this.starDemotionAnimationClass || this.mcPromotionAnimation is this.starPromotionAnimationClass)
         {
            promotionAnimPoint = new Point(25,23);
            promotionAnimScale = 0.5;
         }
         this.mcPromotionAnimationShine.x = promotionAnimPoint.x;
         this.mcPromotionAnimationShine.y = promotionAnimPoint.y;
         this.mcPromotionAnimationShine.scaleX = this.mcPromotionAnimationShine.scaleY = promotionAnimScale;
         this.mcPromotionAnimation.x = promotionAnimPoint.x;
         this.mcPromotionAnimation.y = promotionAnimPoint.y;
         this.mcPromotionAnimation.scaleX = this.mcPromotionAnimation.scaleY = promotionAnimScale;
         var animationObjectNextLeague:DisplayObject = this.nextLeagueRankingIcon.getChildByName(this.mcPromotionAnimationNextLeague.name);
         if(animationObjectNextLeague)
         {
            this.nextLeagueRankingIcon.removeChild(animationObjectNextLeague);
         }
         this.mcPromotionAnimationNextLeague.removeEventListener(Event.ENTER_FRAME,this.onPromotionAnimationNextLeague);
         this.mcPromotionAnimationNextLeague.addEventListener(Event.ENTER_FRAME,this.onPromotionAnimationNextLeague);
         this.nextLeagueRankingIcon.addChild(this.mcPromotionAnimationNextLeague);
         if(this.mcPromotionAnimationNextLeague is this.starDemotionAnimationClass || this.mcPromotionAnimationNextLeague is this.starPromotionAnimationClass)
         {
            this.mcPromotionAnimationNextLeague.x = 0;
            this.mcPromotionAnimationNextLeague.y = 5;
            this.mcPromotionAnimationNextLeagueShine.scaleX = this.mcPromotionAnimationNextLeagueShine.scaleY = 0.5;
         }
         else
         {
            this.mcPromotionAnimationNextLeague.x = 25;
            this.mcPromotionAnimationNextLeague.y = 25;
         }
         this.mcPromotionAnimationNextLeague.scaleX = this.mcPromotionAnimationNextLeague.scaleY = 0.75;
         this.mcPromotionAnimationNextLeagueShine.x = this.mcPromotionAnimationNextLeague.x;
         this.mcPromotionAnimationNextLeagueShine.y = this.mcPromotionAnimationNextLeague.y;
         var animationShineObject:DisplayObject = this.mCurrentLeagueRankingIcon.getChildByName(this.mcPromotionAnimationShine.name);
         if(animationShineObject)
         {
            this.mCurrentLeagueRankingIcon.removeChild(animationShineObject);
         }
         var animationShineNextLeagueObject:DisplayObject = this.nextLeagueRankingIcon.getChildByName(this.mcPromotionAnimationNextLeagueShine.name);
         if(animationShineNextLeagueObject)
         {
            this.nextLeagueRankingIcon.removeChild(animationShineNextLeagueObject);
         }
         this.mCurrentLeagueRankingIcon.addChild(this.mcPromotionAnimationShine);
         this.nextLeagueRankingIcon.addChild(this.mcPromotionAnimationNextLeagueShine);
      }
      
      private function onNormalProgressTweenCompleted() : void
      {
         this.mProgressCompleted[0] = true;
         this.mProgressTween.stop();
         this.mProgressTween = null;
         StateTournamentResults.smAllowedToShowShareOrLeaguePromotion = true;
      }
      
      private function onProgressTweenCompleted() : void
      {
         var o:Object = null;
         var scaleAmount:Number = NaN;
         var animationSpeed:Number = NaN;
         this.mProgressTween.stop();
         this.mProgressTween = null;
         if(this.mcPromotionAnimation)
         {
            this.mcPromotionAnimation.visible = true;
            this.mcPromotionAnimationShine.visible = true;
            this.mcPromotionAnimation.gotoAndPlay(0);
            this.mcPromotionAnimationShine.gotoAndPlay(0);
            StateTournamentResults.smAllowedToShowShareOrLeaguePromotion = true;
            if(this.mCurrentLeagueRankingIcon.StarPromotionIcon)
            {
               this.mCurrentLeagueRankingIcon.setChildIndex(this.mCurrentLeagueRankingIcon.StarPromotionIcon,this.mCurrentLeagueRankingIcon.numChildren - 1);
            }
            this.mCurrentLeagueRankingIcon.setChildIndex(this.mcPromotionAnimationShine,0);
         }
         if(this.mcPromotionAnimationNextLeague)
         {
            this.mcPromotionAnimationNextLeague.visible = true;
            this.mcPromotionAnimationNextLeagueShine.visible = !(this.mcPromotionAnimationNextLeague is this.starDemotionAnimationClass);
            this.mcPromotionAnimationNextLeague.gotoAndPlay(0);
            this.mcPromotionAnimationNextLeagueShine.gotoAndPlay(0);
            if(this.nextLeagueRankingIcon.StarPromotionIcon)
            {
               this.nextLeagueRankingIcon.setChildIndex(this.nextLeagueRankingIcon.StarPromotionIcon,this.nextLeagueRankingIcon.numChildren - 1);
            }
            this.nextLeagueRankingIcon.setChildIndex(this.mcPromotionAnimationNextLeagueShine,0);
         }
         this.leagueProgressFill.scaleX = 0;
         var userRating:Number = 0;
         if(!this.mPrevResult || !this.mPrevResult.l)
         {
            this.nextLeagueRankingIcon.visible = true;
            return;
         }
         var previousMinRating:Number = !!this.mPrevResult.l.pli ? Number(this.mPrevResult.l.pli.rt) : Number(0);
         var currentMinRating:Number = !!this.mPrevResult.l.li ? Number(this.mPrevResult.l.li.rt) : Number(previousMinRating);
         var nextMinRating:Number = !!this.mPrevResult.l.nli ? Number(this.mPrevResult.l.nli.rt) : Number(0);
         var scaleDirection:Number = 1;
         var upperLimit:Number = 0;
         var lowerLimit:Number = 0;
         for each(o in this.mPrevResult.l.p)
         {
            if(o.u == (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID)
            {
               if(o.lrc)
               {
                  this.userRatingGain = o.lrc;
               }
               if(o.lr)
               {
                  userRating = o.lr;
               }
               if(o.p)
               {
                  if(o.p == "u")
                  {
                     upperLimit = nextMinRating;
                     lowerLimit = currentMinRating;
                     this.playerStatus = this.POSITION_PROMOTED;
                     scaleDirection = (userRating - lowerLimit) / (upperLimit - lowerLimit);
                  }
                  if(o.p == "d")
                  {
                     upperLimit = previousMinRating;
                     lowerLimit = currentMinRating;
                     this.playerStatus = this.POSITION_DEMOTED;
                     this.leagueProgressFill.scaleX = FriendsUtil.Clamp((userRating + this.mUserRatingGain * -1 - lowerLimit) / (upperLimit - lowerLimit),0,1);
                     scaleDirection = (userRating - lowerLimit) / (upperLimit - lowerLimit);
                  }
               }
            }
         }
         this.setProgressBarLimits(upperLimit,lowerLimit);
         scaleAmount = Math.abs(this.leagueProgressFill.scaleX - scaleDirection);
         animationSpeed = this.getAnimationSpeed(Math.abs(this.mUserRatingGain) * scaleAmount);
         if(this.playerStatus == this.POSITION_PROMOTED)
         {
            this.animateUserRatingCounter(true,lowerLimit,userRating,animationSpeed);
         }
         else
         {
            this.animateUserRatingCounter(true,upperLimit,userRating,animationSpeed);
         }
         this.mProgressTweenPromote = null;
         this.mProgressTweenPromote = TweenManager.instance.createTween(this.leagueProgressFill,{"scaleX":FriendsUtil.Clamp(scaleDirection,0,1)},null,animationSpeed);
         this.mProgressTweenPromote.onComplete = this.onProgressPromoteTweenCompleted;
         this.mProgressTweenPromote.play();
      }
      
      private function onProgressPromoteTweenCompleted() : void
      {
         this.mProgressCompleted[0] = true;
         this.mProgressTweenPromote.stop();
         this.mProgressTweenPromote = null;
         this.nextLeagueRankingIcon.visible = true;
      }
      
      public function isAnimating() : Boolean
      {
         return this.mAnimating;
      }
      
      public function get starRating() : Number
      {
         return this.mStarRating;
      }
      
      public function set starRating(value:Number) : void
      {
         this.mStarRating = value;
      }
      
      public function set userRatingGain(value:Number) : void
      {
         this.mUserRatingGain = value;
      }
      
      public function update(deltaTime:Number) : void
      {
         var prefixSign:String = this.mUserRatingGain > 0 ? "+" : "";
         (this.mUIView.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + prefixSign + this.mUserRatingGain.toString() + ")";
         if(this.mProgressCompleted[0] && this.mProgressCompleted[1])
         {
            this.mProgressCompleted = [false,false];
            dispatchEvent(new ProgressAnimationEvent(ProgressAnimationEvent.PROGRESSBAR_COMPLETED));
         }
      }
      
      public function deActivate() : void
      {
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         this.stopAnimations();
      }
      
      private function stopAnimations() : void
      {
         if(this.mcPromotionAnimation)
         {
            this.mcPromotionAnimation.gotoAndStop(0);
            this.mcPromotionAnimation.removeEventListener(Event.ENTER_FRAME,this.onPromotionAnimation);
         }
         if(this.mcPromotionAnimationNextLeague)
         {
            this.mcPromotionAnimationNextLeague.gotoAndStop(0);
            this.mcPromotionAnimationNextLeague.removeEventListener(Event.ENTER_FRAME,this.onPromotionAnimationNextLeague);
         }
      }
   }
}
