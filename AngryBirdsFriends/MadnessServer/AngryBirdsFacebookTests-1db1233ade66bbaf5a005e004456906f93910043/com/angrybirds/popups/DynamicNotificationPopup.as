package com.angrybirds.popups
{
   import com.angrybirds.notification.DynamicNotification;
   import com.angrybirds.notification.DynamicNotificationButton;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class DynamicNotificationPopup extends AbstractPopup
   {
       
      
      private var mDynamicNotification:DynamicNotification;
      
      private var mExternalImageLoader:Loader;
      
      private var mLayoutImagePositionerName:String;
      
      private var mLoadingImageName:String;
      
      public function DynamicNotificationPopup(layerIndex:int, priority:int, dynamicNotification:DynamicNotification)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.Popup_DynamicNotification[0],"Popup_DynamicNotification_" + dynamicNotification.id);
         this.mDynamicNotification = dynamicNotification;
      }
      
      override protected function init() : void
      {
         var button:DynamicNotificationButton = null;
         var imageRefClass:Class = null;
         var imageRefClip:MovieClip = null;
         var buttonGraphic:SimpleButton = null;
         super.init();
         if(this.mDynamicNotification.enableCloseButton)
         {
            mContainer.mClip.btnClose.visible = true;
            mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         }
         else
         {
            mContainer.mClip.btnClose.visible = false;
         }
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(!!this.mDynamicNotification.title ? this.mDynamicNotification.title : "");
         mContainer.getItemByName("TF_50_50").visible = false;
         mContainer.getItemByName("TF_50_50_Updown").visible = false;
         mContainer.getItemByName("TF_AllText").visible = false;
         mContainer.getItemByName("ImgPos_50_50").visible = false;
         mContainer.getItemByName("ImgPos_50_50_Updown").visible = false;
         mContainer.getItemByName("ImgPos_AllImage").visible = false;
         this.mLayoutImagePositionerName = null;
         switch(this.mDynamicNotification.layoutType)
         {
            case "FIFTY_FIFTY":
               mContainer.getItemByName("TF_50_50").visible = true;
               (mContainer.getItemByName("TF_50_50") as UITextFieldRovio).setText(!!this.mDynamicNotification.text ? this.mDynamicNotification.text : "");
               this.verticalAlignTextField((mContainer.getItemByName("TF_50_50") as UITextFieldRovio).mTextField,this.mDynamicNotification.fontSize);
               this.mLayoutImagePositionerName = "ImgPos_50_50";
               this.mLoadingImageName = "LoadingImage_50_50";
               break;
            case "FIFTY_FIFTY_UPDOWN":
               mContainer.getItemByName("TF_50_50_Updown").visible = true;
               (mContainer.getItemByName("TF_50_50_Updown") as UITextFieldRovio).setText(!!this.mDynamicNotification.text ? this.mDynamicNotification.text : "");
               this.verticalAlignTextField((mContainer.getItemByName("TF_50_50_Updown") as UITextFieldRovio).mTextField,this.mDynamicNotification.fontSize);
               this.mLayoutImagePositionerName = "ImgPos_50_50_Updown";
               this.mLoadingImageName = "LoadingImage_50_50_Updown";
               break;
            case "ALL_IMAGE":
               this.mLayoutImagePositionerName = "ImgPos_AllImage";
               this.mLoadingImageName = "LoadingImage_AllImage";
               break;
            case "ALL_TEXT":
               mContainer.getItemByName("TF_AllText").visible = true;
               (mContainer.getItemByName("TF_AllText") as UITextFieldRovio).setText(!!this.mDynamicNotification.text ? this.mDynamicNotification.text : "");
               this.verticalAlignTextField((mContainer.getItemByName("TF_AllText") as UITextFieldRovio).mTextField,this.mDynamicNotification.fontSize);
         }
         if(this.mLayoutImagePositionerName)
         {
            if(this.mDynamicNotification.imageURL)
            {
               mContainer.getItemByName(this.mLayoutImagePositionerName).visible = true;
               mContainer.getItemByName(this.mLoadingImageName).visible = true;
               this.mExternalImageLoader = new Loader();
               this.mExternalImageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onExternalImageLoaded);
               this.mExternalImageLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onExternalImageloadingError);
               this.mExternalImageLoader.load(new URLRequest(this.mDynamicNotification.imageURL),new LoaderContext(true));
            }
            else if(this.mDynamicNotification.imageRef)
            {
               mContainer.getItemByName(this.mLayoutImagePositionerName).visible = true;
               mContainer.getItemByName(this.mLoadingImageName).visible = false;
               imageRefClass = AssetCache.getAssetFromCache("MovieClip_ImageRef");
               imageRefClip = new imageRefClass();
               imageRefClip.gotoAndStop(this.mDynamicNotification.imageRef);
               (mContainer.getItemByName(this.mLayoutImagePositionerName) as UIMovieClipRovio).mClip.addChild(imageRefClip);
            }
            else
            {
               mContainer.getItemByName(this.mLoadingImageName).visible = false;
               mContainer.getItemByName(this.mLayoutImagePositionerName).visible = false;
            }
         }
         var buttonX:Number = -(this.mDynamicNotification.getButtonsWidth() >> 1);
         for each(button in this.mDynamicNotification.buttons)
         {
            button.setClosePopupID(mId);
            buttonGraphic = button.getButtonGraphic();
            buttonGraphic.x = buttonX;
            (mContainer.getItemByName("ButtonsPositioner") as UIMovieClipRovio).mClip.addChild(buttonGraphic);
            buttonX += button.getButtonWidth();
         }
      }
      
      private function onExternalImageLoaded(e:Event) : void
      {
         if(!mContainer)
         {
            if(this.mExternalImageLoader)
            {
               this.mExternalImageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onExternalImageLoaded);
               this.mExternalImageLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onExternalImageloadingError);
               this.mExternalImageLoader = null;
            }
            return;
         }
         var uiImage:UIComponentRovio = mContainer.getItemByName(this.mLoadingImageName);
         if(uiImage)
         {
            uiImage.visible = false;
         }
         this.mExternalImageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onExternalImageLoaded);
         this.mExternalImageLoader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onExternalImageloadingError);
         var loadedImage:Bitmap = Bitmap(this.mExternalImageLoader.content);
         loadedImage.x = -(loadedImage.width >> 1);
         loadedImage.y = -(loadedImage.height >> 1);
         (mContainer.getItemByName(this.mLayoutImagePositionerName) as UIMovieClipRovio).mClip.addChild(loadedImage);
         this.mExternalImageLoader = null;
      }
      
      private function onExternalImageloadingError(e:IOErrorEvent) : void
      {
         this.mExternalImageLoader = null;
         mContainer.getItemByName(this.mLoadingImageName).visible = false;
         mContainer.getItemByName(this.mLayoutImagePositionerName).visible = false;
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         FacebookAnalyticsCollector.getInstance().trackDynamicPopupResult(this.mDynamicNotification.name,"X");
         close();
      }
      
      public function verticalAlignTextField(tf:TextField, fontSize:int) : void
      {
         var textFormat:TextFormat = null;
         if(fontSize > 0)
         {
            textFormat = new TextFormat(null,fontSize,null);
            textFormat.align = "center";
            tf.setTextFormat(textFormat);
         }
         tf.y += Math.round((tf.height - tf.textHeight) / 2);
      }
   }
}
