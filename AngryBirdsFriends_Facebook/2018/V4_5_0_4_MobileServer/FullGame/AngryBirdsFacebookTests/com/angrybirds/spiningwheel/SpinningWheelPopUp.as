package com.angrybirds.spiningwheel
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.spiningwheel.data.DailyRewardVO;
   import com.angrybirds.spiningwheel.data.WheelItemVO;
   import com.angrybirds.spiningwheel.events.SpinningWheelEvent;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.IManagedTween;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.easing.Quadratic;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.effects.easing.Back;
   
   public class SpinningWheelPopUp extends AbstractPopup
   {
      
      public static const HEADER_TXT_SPIN_WHEEL:String = "Spin The Wheel!";
      
      public static const HEADER_TXT_REMOVE_SEGMENT:String = "Remove An Item!";
      
      public static const HEADER_TXT_TOMORROWS_WHEEL:String = "Come Back Tomorrow!";
      
      public static const BODY_TXT_EXCLUDE_ITEM:String = "Improve the next spin by removing your least favorite item.";
      
      public static const BODY_TXT_COME_BACK_TOMORROW:String = "Come back tomorrow for another spin.";
      
      public static const ID:String = "DailyRewardPopup";
      
      private static const SEPARATOR_CLASS_NAME:String = "Separater";
      
      private static const COINS_NAME_SMALL:String = "CoinsSmall";
      
      private static const COINS_NAME_MEDIUM:String = "CoinsMedium";
      
      private static const COINS_NAME_LARGE:String = "CoinsLarge";
      
      private static const CURRENCY_PACKAGE_NAME:Array = [COINS_NAME_SMALL,COINS_NAME_MEDIUM,COINS_NAME_LARGE];
       
      
      private var mSpinButton:UIButtonRovio;
      
      private var mSpinningWheel:SpinningWheel;
      
      private var mDailyRewardVO:DailyRewardVO;
      
      private var mQuantityToCoinPackage:Dictionary;
      
      private var mLoadingScreen:DisplayObject;
      
      private var mWheelMc:MovieClip;
      
      private var mCloseButton:UIButtonRovio;
      
      private var mHeaderText:TextField;
      
      private var mBodyText:TextField;
      
      private var mControllerDelegate:ISpinningWheelControllerDelegate;
      
      private var mItemWonTween:ISimpleTween;
      
      private var mWheelResetTween:ISimpleTween;
      
      public function SpinningWheelPopUp(dailyRewardVO:DailyRewardVO, delegate:ISpinningWheelControllerDelegate)
      {
         super(PopupLayerIndexFacebook.INFO,PopupPriorityType.TOP,ViewXMLLibrary.mLibrary.Views.PopupView_NewDailyReward[0],ID);
         this.mDailyRewardVO = dailyRewardVO;
         this.mControllerDelegate = delegate;
      }
      
      override protected function init() : void
      {
         super.init();
         this.mSpinButton = UIButtonRovio(mContainer.getItemByName("spinButton"));
         this.mCloseButton = UIButtonRovio(mContainer.getItemByName("btnClose"));
         this.mWheelMc = mContainer.mClip.spinningWheel;
         this.mLoadingScreen = mContainer.mClip.getChildByName("loadingScreen");
         this.showLoadingScreen(false);
         this.mHeaderText = TextField(mContainer.mClip.getChildByName("header_text"));
         this.mBodyText = TextField(mContainer.mClip.getChildByName("body_text"));
         var itemNamesAndQuantity:Vector.<Object> = this.getItemsforWheel();
         this.mSpinningWheel = new SpinningWheel(this.mWheelMc.wheel,this.mWheelMc.spike,SEPARATOR_CLASS_NAME,this.mWheelMc.width >> 1,itemNamesAndQuantity);
         this.updateState();
      }
      
      private function getItemsforWheel() : Vector.<Object>
      {
         var item:WheelItemVO = null;
         var wheelItems:Vector.<WheelItemVO> = this.mDailyRewardVO.getWheelItems();
         var itemNamesAndQuantity:Vector.<Object> = new Vector.<Object>();
         for each(item in wheelItems)
         {
            if(item.inventoryName == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
            {
               itemNamesAndQuantity.push({
                  "n":item.mType,
                  "q":item.quantity,
                  "isCoin":true
               });
            }
            else
            {
               itemNamesAndQuantity.push({
                  "n":item.inventoryName,
                  "q":item.quantity,
                  "isCoin":false
               });
            }
         }
         return itemNamesAndQuantity;
      }
      
      public function showLoadingScreen(b:Boolean) : void
      {
         this.mLoadingScreen.visible = b;
      }
      
      public function updateState() : void
      {
         var state:uint = this.mControllerDelegate.getState();
         switch(state)
         {
            case SpinningWheelController.STATE_DAILY_SPIN_COMPLETED:
               this.setCloseButtonEnabled(true);
               this.mSpinButton.setVisibility(false);
               this.setTexts(HEADER_TXT_TOMORROWS_WHEEL,BODY_TXT_COME_BACK_TOMORROW);
               this.mSpinningWheel.setSpikeVisibility(false);
               break;
            case SpinningWheelController.STATE_SPIN:
               this.mSpinButton.setVisibility(true);
               this.setCloseButtonEnabled(true);
               this.setTexts(HEADER_TXT_SPIN_WHEEL,"");
               this.mSpinningWheel.addEventListener(SpinningWheelEvent.EVENT_SPIN_COMPLETE,this.cbOnSpinComplete);
               this.mSpinningWheel.setSpikeVisibility(true);
         }
      }
      
      private function cbOnSpinComplete(event:SpinningWheelEvent) : void
      {
         var dimmerSprite:Sprite = null;
         var itemName:String = null;
         var dsp:DisplayObjectContainer = null;
         var rotatorDsp:DisplayObject = null;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 2,AngryBirdsBase.stageHeight * 2);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.mWheelMc.addChild(dimmerSprite);
         SoundEngine.playSound("league_promotion_diamond",SpinningWheel.SOUND_CHANNEL_SPINNING_WHEEL);
         var maxScale:Number = 4;
         itemName = String(event.data);
         var cls:Class = AssetCache.getAssetFromCache(itemName);
         dsp = new cls();
         dsp.x = this.mWheelMc.center.x;
         dsp.y = this.mWheelMc.center.y;
         dsp.name = itemName;
         var reward:WheelItemVO = this.mDailyRewardVO.getItemForID(this.mDailyRewardVO.getPredictedWheelRewardID());
         (dsp.getChildByName("count") as TextField).text = "x" + reward.quantity;
         dsp.scaleX = dsp.scaleY = 0;
         var GlowRotatorClass:Class = AssetCache.getAssetFromCache("RotatingShine");
         rotatorDsp = new GlowRotatorClass();
         rotatorDsp.scaleX = rotatorDsp.scaleY = 2;
         this.mWheelMc.addChild(rotatorDsp);
         this.mWheelMc.addChild(dsp);
         this.mItemWonTween = null;
         var tween1:IManagedTween = TweenManager.instance.createTween(dsp,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":dsp.scaleX,
            "scaleY":dsp.scaleY
         },0.5,Back.easeOut,1.5);
         var tween2:IManagedTween = TweenManager.instance.createTween(dsp,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.mItemWonTween = TweenManager.instance.createSequenceTween(tween1,tween2);
         this.mItemWonTween.onComplete = function():void
         {
            dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.REWARD_CLAIMED_FROM_WHEEL,itemName));
            if(dsp)
            {
               mWheelMc.removeChild(dsp);
            }
            if(rotatorDsp)
            {
               mWheelMc.removeChild(rotatorDsp);
            }
            mWheelMc.removeChild(dimmerSprite);
         };
         this.mItemWonTween.play();
         if(reward.inventoryName == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
         {
            (AngryBirdsBase.singleton.dataModel as DataModelFriends).virtualCurrencyModel.currencyAmountChanged(reward.quantity);
         }
      }
      
      private function setCloseButtonEnabled(val:Boolean) : void
      {
         this.mCloseButton.setEnabled(val);
         this.mCloseButton.mClip.alpha = !!val ? Number(1) : Number(0.5);
      }
      
      private function setTexts(header:String, body:String) : void
      {
         this.mHeaderText.text = header;
         this.mBodyText.text = body;
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SPIN_PRESSED":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.setCloseButtonEnabled(false);
               this.mSpinButton.setVisibility(false);
               this.mSpinningWheel.startSpin();
               dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.WHEEL_SPUN,null));
               break;
            case "CLOSE":
               this.mSpinningWheel.cancelSpin();
               FacebookAnalyticsCollector.getInstance().trackDailySpinUIAction(FacebookAnalyticsCollector.DAILY_SPIN_USER_ACTION_WINDOW_CLOSED);
         }
         super.onUIInteraction(eventIndex,eventName,component);
      }
      
      private function getNameForCurrencyPack(quantity:uint) : String
      {
         var item:WheelItemVO = null;
         var name:String = null;
         var wheelItems:Vector.<WheelItemVO> = this.mDailyRewardVO.getWheelItems();
         for each(item in wheelItems)
         {
            if(item.inventoryName == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID && item.quantity == quantity)
            {
               name = item.mType;
               break;
            }
         }
         return name;
      }
      
      public function stopWheelAt(name:String) : void
      {
         this.mSpinningWheel.stopWheelAt(name);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.mSpinningWheel.removeEventListener(SpinningWheelEvent.EVENT_SPIN_COMPLETE,this.cbOnSpinComplete);
         this.mSpinningWheel.dispose();
         this.mSpinningWheel = null;
         if(this.mItemWonTween)
         {
            this.mItemWonTween.stop();
            this.mItemWonTween = null;
         }
         if(this.mWheelResetTween)
         {
            this.mWheelResetTween.stop();
            this.mWheelResetTween = null;
         }
         this.mSpinButton = null;
         this.mDailyRewardVO = null;
         this.mQuantityToCoinPackage = null;
         this.mWheelMc = null;
      }
      
      public function showWheelResetAnim() : void
      {
         this.mWheelResetTween = TweenManager.instance.createTween(this.mWheelMc,{
            "scaleX":0,
            "scaleY":0
         },null,0.5,Quadratic.easeIn);
         this.mWheelResetTween.onComplete = function():void
         {
            mSpinningWheel.createWheel(getItemsforWheel());
            mWheelResetTween = TweenManager.instance.createTween(mWheelMc,{
               "scaleX":1,
               "scaleY":1
            },null,0.5,Quadratic.easeIn);
            mWheelResetTween.play();
         };
         this.mWheelResetTween.play();
      }
   }
}
