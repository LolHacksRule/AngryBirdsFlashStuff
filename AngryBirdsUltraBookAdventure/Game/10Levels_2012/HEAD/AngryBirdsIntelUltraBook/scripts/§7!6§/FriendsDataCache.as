package §7!6§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
       
      
      public function FriendsDataCache()
      {
         super();
      }
      
      public static function §]k§(dataObject:Object) : void
      {
         var object:Object = null;
         cache = new Dictionary();
         for each(object in dataObject.items)
         {
            cache[object.u] = CachedFriendDataVO.§#!_§(object);
         }
      }
      
      public static function §6!Z§(uid:String) : CachedFriendDataVO
      {
         return cache[uid];
      }
   }
}
