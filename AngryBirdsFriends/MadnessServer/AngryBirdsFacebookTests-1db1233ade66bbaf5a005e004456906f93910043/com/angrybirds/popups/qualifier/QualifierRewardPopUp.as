package com.angrybirds.popups.qualifier
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.sfx.Star;
   import com.angrybirds.sfx.StarSplash;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.assets.AssetCache;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.effects.easing.Back;
   
   public class QualifierRewardPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierRewardPopUp";
      
      private static var TOTAL_CHESTS:uint = 6;
      
      private static var NUM_CHESTS_OPENED_TO_INFORM_SERVER:uint = 2;
      
      private static const STATE_NONE:uint = 0;
      
      private static const STATE_SHOW_CHESTS:uint = 1;
      
      private static const STATE_DONE:uint = 2;
      
      private static const TIME_SHOW_CHESTS_START_DELAY:uint = 200;
      
      private static const TIME_SHOW_DONE_BUTTON_DELAY:uint = 500;
      
      private static const TIP_SHOW_DELAY:int = 1500;
       
      
      private var mChestOpenedCounter:uint = 0;
      
      private var mContinueButton:DisplayObject;
      
      private var mRewards:Array;
      
      private var mLoader:ABFLoader;
      
      private var mRewardButtons:Vector.<UIButtonRovio>;
      
      private var mChestShowTween:IManagedTween;
      
      private var mUpdateTimer:int;
      
      private var mNextState:uint = 0;
      
      private var mCurrentState:uint = 0;
      
      private var mChestOpenTimer:int;
      
      private var mDoneButtonShowTimer:int;
      
      private var mStarSplashPool:Vector.<StarSplash>;
      
      private var mContinueButtonScales:Point;
      
      private var mChestIdleTweens:Dictionary;
      
      private var mUpdateTimeToShowTip:Boolean;
      
      private var mTipShowTimer:int;
      
      private var mTipMC:DisplayObject;
      
      public function QualifierRewardPopUp(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         this.mRewardButtons = new Vector.<UIButtonRovio>();
         this.mChestIdleTweens = new Dictionary();
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var button:UIButtonRovio = null;
         super.init();
         this.mContinueButton = mContainer.mClip.doneButton;
         this.mContinueButton.addEventListener(MouseEvent.CLICK,this.cbOnContinueClicked);
         this.mContinueButtonScales = new Point(this.mContinueButton.scaleX,this.mContinueButton.scaleY);
         this.mContinueButton.scaleX = this.mContinueButton.scaleY = 0;
         this.mTipMC = mContainer.mClip.tipMC;
         this.mTipMC.visible = false;
         var bg:DisplayObject = mContainer.mClip.bg;
         bg.visible = false;
         this.mRewards = ItemsInventory.instance.bundleHandler.getBundleContent(TournamentModel.QUALIFIER_INTERRUPTED_BUNDLE);
         for(var i:int = 1; i <= TOTAL_CHESTS; i++)
         {
            button = UIButtonRovio(mContainer.getItemByName("chest" + i));
            this.mRewardButtons.push(button);
            button.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         }
         if(this.mRewards == null || this.mRewards.length < TOTAL_CHESTS)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Rewards from " + TournamentModel.QUALIFIER_INTERRUPTED_BUNDLE + " does not match the chest count"));
         }
         this.mStarSplashPool = new Vector.<StarSplash>();
      }
      
      private function setNextState(state:uint) : void
      {
         this.mNextState = state;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.mUpdateTimer = getTimer();
         mContainer.mClip.addEventListener(Event.ENTER_FRAME,this.cbOnEnterFrame);
         this.setNextState(STATE_SHOW_CHESTS);
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
            this.changeState();
         }
         this.updateState(dt);
         this.updateSplashes(dt);
      }
      
      private function updateSplashes(dt:int) : void
      {
         var splash:StarSplash = null;
         for(var i:int = 0; i < this.mStarSplashPool.length; i++)
         {
            splash = this.mStarSplashPool[i];
            splash.update(dt);
         }
      }
      
      private function updateState(dt:int) : void
      {
         var i:int = 0;
         var bg:DisplayObject = null;
         var buttonRovio:UIButtonRovio = null;
         var tipOpenTween:IManagedTween = null;
         var buttonOpenTween:IManagedTween = null;
         var tipMCCloseTween:IManagedTween = null;
         var finalTween:IManagedTween = null;
         switch(this.mCurrentState)
         {
            case STATE_SHOW_CHESTS:
               if(this.mChestOpenTimer < TIME_SHOW_CHESTS_START_DELAY)
               {
                  this.mChestOpenTimer += dt;
                  if(this.mChestOpenTimer >= TIME_SHOW_CHESTS_START_DELAY)
                  {
                     this.mChestShowTween.play();
                     for(i = 0; i < this.mRewardButtons.length; i++)
                     {
                        buttonRovio = this.mRewardButtons[i];
                        buttonRovio.setVisibility(true);
                     }
                     bg = mContainer.mClip.bg;
                     bg.visible = true;
                  }
               }
               if(this.mUpdateTimeToShowTip)
               {
                  this.mTipShowTimer += dt;
                  if(this.mTipShowTimer >= TIP_SHOW_DELAY)
                  {
                     tipOpenTween = TweenManager.instance.createTween(this.mTipMC,{
                        "scaleX":this.mTipMC.scaleX,
                        "scaleY":this.mTipMC.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,Quadratic.easeOut);
                     this.mTipMC.visible = true;
                     this.mTipMC.scaleX = this.mTipMC.scaleY = 0;
                     tipOpenTween.play();
                     this.mUpdateTimeToShowTip = false;
                  }
               }
               break;
            case STATE_DONE:
               if(this.mDoneButtonShowTimer < TIME_SHOW_DONE_BUTTON_DELAY)
               {
                  this.mDoneButtonShowTimer += dt;
                  if(this.mDoneButtonShowTimer >= TIME_SHOW_DONE_BUTTON_DELAY)
                  {
                     buttonOpenTween = TweenManager.instance.createTween(this.mContinueButton,{
                        "scaleX":this.mContinueButtonScales.x,
                        "scaleY":this.mContinueButtonScales.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.mTipMC.visible)
                     {
                        tipMCCloseTween = TweenManager.instance.createTween(this.mTipMC,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.mTipMC.scaleX,
                           "scaleY":this.mTipMC.scaleY
                        },0.5,Quadratic.easeOut);
                        finalTween = TweenManager.instance.createSequenceTween(tipMCCloseTween,buttonOpenTween);
                        finalTween.play();
                     }
                     else
                     {
                        buttonOpenTween.play();
                     }
                  }
               }
         }
      }
      
      private function onChestShowed() : void
      {
         var buttonRovio:UIButtonRovio = null;
         var tempScaleX:int = 0;
         var tempScaleY:int = 0;
         var sizeIncrease:Number = NaN;
         var chestIdleTweenLarge:IManagedTween = null;
         var chestIdleTweenSmall:IManagedTween = null;
         var chestTween:IManagedTween = null;
         for(var i:int = 0; i < this.mRewardButtons.length; i++)
         {
            buttonRovio = this.mRewardButtons[i];
            buttonRovio.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            tempScaleX = buttonRovio.mClip.scaleX;
            tempScaleY = buttonRovio.mClip.scaleY;
            sizeIncrease = 0.1;
            chestIdleTweenLarge = TweenManager.instance.createTween(buttonRovio.mClip,{
               "scaleX":tempScaleX + sizeIncrease,
               "scaleY":tempScaleY + sizeIncrease
            },{
               "scaleX":tempScaleX,
               "scaleY":tempScaleY
            },3 + Math.random() * 1.5,Quadratic.easeIn);
            chestIdleTweenSmall = TweenManager.instance.createTween(buttonRovio.mClip,{
               "scaleX":tempScaleX,
               "scaleY":tempScaleY
            },{
               "scaleX":tempScaleY + sizeIncrease,
               "scaleY":tempScaleY + sizeIncrease
            },3 + Math.random() * 1.5,Quadratic.easeOut);
            chestTween = TweenManager.instance.createSequenceTween(chestIdleTweenLarge,chestIdleTweenSmall);
            chestTween.stopOnComplete = false;
            chestTween.delay = Math.random() * 2;
            chestTween.play();
            this.mChestIdleTweens[buttonRovio] = chestTween;
         }
         this.mUpdateTimeToShowTip = true;
         this.mTipShowTimer = 0;
      }
      
      private function changeState() : void
      {
         var tweens:Array = null;
         var bg:DisplayObject = null;
         var bgTween:IManagedTween = null;
         var chestTweens:IManagedTween = null;
         var i:int = 0;
         var dsp:DisplayObject = null;
         var tween:IManagedTween = null;
         this.mCurrentState = this.mNextState;
         this.mNextState = STATE_NONE;
         switch(this.mCurrentState)
         {
            case STATE_SHOW_CHESTS:
               this.mChestOpenTimer = 0;
               tweens = [];
               bg = mContainer.mClip.bg;
               bgTween = TweenManager.instance.createTween(bg,{"alpha":bg.alpha},{"alpha":0},1,TweenManager.EASING_QUAD_IN);
               bg.alpha = 0;
               for(i = 0; i < TOTAL_CHESTS; i++)
               {
                  dsp = this.mRewardButtons[i].mClip;
                  tween = TweenManager.instance.createTween(dsp,{
                     "scaleX":dsp.scaleX,
                     "scaleY":dsp.scaleY
                  },{
                     "scaleX":dsp.scaleX * 0.25,
                     "scaleY":dsp.scaleY * 0.25
                  },1.5,Quadratic.easeOut);
                  dsp.scaleX = dsp.scaleY = 0;
                  tweens.push(tween);
               }
               chestTweens = TweenManager.instance.createParallelTween(tweens[0],tweens[1],tweens[2],tweens[3],tweens[4],tweens[5]);
               this.mChestShowTween = TweenManager.instance.createSequenceTween(bgTween,chestTweens);
               this.mChestShowTween.onComplete = this.onChestShowed;
               break;
            case STATE_DONE:
               this.mDoneButtonShowTimer = 0;
         }
      }
      
      private function cbOnContinueClicked(event:MouseEvent) : void
      {
         this.mContinueButton.removeEventListener(MouseEvent.CLICK,this.cbOnContinueClicked);
         close();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var dsp:MovieClip = null;
         var chestIdleTween:IManagedTween = null;
         switch(eventName)
         {
            case "CHEST_OPENED":
               this.mUpdateTimeToShowTip = false;
               dsp = (component as UIButtonRovio).mClip;
               (component as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
               chestIdleTween = this.mChestIdleTweens[component as UIButtonRovio];
               chestIdleTween.stop();
               chestIdleTween.dispose();
               this.showReward(dsp,dsp.scaleX,dsp.scaleY,this.mChestOpenedCounter);
               ++this.mChestOpenedCounter;
               if(this.mChestOpenedCounter == NUM_CHESTS_OPENED_TO_INFORM_SERVER)
               {
                  this.informServerOfRewardClaim();
               }
               if(this.mChestOpenedCounter == TOTAL_CHESTS)
               {
                  this.setNextState(STATE_DONE);
               }
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      private function showReward(chestMC:MovieClip, scaleX:Number, scaleY:Number, index:int) : void
      {
         var reward:Object = this.mRewards[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(mContainer.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:StarSplash = new StarSplash(800,800,0,0,StarSplash.STARSPLASH_BADGE,20,Star.TYPE_STAR);
         this.mStarSplashPool.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:IManagedTween = TweenManager.instance.createTween(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,TweenManager.EASING_QUAD_IN);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = AssetCache.getAssetFromCache("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseEnabled = rewardMC.mouseChildren = false;
         var rewardShowingTween:IManagedTween = TweenManager.instance.createTween(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:IManagedTween = TweenManager.instance.createTween(shineMC,{"rotation":0},{"rotation":-360},23,TweenManager.EASING_LINEAR);
         shineTween.stopOnComplete = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.mChestOpenedCounter % 3 + 1);
         SoundEngine.playSound(soundName,SoundEngine.UI_CHANNEL);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         mContainer.mClip.removeEventListener(Event.ENTER_FRAME,this.cbOnEnterFrame);
         this.cleanStarSplashes();
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      private function cleanStarSplashes() : void
      {
         var splash:StarSplash = null;
         for(var i:int = 0; i < this.mStarSplashPool.length; i++)
         {
            splash = this.mStarSplashPool[i];
            splash.clean();
         }
      }
      
      private function informServerOfRewardClaim() : void
      {
         this.mLoader = new ABFLoader();
         this.mLoader.addEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
         this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + TournamentModel.QUALIFIER_INTERRUPTED_BUNDLE));
      }
      
      private function onDataLoadError(event:IOErrorEvent) : void
      {
         this.mLoader.removeEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
      }
      
      private function onDataLoaded(event:Event) : void
      {
         var reward:Object = null;
         var ao:AnalyticsObject = null;
         var aoArray:Array = new Array();
         for each(reward in this.mRewards)
         {
            ao = new AnalyticsObject();
            ao.screen = ID;
            ao.amount = reward.q;
            if(reward.i == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
            {
               ao.currency = "IVC";
            }
            ao.itemType = reward.i;
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_QUALIFIER_REWARD;
            if(!aoArray)
            {
               aoArray = new Array();
            }
            aoArray.push(ao);
         }
         ItemsInventory.instance.injectInventoryUpdate(event.currentTarget.data,false,aoArray);
         this.mLoader.removeEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
      }
   }
}
