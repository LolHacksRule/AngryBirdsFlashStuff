package §+p§
{
   import flash.events.Event;
   
   public class CachedDataEvent extends Event
   {
      
      public static const DATA_LOADED:String = "dataLoaded";
      
      public static const TOTAL_ITEM_COUNT_UPDATED:String = "totalItemCountUpdated";
      
      {
         var DATA_LOADED:Boolean = true;
         var TOTAL_ITEM_COUNT_UPDATED:Boolean = false;
         if(!TOTAL_ITEM_COUNT_UPDATED)
         {
            do
            {
               DATA_LOADED = "dataLoaded";
               do
               {
                  do
                  {
                     TOTAL_ITEM_COUNT_UPDATED = "totalItemCountUpdated";
                  }
                  while(!DATA_LOADED);
                  
               }
               while(!(DATA_LOADED || CachedDataEvent));
               
            }
            while(TOTAL_ITEM_COUNT_UPDATED);
            
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
         if(_loc7_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              while(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    super(type,bubbles,cancelable);
                                    loop6:
                                    while(!(_loc6_ && type))
                                    {
                                       continue loop3;
                                       while(!_loc7_)
                                       {
                                          continue loop6;
                                       }
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return new CachedDataEvent(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
