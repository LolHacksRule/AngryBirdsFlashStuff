package com.angrybirds.notification
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.shoppopup.TabbedShopPopup;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class DynamicNotificationButton
   {
      
      public static const BUTTON_SERVER_NAMES:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var mButtonID:String;
      
      private var mDynamicNotificationName:String;
      
      private var mButtonActionType:String;
      
      private var mButtonColor:String;
      
      private var mButtonText:String;
      
      private var mButtonURL:String;
      
      private var mButtonSize:int;
      
      private var mButtonGraphic:SimpleButton;
      
      private var mClosePopupID:String;
      
      public function DynamicNotificationButton(id:String, dynamicNotificationName:String, actionType:String, color:String, text:String, url:String, size:int)
      {
         super();
         this.mButtonID = id;
         this.mDynamicNotificationName = dynamicNotificationName;
         this.mButtonActionType = actionType;
         this.mButtonColor = color;
         this.mButtonText = text != null ? text : "";
         this.mButtonURL = url;
         this.mButtonSize = size;
         this.mButtonGraphic = new AssetCache.getAssetFromCache("ButtonDynamicNotification" + color)();
         this.setButtonText(this.mButtonText);
         this.mButtonGraphic.scaleX = size / 100;
         this.mButtonGraphic.scaleY = size / 100;
         this.mButtonGraphic.addEventListener(MouseEvent.CLICK,this.onButtonClicked,false,0,true);
      }
      
      public function getButtonGraphic() : SimpleButton
      {
         return this.mButtonGraphic;
      }
      
      public function getButtonWidth() : Number
      {
         return this.mButtonGraphic.width;
      }
      
      protected function setButtonText(text:String) : void
      {
         var tf:TextField = null;
         var stateDoc:DisplayObjectContainer = this.mButtonGraphic.upState as DisplayObjectContainer;
         for(var i:int = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               tf = stateDoc.getChildAt(i) as TextField;
               break;
            }
         }
         tf.text = this.mButtonText;
         var maxWidth:Number = this.getButtonWidth() * 0.88;
         var currentFontSize:int = int(tf.getTextFormat().size);
         var modifiedFormat:TextFormat = tf.getTextFormat();
         var changeFormatToOtherStates:Boolean = false;
         while(tf.textWidth > maxWidth && currentFontSize > 0)
         {
            currentFontSize--;
            modifiedFormat.size = currentFontSize;
            tf.setTextFormat(modifiedFormat);
            changeFormatToOtherStates = true;
         }
         stateDoc = this.mButtonGraphic.overState as DisplayObjectContainer;
         for(i = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               tf = stateDoc.getChildAt(i) as TextField;
               tf.text = this.mButtonText;
               break;
            }
         }
         if(changeFormatToOtherStates)
         {
            tf.setTextFormat(modifiedFormat);
         }
         stateDoc = this.mButtonGraphic.downState as DisplayObjectContainer;
         for(i = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               tf = stateDoc.getChildAt(i) as TextField;
               tf.text = this.mButtonText;
               break;
            }
         }
         if(changeFormatToOtherStates)
         {
            tf.setTextFormat(modifiedFormat);
         }
      }
      
      protected function onButtonClicked(e:MouseEvent) : void
      {
         if(this.mClosePopupID)
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(this.mClosePopupID);
         }
         switch(this.mButtonActionType)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.mButtonURL),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         FacebookAnalyticsCollector.getInstance().trackDynamicPopupResult(this.mDynamicNotificationName,this.mButtonID);
      }
      
      public function setClosePopupID(value:String) : void
      {
         this.mClosePopupID = value;
      }
   }
}
