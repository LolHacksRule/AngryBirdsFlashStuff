package com.angrybirds.popups
{
   import com.angrybirds.popups.events.QuestionPopupEvent;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const IMAGE_ID_DEFAULT:int = 1;
       
      
      private var mTextTitle:String;
      
      private var mTextContent:String;
      
      private var mEventData:Object;
      
      private var mClientStorageName:String;
      
      private var mImageID:int;
      
      public function QuestionPopup(layerIndex:int, priority:int, title:String, content:String, imageID:int, eventData:Object, clientStorageName:String = null)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_QuestionPopup[0],ID);
         this.mTextTitle = title;
         this.mTextContent = content;
         this.mEventData = eventData;
         this.mImageID = imageID;
         this.mClientStorageName = clientStorageName;
      }
      
      override protected function init() : void
      {
         super.init();
         (mContainer.getItemByName("TextField_Title") as UITextFieldRovio).setText(this.mTextTitle);
         (mContainer.getItemByName("TextField_Text") as UITextFieldRovio).setText(this.mTextContent);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.onOKClick);
         (mContainer.getItemByName("Image") as UIMovieClipRovio).mClip.gotoAndStop(this.mImageID);
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         dispatchEvent(new QuestionPopupEvent(QuestionPopupEvent.EVENT_CANCEL,this.mEventData));
         close();
      }
      
      private function onOKClick(e:MouseEvent) : void
      {
         dispatchEvent(new QuestionPopupEvent(QuestionPopupEvent.EVENT_OK,this.mEventData));
         close();
      }
      
      public function getClientStorageName() : String
      {
         return this.mClientStorageName;
      }
   }
}
