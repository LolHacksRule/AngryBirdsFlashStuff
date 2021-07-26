package §!#C§
{
   public class §0#;§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      public var profileImageURL:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §0#;§(param1:String, param2:String = "", param3:String = "", param4:String = "")
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
         this.profileImageURL = param4;
      }
      
      public static function §5+§(param1:Object, param2:Boolean, param3:Boolean) : §0#;§
      {
         if(param1.i)
         {
            return §#"E§.§5+§(param1);
         }
         if(param1.p != undefined || param2)
         {
            if(param3)
            {
               return §;s§.§5+§(param1);
            }
            return §;!$§.§5+§(param1);
         }
         return §8##§.§5+§(param1);
      }
   }
}
