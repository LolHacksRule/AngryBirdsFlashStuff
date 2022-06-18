package §>#Y§
{
   public class §1N§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      public var profileImageURL:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §1N§(param1:String, param2:String = "", param3:String = "", param4:String = "")
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
         this.profileImageURL = param4;
      }
      
      public static function §5!I§(param1:Object, param2:Boolean, param3:Boolean) : §1N§
      {
         if(param1.i)
         {
            return §]!H§.§5!I§(param1);
         }
         if(param1.p != undefined || param2)
         {
            if(param3)
            {
               return §'#z§.§5!I§(param1);
            }
            return §!$$§.§5!I§(param1);
         }
         return §0!j§.§5!I§(param1);
      }
   }
}
