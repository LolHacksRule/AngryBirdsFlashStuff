package §;L§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
      
      {
         var cache:Boolean = false;
         var _loc2_:Boolean = true;
         if(cache)
         {
         }
      }
      
      public function FriendsDataCache()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               while(!_loc2_)
               {
               }
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public static function §2!$§(dataObject:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && dataObject)
         {
         }
         var object:Object = null;
         if(_loc5_ || dataObject)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(_loc5_ || _loc3_)
               {
                  do
                  {
                     cache = new Dictionary();
                     while(_loc5_)
                     {
                        continue loop0;
                     }
                     continue loop2;
                  }
                  while(false);
                  
                  var _loc3_:int = 0;
                  var _loc4_:* = dataObject.items;
                  addr144:
                  for each(object in _loc4_)
                  {
                     if(_loc5_ || FriendsDataCache)
                     {
                        addr124:
                        cache[object.u] = CachedFriendDataVO.§"!h§(object);
                        if(!(_loc6_ && object))
                        {
                           if(!_loc6_)
                           {
                              if(false)
                              {
                                 §§goto(addr124);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr124);
                           addr141:
                        }
                        addr143:
                        §§goto(addr143);
                     }
                     §§goto(addr141);
                  }
                  if(_loc6_)
                  {
                  }
                  return;
               }
            }
         }
      }
      
      public static function §5K§(uid:String) : CachedFriendDataVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || FriendsDataCache)
         {
            while(!(_loc2_ || FriendsDataCache))
            {
            }
         }
         return cache[uid];
      }
   }
}
