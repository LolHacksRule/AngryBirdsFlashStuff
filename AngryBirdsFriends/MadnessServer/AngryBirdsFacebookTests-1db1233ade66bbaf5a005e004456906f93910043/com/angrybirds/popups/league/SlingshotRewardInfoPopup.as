package com.angrybirds.popups.league
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.MouseEvent;
   
   public class SlingshotRewardInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const TYPE_REWARD_CLAIMED:int = 0;
      
      public static const TYPE_SLINGSHOT_INFO:int = 1;
      
      public static const DATA_INDEX_SLINGSHOT_ID:int = 0;
      
      public static const DATA_INDEX_TITLE:int = 1;
      
      public static const DATA_INDEX_TEXT:int = 2;
      
      public static const REWARD_SLINGSHOT_DATA:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var mSlingshotId:String = "";
      
      private var mPopupType:int;
      
      public function SlingshotRewardInfoPopup(slingshotId:String, popupType:int)
      {
         this.mSlingshotId = slingshotId;
         this.mPopupType = popupType;
         super(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,ViewXMLLibrary.mLibrary.Popups.Popup_SlingshotRewardPopup[0],ID + slingshotId);
      }
      
      public static function isRewardSlingshot(slingshotID:String) : Boolean
      {
         var rewardSlingshotData:Array = null;
         for each(rewardSlingshotData in REWARD_SLINGSHOT_DATA)
         {
            if(rewardSlingshotData[DATA_INDEX_SLINGSHOT_ID] == slingshotID)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var rewardIndex:int = 0;
         var slingshotDef:SlingShotDefinition = null;
         super.init();
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onClose);
         if(this.mPopupType == TYPE_REWARD_CLAIMED)
         {
            for(rewardIndex = 0; rewardIndex < REWARD_SLINGSHOT_DATA.length; rewardIndex++)
            {
               if(REWARD_SLINGSHOT_DATA[rewardIndex][DATA_INDEX_SLINGSHOT_ID] == this.mSlingshotId)
               {
                  (mContainer.getItemByName("TextField_Title") as UITextFieldRovio).setText(REWARD_SLINGSHOT_DATA[rewardIndex][DATA_INDEX_TITLE]);
                  (mContainer.getItemByName("TextField_Text") as UITextFieldRovio).setText(REWARD_SLINGSHOT_DATA[rewardIndex][DATA_INDEX_TEXT]);
               }
            }
         }
         else
         {
            slingshotDef = SlingShotType.getSlingShotByID(this.mSlingshotId);
            if(!slingshotDef)
            {
               close();
               return;
            }
            (mContainer.getItemByName("TextField_Title") as UITextFieldRovio).setText(slingshotDef.prettyName);
            (mContainer.getItemByName("TextField_Text") as UITextFieldRovio).setText(slingshotDef.description);
         }
         (mContainer.getItemByName("MovieClip_ImageRef") as UIMovieClipRovio).mClip.gotoAndStop(this.mSlingshotId);
      }
      
      private function onClose(event:MouseEvent) : void
      {
         super.close();
      }
   }
}
