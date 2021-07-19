package com.angrybirds.tournamentEvents.tournamentEventStarCollection
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.display.MovieClip;
   
   public class StarCollectionManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "STARS_COLLECTION";
       
      
      private var mTotalCollectibleInEvent:int;
      
      private var mTotalCollectibleInTournament:int;
      
      private var mCollectedInEvent:int;
      
      private var mCollectedInTournament:int;
      
      private var mStarsNeededForTheLastChest:int;
      
      private var mRewardChests:Vector.<StarCollectionRewardItem>;
      
      private var mClaimableEventPrizes:Array;
      
      private var mEventButton:UIComponentRovio;
      
      private var mEventButtonAnimation:MovieClip;
      
      public function StarCollectionManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
         var p:Object = null;
         this.formatEvent();
         if(!data)
         {
            return;
         }
         this.mTotalCollectibleInEvent = data.et;
         this.mCollectedInEvent = data.ec;
         this.mTotalCollectibleInTournament = data.ct;
         this.mCollectedInTournament = data.cc;
         this.mStarsNeededForTheLastChest = 0;
         for each(p in data.p)
         {
            this.mRewardChests.push(new StarCollectionRewardItem(p));
            if(p.c > this.mStarsNeededForTheLastChest)
            {
               this.mStarsNeededForTheLastChest = p.c;
            }
         }
         this.setClaimableRewards(data.cp);
         StateTournamentLevelSelection.activateTournamentEventButtonStateCheck();
      }
      
      public function formatEvent() : void
      {
         this.mTotalCollectibleInEvent = 0;
         this.mTotalCollectibleInTournament = 0;
         this.mCollectedInEvent = 0;
         this.mCollectedInTournament = 0;
         this.mClaimableEventPrizes = new Array();
         this.mRewardChests = new Vector.<StarCollectionRewardItem>();
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectionPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_StarCollector");
         this.mEventButtonAnimation = this.mEventButton.mClip.getChildByName("SC_button_nag_animation") as MovieClip;
      }
      
      public function updateEventButtonState() : void
      {
         if(this.mEventButton != null)
         {
            if(this.hasClaimableEventRewards())
            {
               this.mEventButtonAnimation.gotoAndPlay(1);
            }
            else
            {
               this.mEventButtonAnimation.gotoAndStop(1);
            }
         }
      }
      
      public function onUIInteraction(eventName:String) : void
      {
         switch(eventName)
         {
            case "STAR_COLLECTOR":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.openEventPopup();
               FacebookAnalyticsCollector.getInstance().trackTournamentEventButtonClick(FacebookAnalyticsCollector.TOURNAMENT_EVENT_BUTTON_CLICKED_FROM_LEVEL_SELECTION,this.hasClaimableEventRewards());
               break;
            case "STAR_COLLECTOR_MOUSE_OVER":
               this.mEventButtonAnimation.gotoAndStop(1);
               break;
            case "STAR_COLLECTOR_MOUSE_OUT":
               if(this.hasClaimableEventRewards())
               {
                  this.mEventButtonAnimation.gotoAndPlay(1);
               }
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
      
      public function get totalCollectibleInEvent() : int
      {
         return this.mTotalCollectibleInEvent;
      }
      
      public function get totalCollectibleInTournament() : int
      {
         return this.mTotalCollectibleInTournament;
      }
      
      public function get collectedInEvent() : int
      {
         return this.mCollectedInEvent;
      }
      
      public function get starsNeededForTheLestChest() : int
      {
         return this.mStarsNeededForTheLastChest;
      }
      
      public function increaseCollectedInEvent(value:int) : void
      {
         var nextRewardItem:StarCollectionRewardItem = this.getNextRewardItem();
         if(this.mCollectedInEvent < nextRewardItem.starsNeeded && this.mCollectedInEvent + value >= nextRewardItem.starsNeeded)
         {
            this.setClaimableReward(nextRewardItem.ID);
         }
         this.mCollectedInEvent += value;
      }
      
      public function get collectedInTournament() : int
      {
         return this.mCollectedInTournament;
      }
      
      public function getRewardItem(index:int) : StarCollectionRewardItem
      {
         if(this.mRewardChests && index < this.mRewardChests.length)
         {
            return this.mRewardChests[index];
         }
         return null;
      }
      
      public function getRewardItemWithID(ID:int) : StarCollectionRewardItem
      {
         var i:int = 0;
         if(this.mRewardChests)
         {
            for(i = 0; i < this.mRewardChests.length; i++)
            {
               if(this.mRewardChests[i].ID == ID)
               {
                  return this.mRewardChests[i];
               }
            }
         }
         return null;
      }
      
      public function setClaimableReward(rewardID:int) : void
      {
         if(this.mClaimableEventPrizes)
         {
            this.mClaimableEventPrizes.push("" + rewardID);
         }
         else
         {
            this.mClaimableEventPrizes = ["" + rewardID];
         }
      }
      
      public function setClaimableRewards(cp:Array) : void
      {
         this.mClaimableEventPrizes = cp;
      }
      
      public function hasClaimableEventRewards() : Boolean
      {
         return this.mClaimableEventPrizes && this.mClaimableEventPrizes.length > 0;
      }
      
      public function isRewardClaimable(rewardID:int) : Boolean
      {
         if(this.mClaimableEventPrizes && this.mClaimableEventPrizes.length > 0)
         {
            return this.mClaimableEventPrizes.indexOf("" + rewardID) > -1;
         }
         return false;
      }
      
      public function getNextRewardItem() : StarCollectionRewardItem
      {
         var nextRewardIndex:int = 0;
         for(var i:int = 0; i < this.mRewardChests.length; i++)
         {
            if(this.mCollectedInEvent < this.mRewardChests[i].starsNeeded)
            {
               nextRewardIndex = i;
               break;
            }
            if(this.mCollectedInEvent == this.mRewardChests[i].starsNeeded)
            {
               if(this.isRewardClaimable(this.mRewardChests[i].ID))
               {
                  nextRewardIndex = i;
                  break;
               }
            }
            else if(this.isRewardClaimable(this.mRewardChests[i].ID))
            {
               nextRewardIndex = i;
               break;
            }
         }
         return this.mRewardChests[nextRewardIndex];
      }
   }
}
