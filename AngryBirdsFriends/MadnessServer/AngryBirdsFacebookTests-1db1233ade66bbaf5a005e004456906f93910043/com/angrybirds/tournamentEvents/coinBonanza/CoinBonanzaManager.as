package com.angrybirds.tournamentEvents.coinBonanza
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class CoinBonanzaManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "BIRDCOIN_BONANZA";
       
      
      private var mEventButton:UIComponentRovio;
      
      public function CoinBonanzaManager()
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
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_CoinBonanza");
         this.mEventButton.setVisibility(false);
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new CoinBonanzaPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         return this.openEventPopup();
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "COIN_BONANZA":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.openEventPopup();
         }
      }
      
      public function updateEventButtonUIScale(x:Number, y:Number, rightCornerX:Number) : void
      {
         if(this.mEventButton != null)
         {
            this.mEventButton.x = rightCornerX;
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
      
      public function updateEventButtonState() : void
      {
      }
   }
}
