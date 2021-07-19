package com.angrybirds.data.events
{
   import flash.events.Event;
   
   public class InventoryUpdatedEvent extends Event
   {
       
      
      private var mUpdatedItems:Array;
      
      public function InventoryUpdatedEvent(type:String, updatedItems:Array = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mUpdatedItems = updatedItems;
      }
      
      public function get updatedItems() : Array
      {
         return this.mUpdatedItems;
      }
   }
}
