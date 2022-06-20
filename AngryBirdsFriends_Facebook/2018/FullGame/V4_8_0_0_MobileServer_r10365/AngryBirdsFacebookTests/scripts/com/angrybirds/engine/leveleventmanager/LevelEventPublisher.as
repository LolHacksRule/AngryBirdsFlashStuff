package com.angrybirds.engine.leveleventmanager
{
   import flash.utils.Dictionary;
   
   public class LevelEventPublisher
   {
       
      
      private var eventNameToObservers:Dictionary;
      
      public function LevelEventPublisher()
      {
         this.eventNameToObservers = new Dictionary();
         super();
      }
      
      public function register(observer:ILevelEventSubscriber, eventName:String) : void
      {
         var observers:Vector.<ILevelEventSubscriber> = this.eventNameToObservers[eventName];
         if(observers == null)
         {
            observers = new Vector.<ILevelEventSubscriber>();
         }
         if(observers.indexOf(observer) == -1)
         {
            observers.push(observer);
         }
         this.eventNameToObservers[eventName] = observers;
      }
      
      public function deRegister(observer:ILevelEventSubscriber, eventName:String) : void
      {
         var observers:Vector.<ILevelEventSubscriber> = this.eventNameToObservers[eventName];
         if(observers)
         {
            if(observers.indexOf(observer) != -1)
            {
               observers.splice(observers.indexOf(observer),1);
            }
         }
         this.eventNameToObservers[eventName] = observers;
      }
      
      public function notifyAll(event:LevelEvent) : void
      {
         var tempObservers:Vector.<ILevelEventSubscriber> = null;
         var i:int = 0;
         var subscriber:ILevelEventSubscriber = null;
         var observers:Vector.<ILevelEventSubscriber> = this.eventNameToObservers[event.eventName];
         if(observers)
         {
            tempObservers = observers.concat();
            for(i = 0; i < tempObservers.length; i++)
            {
               subscriber = tempObservers[i];
               if(subscriber)
               {
                  subscriber.onLevelEvent(event);
               }
            }
         }
      }
   }
}
