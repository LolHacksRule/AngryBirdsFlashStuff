package §+p§
{
   import flash.events.Event;
   
   public class CachedDataEvent extends Event
   {
      
      public static const DATA_LOADED:String = "dataLoaded";
      
      public static const TOTAL_ITEM_COUNT_UPDATED:String = "totalItemCountUpdated";
      
      {
         var DATA_LOADED:Boolean = false;
         var TOTAL_ITEM_COUNT_UPDATED:Boolean = true;
         if(!DATA_LOADED)
         {
            loop0:
            while(true)
            {
               DATA_LOADED = "dataLoaded";
               addr72:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      public var index:int;
      
      public var count:int;
      
      public function CachedDataEvent(type:String, index:int = -1, count:int = -1, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || count)
         {
         }
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     for(; _loc6_; if(!(_loc6_ || count))
                     {
                        continue;
                     },if(_loc7_)
                     {
                        continue loop1;
                     },addr81:,if(_loc7_)
                     {
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§goto(addr55);
                           §§goto(addr81);
                        }
                        continue;
                        addr53:
                     })
                     {
                        while(true)
                        {
                           continue loop0;
                           addr55:
                           if(_loc6_ || this)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc1_)
         {
         }
         return new CachedDataEvent(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
