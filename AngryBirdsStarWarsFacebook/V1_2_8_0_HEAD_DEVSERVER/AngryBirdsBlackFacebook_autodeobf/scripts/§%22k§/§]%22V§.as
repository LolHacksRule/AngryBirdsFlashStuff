package §"k§
{
   public class §]"V§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §]"V§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §[!b§(param1:Object) : §]"V§
      {
         if(param1.i)
         {
            return §=#W§.§[!b§(param1);
         }
         if(param1.p != undefined)
         {
            return §5"2§.§[!b§(param1);
         }
         return §-!i§.§[!b§(param1);
      }
   }
}
