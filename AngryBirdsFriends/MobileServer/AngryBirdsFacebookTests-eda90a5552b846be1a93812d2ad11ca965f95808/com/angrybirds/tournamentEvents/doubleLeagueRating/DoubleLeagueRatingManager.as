package com.angrybirds.tournamentEvents.doubleLeagueRating
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class DoubleLeagueRatingManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "LEAGUE_RATING";
       
      
      private var mEventButton:UIComponentRovio;
      
      public function DoubleLeagueRatingManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
      }
      
      public function formatEvent() : void
      {
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new DoubleLeagueRatingInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         return this.openEventPopup();
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_DoubleLeagueRatings");
         this.mEventButton.setVisibility(false);
      }
      
      public function updateEventButtonState() : void
      {
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "DOUBLE_LEAGUE_RATINGS":
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
   }
}
