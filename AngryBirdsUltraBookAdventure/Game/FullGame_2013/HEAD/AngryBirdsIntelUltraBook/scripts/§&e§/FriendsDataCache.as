package §&e§
{
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var cache:Dictionary;
       
      
      public function FriendsDataCache()
      {
         super();
      }
      
      public static function §"!9§(dataObject:Object) : void
      {
         var object:Object = null;
         cache = new Dictionary();
         for each(object in dataObject.items)
         {
            cache[object.u] = CachedFriendDataVO.§<! §(object);
         }
      }
      
      public static function §&!0§(uid:String) : CachedFriendDataVO
      {
         return cache[uid];
      }
   }
}
