package §2S§
{
   import flash.events.Event;
   
   public class CachedDataEvent extends Event
   {
      
      public static const DATA_LOADED:String = "dataLoaded";
      
      public static const TOTAL_ITEM_COUNT_UPDATED:String = "totalItemCountUpdated";
      
      {
         var DATA_LOADED:Boolean = false;
         var TOTAL_ITEM_COUNT_UPDATED:Boolean = true;
         if(TOTAL_ITEM_COUNT_UPDATED)
         {
            loop0:
            while(true)
            {
               DATA_LOADED = "dataLoaded";
               while(true)
               {
                  loop2:
                  while(!(DATA_LOADED && CachedDataEvent))
                  {
                     while(true)
                     {
                        TOTAL_ITEM_COUNT_UPDATED = "totalItemCountUpdated";
                        if(!DATA_LOADED)
                        {
                           if(TOTAL_ITEM_COUNT_UPDATED)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public var index:int;
      
      public var count:int;
      
      public function CachedDataEvent(type:String, index:int = -1, count:int = -1, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc6_ || this)
         {
            while(true)
            {
               addr60:
               if(_loc6_ || this)
               {
                  addr67:
                  if(!(_loc6_ || index))
                  {
                     while(_loc6_)
                     {
                        §§goto(addr60);
                        §§goto(addr67);
                     }
                     loop5:
                     while(_loc6_ || type)
                     {
                        addr77:
                        if(_loc6_ || index)
                        {
                           super(type,bubbles,cancelable);
                           §§goto(addr58);
                        }
                        else
                        {
                           while(true)
                           {
                              addr114:
                              while(true)
                              {
                                 break loop5;
                              }
                              §§goto(addr77);
                           }
                           addr117:
                        }
                     }
                     addr58:
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           addr104:
                           if(_loc7_ && index)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr114);
                     }
                     addr70:
                     while(true)
                     {
                        §§goto(addr117);
                        §§goto(addr104);
                     }
                     addr120:
                  }
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return new CachedDataEvent(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
