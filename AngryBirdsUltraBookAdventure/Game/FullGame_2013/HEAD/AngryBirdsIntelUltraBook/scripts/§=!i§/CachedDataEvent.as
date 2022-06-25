package §=!i§
{
   import flash.events.Event;
   
   public class CachedDataEvent extends Event
   {
      
      public static const DATA_LOADED:String = "dataLoaded";
      
      public static const TOTAL_ITEM_COUNT_UPDATED:String = "totalItemCountUpdated";
      
      {
         var DATA_LOADED:Boolean = false;
         var TOTAL_ITEM_COUNT_UPDATED:Boolean = true;
         if(DATA_LOADED)
         {
         }
         while(true)
         {
            DATA_LOADED = "dataLoaded";
            while(TOTAL_ITEM_COUNT_UPDATED)
            {
               while(!(DATA_LOADED && CachedDataEvent))
               {
                  TOTAL_ITEM_COUNT_UPDATED = "totalItemCountUpdated";
                  if(TOTAL_ITEM_COUNT_UPDATED)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public var index:int;
      
      public var count:int;
      
      public function CachedDataEvent(type:String, index:int = -1, count:int = -1, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!_loc6_)
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
                     while(_loc7_)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 super(type,bubbles,cancelable);
                                 while(_loc6_ && count)
                                 {
                                 }
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return new CachedDataEvent(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
