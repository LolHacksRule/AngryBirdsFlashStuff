package com.angrybirds.notification
{
   public class DynamicNotification
   {
       
      
      private var mId:String;
      
      private var mTitle:String;
      
      private var mImageRef:String;
      
      private var mImageURL:String;
      
      private var mAction:String;
      
      private var mText:String;
      
      private var mIsLeagueTutorial:Boolean;
      
      private var mName:String;
      
      private var mLayoutType:String;
      
      private var mEnableCloseButton:Boolean;
      
      private var mFontSize:int;
      
      private var mButtons:Vector.<DynamicNotificationButton>;
      
      private var mButtonsWidth:Number;
      
      public function DynamicNotification(id:String)
      {
         super();
         this.mId = id;
      }
      
      public function insertData(dataObject:Object) : void
      {
         var button:DynamicNotificationButton = null;
         this.mTitle = dataObject.title;
         this.mImageRef = dataObject.imageRef;
         this.mImageURL = dataObject.imageUrl;
         this.mAction = dataObject.action;
         this.mText = dataObject.text;
         this.mIsLeagueTutorial = dataObject.t;
         this.mName = !!dataObject.notificationName ? dataObject.notificationName : "";
         this.mLayoutType = dataObject.layoutType;
         this.mEnableCloseButton = dataObject.enabledCloseButton;
         this.mButtons = new Vector.<DynamicNotificationButton>();
         this.mButtonsWidth = 0;
         for(var i:int = 0; i < DynamicNotificationButton.BUTTON_SERVER_NAMES.length; i++)
         {
            if(dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "Enabled"] == true)
            {
               button = new DynamicNotificationButton("" + (i + 1),this.mName,dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "ActionType"],dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "Color"],dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "Text"],dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "Url"],dataObject[DynamicNotificationButton.BUTTON_SERVER_NAMES[i] + "Size"]);
               this.mButtonsWidth += button.getButtonWidth();
               this.mButtons.push(button);
            }
         }
         this.mFontSize = !!dataObject.fontSize ? int(dataObject.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.mAction;
      }
      
      public function get imageRef() : String
      {
         return this.mImageRef;
      }
      
      public function get imageURL() : String
      {
         return this.mImageURL;
      }
      
      public function get title() : String
      {
         return this.mTitle;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.mText;
      }
      
      public function get isLeagueTutorial() : Boolean
      {
         return this.mIsLeagueTutorial;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get layoutType() : String
      {
         return this.mLayoutType;
      }
      
      public function get enableCloseButton() : Boolean
      {
         return this.mEnableCloseButton;
      }
      
      public function get fontSize() : int
      {
         return this.mFontSize;
      }
      
      public function get buttons() : Vector.<DynamicNotificationButton>
      {
         return this.mButtons;
      }
      
      public function getButtonsWidth() : Number
      {
         return this.mButtonsWidth;
      }
   }
}
