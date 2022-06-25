package §7!6§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
      
      {
         var cache:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
      }
      
      public function FriendsDataCache()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            if(_loc2_ || _loc1_)
            {
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §]k§(dataObject:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || dataObject)
         {
         }
         var object:Object = null;
         if(!(_loc5_ && object))
         {
            while(true)
            {
            }
            addr82:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  break;
                  addr50:
               }
               while(true)
               {
                  cache = new Dictionary();
                  continue loop1;
               }
               addr41:
               if(!(_loc6_ || FriendsDataCache))
               {
                  continue;
               }
               if(true)
               {
                  loop5:
                  for each(object in dataObject.items)
                  {
                     if(_loc5_ && dataObject)
                     {
                     }
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           cache[object.u] = CachedFriendDataVO.§#!_§(object);
                           while(_loc5_)
                           {
                           }
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        continue loop5;
                     }
                  }
                  if(!_loc6_)
                  {
                  }
                  return;
               }
               §§goto(addr50);
            }
            §§goto(addr82);
         }
      }
      
      public static function §6!Z§(uid:String) : CachedFriendDataVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!_loc3_)
            {
            }
         }
         return cache[uid];
      }
   }
}
