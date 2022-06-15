package §,#,§
{
   public class §0!u§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      public var profileImageURL:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §0!u§(param1:String, param2:String = "", param3:String = "", param4:String = "")
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
         this.profileImageURL = param4;
      }
      
      public static function §"!U§(param1:Object, param2:Boolean, param3:Boolean) : §0!u§
      {
         if(param1.i)
         {
            return §-n§.§"!U§(param1);
         }
         if(param1.p != undefined || param2)
         {
            if(param3)
            {
               return §^#<§.§"!U§(param1);
            }
            return §[!V§.§"!U§(param1);
         }
         return §>#%§.§"!U§(param1);
      }
   }
}
