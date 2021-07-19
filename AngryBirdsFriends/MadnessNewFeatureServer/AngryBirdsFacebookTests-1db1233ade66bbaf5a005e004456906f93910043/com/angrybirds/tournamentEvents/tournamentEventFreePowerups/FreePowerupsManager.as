package com.angrybirds.tournamentEvents.tournamentEventFreePowerups
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class FreePowerupsManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "FREE_POWER_UPS";
      
      private static const EVENT_TYPE_POTION_PARTY:int = 0;
       
      
      private var mEventType:int;
      
      private var mFreePowerups:Array;
      
      private var mEventButton:UIComponentRovio;
      
      public function FreePowerupsManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
         this.mFreePowerups = data.fp;
         this.mEventType = EVENT_TYPE_POTION_PARTY;
      }
      
      public function formatEvent() : void
      {
         this.mFreePowerups = new Array();
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function openEventPopup() : Boolean
      {
         switch(this.mEventType)
         {
            case EVENT_TYPE_POTION_PARTY:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         }
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         return this.openEventPopup();
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_PotionParty");
         this.mEventButton.setVisibility(false);
      }
      
      public function updateEventButtonState() : void
      {
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "POTION_PARTY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.openEventPopup();
         }
      }
      
      public function updateEventButtonUIScale(x:Number, y:Number, rightCornerX:Number) : void
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
   }
}
