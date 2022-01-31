package com.angrybirds.tournamentEvents.extraPowerup
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class ExtraPowerupManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "EXTRA_POWER_UP";
       
      
      private var mEventButton:UIComponentRovio;
      
      private var mItemsCollected:int;
      
      private var mWinnerData:Object;
      
      private var mLoserData:Object;
      
      public function ExtraPowerupManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
         this.mItemsCollected = data.ic;
         this.mWinnerData = data.or[!!data.or[0].winner ? 0 : 1];
         this.mLoserData = data.or[!!data.or[0].winner ? 1 : 0];
      }
      
      public function formatEvent() : void
      {
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         return this.openEventPopup();
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_ItemsCollection");
         this.mEventButton.setVisibility(false);
      }
      
      public function updateEventButtonState() : void
      {
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "ITEMS_COLLECTION":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.openEventPopup();
         }
      }
      
      public function updateEventButtonUIScale(x:Number, y:Number) : void
      {
         if(this.mEventButton != null)
         {
            this.mEventButton.x = x;
            this.mEventButton.y = y;
            if(this.mEventButton.visible)
            {
               if(!TournamentEventManager.instance.isEventActivated())
               {
                  this.mEventButton.setVisibility(false);
               }
            }
            else if(TournamentEventManager.instance.isEventActivated())
            {
               this.mEventButton.setVisibility(true);
            }
         }
      }
      
      public function getItemsCollected() : int
      {
         return this.mItemsCollected;
      }
      
      public function getWinnerData() : Object
      {
         return this.mWinnerData;
      }
      
      public function getLoserData() : Object
      {
         return this.mLoserData;
      }
   }
}
