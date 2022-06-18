package §]"'§
{
   public class §8!a§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      public var profileImageURL:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §8!a§(param1:String, param2:String = "", param3:String = "", param4:String = "")
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
         this.profileImageURL = param4;
      }
      
      public static function §]"B§(param1:Object, param2:Boolean, param3:Boolean) : §8!a§
      {
         if(param1.i)
         {
            return §`!V§.§]"B§(param1);
         }
         if(param1.p != undefined || param2)
         {
            if(param3)
            {
               return §=!h§.§]"B§(param1);
            }
            return §+!!§.§]"B§(param1);
         }
         return §`#o§.§]"B§(param1);
      }
   }
}
