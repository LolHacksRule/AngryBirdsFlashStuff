package com.angrybirds.tournamentEvents.scoreMultiplier
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ScoreMultiplierManager extends EventDispatcher implements IEventManager
   {
      
      public static const EVENT_ID:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var mScoreMultiplierActivated:Boolean;
      
      private var mScoreMultiplierValue:Number;
      
      private var mScoreMultiplierBird:String;
      
      private var mIconBlinkingStarted:Boolean;
      
      private var mEventButton:UIComponentRovio;
      
      public function ScoreMultiplierManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
         this.mScoreMultiplierBird = "BIRD_YELLOW";
         this.mScoreMultiplierValue = 1.5;
      }
      
      public function formatEvent() : void
      {
         this.mScoreMultiplierActivated = false;
         this.mScoreMultiplierBird = "";
         this.mScoreMultiplierValue = 0;
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         return this.openEventPopup();
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_ScoreMultiplier");
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function updateEventButtonState() : void
      {
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "SCORE_MULTIPLIER":
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
      
      public function getScoreMultiplierValue() : Number
      {
         return this.mScoreMultiplierValue;
      }
      
      public function getScoreMultiplierBird() : String
      {
         return this.mScoreMultiplierBird;
      }
      
      public function activateScoreMultiplier(value:Boolean) : void
      {
         this.mScoreMultiplierActivated = value;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get scoreMultiplierActivated() : Boolean
      {
         return this.mScoreMultiplierActivated;
      }
      
      public function setIconBlinking(value:Boolean) : void
      {
         this.mIconBlinkingStarted = value;
      }
      
      public function getIconBlinking() : Boolean
      {
         return this.mIconBlinkingStarted;
      }
   }
}
