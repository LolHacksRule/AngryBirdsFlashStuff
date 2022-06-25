package §&e§
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
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            while(!(_loc1_ || _loc2_))
            {
            }
         }
         while(_loc2_);
         
      }
      
      public static function §"!9§(dataObject:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && _loc3_)
         {
         }
         var object:Object = null;
         if(_loc5_ || object)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        cache = new Dictionary();
                        loop4:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           for each(object in dataObject.items)
                           {
                              if(!(_loc6_ && object))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    addr114:
                                    while(true)
                                    {
                                       cache[object.u] = CachedFriendDataVO.§<! §(object);
                                       addr124:
                                       while(_loc5_)
                                       {
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           if(!_loc5_)
                           {
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §&!0§(uid:String) : CachedFriendDataVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!(_loc3_ && FriendsDataCache))
         {
            while(!(_loc2_ || _loc2_))
            {
            }
         }
         return cache[uid];
      }
   }
}
