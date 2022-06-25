package §;L§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
      
      {
         var cache:Boolean = false;
         var _loc2_:Boolean = true;
         if(cache && FriendsDataCache)
         {
         }
      }
      
      public function FriendsDataCache()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               while(_loc2_ && this)
               {
               }
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public static function §2!$§(dataObject:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || FriendsDataCache)
         {
         }
         var object:Object = null;
         if(_loc5_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               addr77:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     cache = new Dictionary();
                     continue loop1;
                  }
               }
            }
            if(!(_loc5_ && dataObject))
            {
               if(false)
               {
                  §§goto(addr52);
               }
               var _loc3_:int = 0;
               var _loc4_:* = dataObject.items;
               addr140:
               for each(object in _loc4_)
               {
                  if(_loc6_ || dataObject)
                  {
                     addr127:
                     cache[object.u] = CachedFriendDataVO.§"!h§(object);
                     addr139:
                     if(!(_loc5_ && FriendsDataCache))
                     {
                        if(!_loc5_)
                        {
                           addr125:
                           if(false)
                           {
                              §§goto(addr127);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr139);
                     }
                     addr137:
                     §§goto(addr137);
                  }
                  §§goto(addr125);
               }
               if(_loc6_ || dataObject)
               {
               }
               return;
            }
         }
      }
      
      public static function §5K§(uid:String) : CachedFriendDataVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(!_loc2_)
            {
            }
         }
         return cache[uid];
      }
   }
}
