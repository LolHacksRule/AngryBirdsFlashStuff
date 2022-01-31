package com.angrybirds.tournamentEvents
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.states.tournament.StateTournamentLevelSelection;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.doubleLeagueRating.DoubleLeagueRatingManager;
   import com.angrybirds.tournamentEvents.extraPowerup.ExtraPowerupManager;
   import com.angrybirds.tournamentEvents.scoreMultiplier.ScoreMultiplierManager;
   import com.angrybirds.tournamentEvents.tournamentEventFreePowerups.FreePowerupsManager;
   import com.angrybirds.tournamentEvents.tournamentEventStarCollection.StarCollectionManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class TournamentEventManager extends EventDispatcher
   {
      
      public static const EVENT_UPDATE_TOURNAMENT_EVENT:String = "UpdateTournamentEvent";
      
      private static var sInstance:TournamentEventManager;
       
      
      private var mEventEndsTimestamp:Number;
      
      private var mDataSet:Boolean;
      
      private var mUseTimer:Boolean;
      
      private var mActiveEventManager:IEventManager;
      
      public function TournamentEventManager(target:IEventDispatcher = null)
      {
         super(target);
      }
      
      public static function get instance() : TournamentEventManager
      {
         if(sInstance == null)
         {
            sInstance = new TournamentEventManager();
         }
         return sInstance;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      public function setData(data:Object) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.mActiveEventManager || this.mActiveEventManager.ID != data.eid)
         {
            this.formatEvent();
            switch(data.eid)
            {
               case StarCollectionManager.EVENT_ID:
                  this.mEventEndsTimestamp = data.endTime;
                  this.mUseTimer = true;
                  this.mActiveEventManager = new StarCollectionManager();
                  break;
               case FreePowerupsManager.EVENT_ID:
                  this.mActiveEventManager = new FreePowerupsManager();
                  break;
               case DoubleLeagueRatingManager.EVENT_ID:
                  this.mActiveEventManager = new DoubleLeagueRatingManager();
                  break;
               case ScoreMultiplierManager.EVENT_ID:
                  this.mActiveEventManager = new ScoreMultiplierManager();
                  break;
               case ExtraPowerupManager.EVENT_ID:
                  this.mEventEndsTimestamp = data.endTime;
                  this.mUseTimer = true;
                  this.mActiveEventManager = new ExtraPowerupManager();
                  break;
               case ItemsCollectionManager.EVENT_ID:
                  this.mEventEndsTimestamp = data.endTime;
                  this.mUseTimer = true;
                  this.mActiveEventManager = new ItemsCollectionManager();
                  break;
               default:
                  this.mActiveEventManager = null;
            }
            StateTournamentLevelSelection.resetActiveTournamentEventButton();
         }
         if(this.mActiveEventManager)
         {
            this.mActiveEventManager.setData(data);
         }
         this.mDataSet = true;
      }
      
      public function isEventActivated() : Boolean
      {
         return this.mActiveEventManager != null;
      }
      
      public function getActivatedEventManager() : IEventManager
      {
         return this.mActiveEventManager;
      }
      
      private function formatEvent() : void
      {
         this.mDataSet = false;
         this.mEventEndsTimestamp = 0;
         this.mUseTimer = false;
         if(this.mActiveEventManager)
         {
            this.mActiveEventManager.formatEvent();
            this.mActiveEventManager = null;
         }
      }
      
      public function getEventSecondsLeft() : Number
      {
         return this.getTimestampSecondsLeft(this.mEventEndsTimestamp);
      }
      
      public function getTimestampSecondsLeft(timeStamp:Number) : Number
      {
         if(timeStamp == 0)
         {
            return 0;
         }
         var now:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var seconds:Number = (timeStamp - now) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds == 0)
         {
            timeStamp = 0;
         }
         return seconds;
      }
      
      public function updateTournamentEventManager() : void
      {
         if(this.mUseTimer && this.mDataSet)
         {
            dispatchEvent(new Event(EVENT_UPDATE_TOURNAMENT_EVENT));
            if(this.getEventSecondsLeft() == 0)
            {
               this.mDataSet = false;
               this.formatEvent();
               StateTournamentLevelSelection.activateTournamentEventButtonStateCheck();
            }
         }
      }
      
      public function resetTournamentSpecificEvent() : void
      {
         if(this.mDataSet && !this.mUseTimer)
         {
            this.formatEvent();
            StateTournamentLevelSelection.activateTournamentEventButtonStateCheck();
         }
      }
      
      public function canUsePumpkinPowerup() : Boolean
      {
         return this.mActiveEventManager is ExtraPowerupManager && ItemsInventory.instance.getCountForPowerup(PowerupType.sPumpkinDrop.identifier) > 0;
      }
   }
}
