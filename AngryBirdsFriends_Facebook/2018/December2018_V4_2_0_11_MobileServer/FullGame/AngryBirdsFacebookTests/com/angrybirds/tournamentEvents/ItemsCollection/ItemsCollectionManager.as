package com.angrybirds.tournamentEvents.ItemsCollection
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournamentEvents.IEventManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class ItemsCollectionManager implements IEventManager
   {
      
      public static const EVENT_ID:String = "ITEMS_COLLECTION";
      
      public static const COLLETED_ITEM_ID:String = "CollectedItem";
       
      
      private var mTotalCollectibleItems:int;
      
      private var mItemsCollected:int;
      
      private var mItemName:String;
      
      private var mSlotEndTimestamp:Number;
      
      private var mWinningOpponent:int;
      
      private var mCollectedItemsFromCurrentLevel:Vector.<FacebookLevelObjectCollectibleItem>;
      
      private var mEventButton:UIComponentRovio;
      
      public function ItemsCollectionManager()
      {
         super();
      }
      
      public function get ID() : String
      {
         return EVENT_ID;
      }
      
      public function setData(data:Object) : void
      {
         this.formatEvent();
         if(!data)
         {
            return;
         }
         this.mTotalCollectibleItems = data.ips;
         this.mItemsCollected = data.ic;
         this.mItemName = data.ci;
         this.mSlotEndTimestamp = data["set"];
         this.mWinningOpponent = data.wo;
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(true);
         }
         if(ItemsInventory.instance.getAmountOfItem(ItemsCollectionManager.COLLETED_ITEM_ID) >= 20)
         {
            StateTournamentLevelSelection.activateTournamentEventPopup();
         }
      }
      
      public function formatEvent() : void
      {
         this.mTotalCollectibleItems = 0;
         this.mItemsCollected = 0;
         this.mWinningOpponent = 0;
         if(this.mEventButton)
         {
            this.mEventButton.setVisibility(false);
         }
      }
      
      public function openEventPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function openInfoPopup() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(PopupLayerIndexFacebook.INFO,PopupPriorityType.DEFAULT));
         return true;
      }
      
      public function initEventButton(uiView:UIView) : void
      {
         this.mEventButton = uiView.getItemByName("Button_ItemsCollection");
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
      
      public function collectItem(item:FacebookLevelObjectCollectibleItem) : void
      {
         if(!this.mCollectedItemsFromCurrentLevel)
         {
            this.mCollectedItemsFromCurrentLevel = new Vector.<FacebookLevelObjectCollectibleItem>();
         }
         this.mCollectedItemsFromCurrentLevel.push(item);
      }
      
      public function getCollectedItemsCountFromCurrentLevel() : int
      {
         if(this.mCollectedItemsFromCurrentLevel)
         {
            return this.mCollectedItemsFromCurrentLevel.length;
         }
         return 0;
      }
      
      public function resetCollectedItemsCountFromCurrentLevel() : void
      {
         this.mCollectedItemsFromCurrentLevel = null;
      }
      
      public function hasCollectableItemsLeft() : Boolean
      {
         return this.mItemsCollected < this.mTotalCollectibleItems;
      }
      
      public function get itemsCollectedAmount() : int
      {
         return this.mItemsCollected;
      }
      
      public function get totalCollectibleItemsAmount() : int
      {
         return this.mTotalCollectibleItems;
      }
      
      public function getSlotSecondsLeft() : Number
      {
         return TournamentEventManager.instance.getTimestampSecondsLeft(this.mSlotEndTimestamp);
      }
      
      public function getCollectibleItemName() : String
      {
         return this.mItemName;
      }
      
      public function getWinningOpponent() : int
      {
         return this.mWinningOpponent;
      }
   }
}
