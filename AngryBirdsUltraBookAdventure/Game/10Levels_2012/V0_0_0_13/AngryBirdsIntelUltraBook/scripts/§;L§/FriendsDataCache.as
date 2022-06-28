package §;L§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
       
      
      public function FriendsDataCache()
      {
         super();
      }
      
      public static function §2!$§(dataObject:Object) : void
      {
         var object:Object = null;
         cache = new Dictionary();
         for each(object in dataObject.items)
         {
            cache[object.u] = CachedFriendDataVO.§"!h§(object);
         }
      }
      
      public static function §5K§(uid:String) : CachedFriendDataVO
      {
         return cache[uid];
      }
   }
}
