package com.angrybirds.popups
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.utils.RovioStringUtil;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TextEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   
   public class RedeemCodePopup extends AbstractPopup
   {
      
      public static const ID:String = "RedeemCodePopup";
       
      
      private var mRedeemCodeLoader:ABFLoader;
      
      private const PATH_CODE_REDEEM:String = "/code/redeem?code=";
      
      private var mInputTextField:TextField;
      
      private var mErrorMessage:TextField;
      
      private const TYPE_CODE_HERE:String = "TYPE CODE HERE...";
      
      private var mInteractionEnabled:Boolean = true;
      
      public function RedeemCodePopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_RedeemCode[0],ID);
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.btnSend.addEventListener(MouseEvent.CLICK,this.onCodeRedeemClicked);
         this.mInputTextField = mContainer.mClip.codeTextField;
         this.mInputTextField.addEventListener(MouseEvent.CLICK,this.onTextFieldClick);
         this.mInputTextField.addEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         this.mInputTextField.addEventListener(Event.CHANGE,this.onChange);
         this.mErrorMessage = mContainer.mClip.errorMessage;
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onClose);
         mContainer.mClip.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         this.mInteractionEnabled = true;
      }
      
      protected function onChange(event:Event) : void
      {
         this.mInputTextField.text = this.mInputTextField.text.toUpperCase();
      }
      
      protected function onKeyUp(event:KeyboardEvent) : void
      {
         this.mInputTextField.text = this.mInputTextField.text.toUpperCase();
         if(event.keyCode == Keyboard.ENTER)
         {
            this.onCodeRedeemClicked(null);
         }
      }
      
      protected function onTextInput(event:TextEvent) : void
      {
         this.mInputTextField.text = this.mInputTextField.text.toUpperCase();
      }
      
      private function onClose(event:MouseEvent) : void
      {
         super.close();
      }
      
      protected function onTextFieldClick(event:MouseEvent) : void
      {
         if(this.mInputTextField.text == this.TYPE_CODE_HERE)
         {
            this.mInputTextField.text = "";
         }
      }
      
      protected function onCodeRedeemClicked(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         if(this.mInputTextField.text == null || RovioStringUtil.trim(this.mInputTextField.text," ").length == 0 || this.mInputTextField.text == this.TYPE_CODE_HERE)
         {
            this.mInputTextField.text = "";
            this.mErrorMessage.text = "";
            return;
         }
         this.mInputTextField.text = RovioStringUtil.trim(this.mInputTextField.text," ");
         if(this.mInputTextField.text.length > 23)
         {
            this.mInputTextField.text = this.mInputTextField.text.substr(0,24);
         }
         this.redeemCode(this.mInputTextField.text);
      }
      
      private function toggleButtons() : void
      {
         this.mInteractionEnabled = !this.mInteractionEnabled;
         mContainer.mClip.btnSend.mouseEnabled = this.mInteractionEnabled;
         mContainer.mClip.btnClose.mouseEnabled = this.mInteractionEnabled;
         this.mInputTextField.type = !!this.mInteractionEnabled ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
      }
      
      private function redeemCode(code:String) : void
      {
         this.toggleButtons();
         this.mErrorMessage.text = "";
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_CODE_REDEEM + encodeURI(code));
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mRedeemCodeLoader = new ABFLoader();
         this.mRedeemCodeLoader.addEventListener(Event.COMPLETE,this.onCodeRedeemed);
         this.mRedeemCodeLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mRedeemCodeLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mRedeemCodeLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onError);
         this.mRedeemCodeLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mRedeemCodeLoader.load(urlRequest);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         if(this.mRedeemCodeLoader)
         {
            this.mRedeemCodeLoader.removeEventListener(Event.COMPLETE,this.onCodeRedeemed);
            this.mRedeemCodeLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mRedeemCodeLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         mContainer.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.onClose);
         mContainer.mClip.btnSend.removeEventListener(MouseEvent.CLICK,this.onCodeRedeemClicked);
         this.mInputTextField.removeEventListener(MouseEvent.CLICK,this.onTextFieldClick);
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      protected function onCodeRedeemed(e:Event) : void
      {
         var amount:Number = NaN;
         var ao:AnalyticsObject = null;
         var unlockItem:String = null;
         var imageRef:String = null;
         var codeRedeemInfoPopup:CodeRedeemInfoPopup = null;
         var items:Number = NaN;
         var itemsPrev:Number = NaN;
         var powerupCount:int = 0;
         this.toggleButtons();
         if(e && e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            this.mErrorMessage.text = "";
            return;
         }
         if(e && e.currentTarget.data.errorCode && e.currentTarget.data.errorMessage)
         {
            this.mErrorMessage.text = e.currentTarget.data.errorMessage;
            return;
         }
         this.mErrorMessage.text = "";
         if(e.currentTarget.data.items || e.currentTarget.data.avatar)
         {
            this.mInputTextField.text = "";
            amount = 0;
            ao = new AnalyticsObject();
            if(e.currentTarget.data.items && e.currentTarget.data.items.items[0].i == "VirtualCurrency")
            {
               items = e.currentTarget.data.items.items[0].q;
               itemsPrev = e.currentTarget.data.items.itemsPrev[0].q;
               amount = items - itemsPrev;
               ao.currency = "IVC";
               ao.iapType = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
            }
            else
            {
               powerupCount = ItemsInventory.instance.getCountForPowerup(e.currentTarget.data.items.items[0].i);
               amount = e.currentTarget.data.items.items[0].q - powerupCount;
            }
            ao.screen = ID;
            ao.amount = amount;
            ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_REDEEM_CODE;
            ao.itemType = e.currentTarget.data.items.items[0].i;
            FacebookAnalyticsCollector.getInstance().trackInventoryGainedEvent(false,ao.itemType,ao.amount,ao.gainType,ao.screen,ao.level,ao.itemType,ao.iapType,ao.paidAmount,ao.currency,ao.receiptId);
            unlockItem = amount.toString() + " x " + e.currentTarget.data.items.items[0].i;
            imageRef = e.currentTarget.data.imageRef;
            imageRef = imageRef == "COIN" ? "redeem_coin" : "redeem_gift";
            codeRedeemInfoPopup = new CodeRedeemInfoPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,e.currentTarget.data.message,imageRef);
            AngryBirdsBase.singleton.popupManager.openPopup(codeRedeemInfoPopup);
            ItemsInventory.instance.loadInventory();
         }
      }
      
      protected function onError(e:ErrorEvent) : void
      {
         this.toggleButtons();
         if(e && e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            this.mErrorMessage.text = "";
            return;
         }
      }
      
      protected function showErrorPopup(type:String) : void
      {
         var popup:ErrorPopup = new ErrorPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,type);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
   }
}
