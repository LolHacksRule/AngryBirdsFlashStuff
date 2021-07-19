package com.angrybirds.data.level.item.behaviors
{
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.leveleventmanager.ILevelEventSubscriber;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   
   public class SpecialBehaviorManager
   {
       
      
      private var mBehaviors:Vector.<IItemSpecialBehavior>;
      
      public function SpecialBehaviorManager(levelMain:LevelMain)
      {
         var b:IItemSpecialBehavior = null;
         super();
         this.mBehaviors = SpecialBehaviorFactory.createBehaviors();
         for each(b in this.mBehaviors)
         {
            b.initialize(levelMain);
         }
      }
      
      public function performAction(eventName:String, type:String) : void
      {
         var b:IItemSpecialBehavior = null;
         for each(b in this.mBehaviors)
         {
            if(b.canHandleEvent(type))
            {
               b.performAction(eventName,type);
            }
         }
      }
      
      public function allBehaviors() : Array
      {
         var a:Array = [];
         for(var i:int = 0; i < this.mBehaviors.length; i++)
         {
            a.push(this.mBehaviors[i]);
         }
         return a;
      }
      
      public function update(dt:int) : void
      {
         var b:IItemSpecialBehavior = null;
         for each(b in this.mBehaviors)
         {
            b.update(dt);
         }
      }
      
      public function registerForEvent(type:String, event:String, levelEventPublisher:LevelEventPublisher) : Boolean
      {
         var b:IItemSpecialBehavior = null;
         for each(b in this.mBehaviors)
         {
            if(b.canHandleEvent(type))
            {
               levelEventPublisher.register(b as ILevelEventSubscriber,event);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var b:IItemSpecialBehavior = null;
         for each(b in this.mBehaviors)
         {
            b.clear();
         }
      }
   }
}
