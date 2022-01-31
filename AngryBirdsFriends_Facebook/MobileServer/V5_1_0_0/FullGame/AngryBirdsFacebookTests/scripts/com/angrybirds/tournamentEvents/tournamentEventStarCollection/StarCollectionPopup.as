package com.angrybirds.tournamentEvents.tournamentEventStarCollection
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.utils.ServerErrorCodes;
   import com.rovio.assets.AssetCache;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class StarCollectionPopup extends AbstractPopup
   {
      
      public static const ID:String = "StarCollectionPopup";
       
      
      protected var mTournamentEventManager:TournamentEventManager;
      
      protected var mStarCollectorManager:StarCollectionManager;
      
      private var mView:MovieClip;
      
      private var mTextfieldStatsTournament:TextField;
      
      private var mTextfieldStatsTotalStars:TextField;
      
      private var mTextfieldTimeLeft:TextField;
      
      private var mChestButtonsLocked:Vector.<MovieClip>;
      
      private var mChestButtonsClaimable:Vector.<MovieClip>;
      
      private var mChestButtonsClaimAnimations:Vector.<MovieClip>;
      
      private var mLoader:ABFLoader;
      
      private var mItemTween:ISimpleTween;
      
      private var mClaimingRewardID:int = -1;
      
      private var mClaimingAnimationActivated:Boolean;
      
      private var mClaimedItems:Array;
      
      private var mOriginalThemeMusicSoundChannelVolume:Number;
      
      public function StarCollectionPopup(layerIndex:int, priority:int)
      {
         var dataXML:XML = ViewXMLLibrary.mLibrary.Views.PopupView_StartCollector[0];
         super(layerIndex,priority,dataXML,ID);
         this.mTournamentEventManager = TournamentEventManager.instance;
         this.mStarCollectorManager = this.mTournamentEventManager.getActivatedEventManager() as StarCollectionManager;
      }
      
      override protected function init() : void
      {
         super.init();
         this.mView = mContainer.mClip;
         this.mTextfieldStatsTournament = this.mView.Stats.Textfield_Tournament as TextField;
         this.mTextfieldStatsTotalStars = this.mView.Stats.Textfield_Total as TextField;
         this.mTextfieldTimeLeft = this.mView.Time.Textfield_TimeLeft as TextField;
         this.mTextfieldStatsTournament.text = "";
         this.mTextfieldStatsTotalStars.text = "";
         this.mTextfieldTimeLeft.text = "";
         this.mTournamentEventManager.addEventListener(TournamentEventManager.EVENT_UPDATE_TOURNAMENT_EVENT,this.updateTournamentEvent);
         this.initChestButtons();
      }
      
      private function initChestButtons() : void
      {
         this.mChestButtonsLocked = new Vector.<MovieClip>();
         for(var buttonNumber:int = 1; buttonNumber <= 8; buttonNumber++)
         {
            this.mChestButtonsLocked.push(this.mView["SC_ChestLocked" + buttonNumber]);
         }
         this.mChestButtonsClaimable = new Vector.<MovieClip>();
         for(buttonNumber = 1; buttonNumber <= 8; buttonNumber++)
         {
            this.mChestButtonsClaimable.push(this.mView["SC_ChestClaimable" + buttonNumber]);
         }
         this.mChestButtonsClaimAnimations = new Vector.<MovieClip>();
         for(buttonNumber = 1; buttonNumber <= 8; buttonNumber++)
         {
            this.mChestButtonsClaimAnimations.push(this.mView["SC_ChestClaim" + buttonNumber]);
         }
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.setData();
         this.mOriginalThemeMusicSoundChannelVolume = SoundEngine.getSoundChannelVolume(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_CHANNEL);
         SoundEngine.setSoundChannelVolume(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_CHANNEL,this.mOriginalThemeMusicSoundChannelVolume / 3);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         super.hide(useTransition,waitForAnimationsToStop);
         SoundEngine.setSoundChannelVolume(AngryBirdsBase.ANGRYBIRDS_THEME_MUSIC_CHANNEL,this.mOriginalThemeMusicSoundChannelVolume);
      }
      
      private function setData() : void
      {
         var rewardItem:StarCollectionRewardItem = null;
         if(!this.mStarCollectorManager)
         {
            return;
         }
         this.mTextfieldStatsTournament.text = this.mStarCollectorManager.collectedInTournament + "/" + this.mStarCollectorManager.totalCollectibleInTournament;
         this.mTextfieldStatsTotalStars.text = this.mStarCollectorManager.collectedInEvent + "/" + this.mStarCollectorManager.totalCollectibleInEvent;
         var activeChestSet:Boolean = false;
         for(var i:int = 0; i < this.mChestButtonsLocked.length; i++)
         {
            rewardItem = this.mStarCollectorManager.getRewardItem(i);
            this.mChestButtonsLocked[i].visible = false;
            this.mChestButtonsClaimable[i].visible = false;
            this.mChestButtonsClaimAnimations[i].visible = false;
            if(rewardItem)
            {
               if(this.mStarCollectorManager.collectedInEvent < rewardItem.starsNeeded)
               {
                  this.mChestButtonsLocked[i].visible = true;
                  if(!activeChestSet)
                  {
                     (this.mChestButtonsLocked[i].getChildByName("TextField_Value") as TextField).text = this.mStarCollectorManager.collectedInEvent + "/" + rewardItem.starsNeeded;
                     this.mChestButtonsLocked[i].getChildByName("bgNormal").visible = false;
                     this.mChestButtonsLocked[i].getChildByName("bgActive").visible = true;
                     activeChestSet = true;
                  }
                  else
                  {
                     (this.mChestButtonsLocked[i].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.mChestButtonsLocked[i].getChildByName("bgNormal").visible = true;
                     this.mChestButtonsLocked[i].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.mStarCollectorManager.isRewardClaimable(rewardItem.ID))
               {
                  this.mChestButtonsClaimable[i].visible = true;
                  this.mChestButtonsClaimable[i].addEventListener(MouseEvent.CLICK,this.onChestButtonClicked);
               }
               else
               {
                  this.mChestButtonsClaimAnimations[i].gotoAndStop(this.mChestButtonsClaimAnimations[i].totalFrames);
                  this.mChestButtonsClaimAnimations[i].visible = true;
               }
            }
         }
      }
      
      private function onChestButtonClicked(e:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:StarCollectionRewardItem = null;
         if(this.mClaimingRewardID > -1)
         {
            return;
         }
         if(!this.mStarCollectorManager)
         {
            return;
         }
         for(i = 0; i < this.mChestButtonsClaimable.length; i++)
         {
            if(this.mChestButtonsClaimable[i] == e.currentTarget)
            {
               rewardItem = this.mStarCollectorManager.getRewardItem(i);
               if(!rewardItem)
               {
                  break;
               }
               this.nullClaimingValues();
               this.mClaimingRewardID = rewardItem.ID;
               this.claimReward();
               this.mChestButtonsClaimable[i].removeEventListener(MouseEvent.CLICK,this.onChestButtonClicked);
               this.mChestButtonsClaimable[i].visible = false;
               this.mChestButtonsClaimAnimations[i].gotoAndPlay(1);
               this.mChestButtonsClaimAnimations[i].addFrameScript(this.mChestButtonsClaimAnimations[i].totalFrames - 1,function():void
               {
                  mChestButtonsClaimAnimations[i].stop();
                  mClaimingAnimationActivated = true;
               });
               this.mChestButtonsClaimAnimations[i].visible = true;
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            }
         }
      }
      
      private function updateTournamentEvent(e:Event) : void
      {
         var hours:Number = NaN;
         var days:Number = NaN;
         var minutes:Number = NaN;
         var seconds:Number = NaN;
         var secondsLeft:Number = this.mTournamentEventManager.getEventSecondsLeft();
         if(secondsLeft > 0)
         {
            hours = Math.floor(secondsLeft / 3600);
            if(hours >= 48)
            {
               days = Math.floor(secondsLeft / 86400);
               this.mTextfieldTimeLeft.text = days + " days";
            }
            else
            {
               secondsLeft -= hours * 3600;
               minutes = Math.floor(secondsLeft / 60);
               secondsLeft -= minutes * 60;
               seconds = Math.floor(secondsLeft);
               this.mTextfieldTimeLeft.text = hours + "h " + minutes + "min " + seconds + "s";
            }
         }
         else
         {
            this.mTextfieldTimeLeft.text = "0h 0min 0s";
            close();
         }
         if(this.mClaimingRewardID > -1)
         {
            if(this.mClaimingAnimationActivated && this.mClaimedItems && this.mStarCollectorManager)
            {
               this.showClaimedItems(this.mClaimedItems,this.mStarCollectorManager.getRewardItemWithID(this.mClaimingRewardID));
               this.setData();
               StateTournamentLevelSelection.activateTournamentEventButtonStateCheck();
               this.nullClaimingValues();
            }
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "INFO":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      override public function dispose() : void
      {
         this.mTournamentEventManager.removeEventListener(TournamentEventManager.EVENT_UPDATE_TOURNAMENT_EVENT,this.updateTournamentEvent);
         if(this.mItemTween)
         {
            this.mItemTween.stop();
            this.mItemTween = null;
         }
         super.dispose();
      }
      
      private function claimReward() : void
      {
         FacebookAnalyticsCollector.getInstance().trackTournamentEventClaimReward(this.mClaimingRewardID);
         this.mLoader = new ABFLoader();
         this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mLoader.addEventListener(Event.COMPLETE,this.onRewardClaimed);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onRewardClaimError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onRewardClaimError);
         this.mLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onRewardClaimError);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.mClaimingRewardID);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mLoader.load(urlRequest);
      }
      
      private function onRewardClaimed(e:Event) : void
      {
         var responseData:Object = e.target.data;
         if(responseData.errorCode == ServerErrorCodes.STAR_COLLECTOR_REWARD_ALREADY_CLAIMED)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_REWARD_ALREADY_CLAIMED));
            this.stopDataLoading();
            this.nullClaimingValues();
            return;
         }
         this.mClaimedItems = responseData.items;
         if(this.mStarCollectorManager)
         {
            this.mStarCollectorManager.setClaimableRewards(responseData.eventInfo.cp);
         }
         this.stopDataLoading();
      }
      
      private function onRewardClaimError(event:Event) : void
      {
         this.stopDataLoading();
         this.nullClaimingValues();
      }
      
      private function nullClaimingValues() : void
      {
         this.mClaimingAnimationActivated = false;
         this.mClaimingRewardID = -1;
         this.mClaimedItems = null;
      }
      
      private function stopDataLoading() : void
      {
         if(this.mLoader)
         {
            this.mLoader.removeEventListener(Event.COMPLETE,this.onRewardClaimed);
            this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onRewardClaimError);
            this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onRewardClaimError);
            this.mLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onRewardClaimError);
            this.mLoader = null;
         }
      }
      
      private function showClaimedItems(actualClaimedItems:Array, rewardItem:StarCollectionRewardItem) : void
      {
         var dimmerSprite:Sprite = null;
         var claimAnimationFrame:MovieClip = null;
         var ri:Object = null;
         var mc:MovieClip = null;
         var GlowRotatorClass:Class = null;
         var rotatorDsp:DisplayObject = null;
         var cls:Class = null;
         var dsp:DisplayObjectContainer = null;
         var i:int = 0;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mView.addChild(dimmerSprite);
         SoundEngine.playSound("league_promotion_diamond",SoundEngine.DEFAULT_CHANNEL_NAME);
         this.mItemTween = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.rewards)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = AssetCache.getAssetFromCache("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = AssetCache.getAssetFromCache(ri.i);
            dsp = new cls();
            dsp.x = 0;
            dsp.y = 0;
            (dsp.getChildByName("count") as TextField).text = "x" + ri.q;
            mc.addChild(dsp);
            mc.x = itemX;
            mc.y = 0;
            itemX += dsp.width;
            itemsWidth += dsp.width;
            claimAnimationFrame.addChild(mc);
         }
         if(claimAnimationFrame.numChildren > 1)
         {
            itemX = -(itemsWidth / 4);
            for(i = 0; i < claimAnimationFrame.numChildren; i++)
            {
               claimAnimationFrame.getChildAt(i).x = itemX;
               itemX += claimAnimationFrame.getChildAt(i).width;
            }
         }
         claimAnimationFrame.x = this.mChestButtonsLocked[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.mChestButtonsLocked[6].y;
         this.mView.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:IManagedTween = TweenManager.instance.createTween(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:IManagedTween = TweenManager.instance.createTween(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.mItemTween = TweenManager.instance.createSequenceTween(tween1,tween2);
         this.mItemTween.onComplete = function():void
         {
            mView.removeChild(claimAnimationFrame);
            mView.removeChild(dimmerSprite);
         };
         this.mItemTween.play();
         ItemsInventory.instance.injectInventoryUpdate(actualClaimedItems);
         ItemsInventory.instance.loadInventory();
      }
   }
}
