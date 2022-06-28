package §;L§
{
   public class CachedFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function CachedFriendDataVO(uID:String, username:String)
      {
         super();
         this.userID = uID;
         this.name = username;
      }
      
      public static function §"!h§(obj:Object) : CachedFriendDataVO
      {
         return new CachedFriendDataVO(obj.u,obj.n);
      }
   }
}
