package §,l§
{
   public class §#!>§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §#!>§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §?$§(param1:Object) : §#!>§
      {
         if(param1.i)
         {
            return §!"T§.§?$§(param1);
         }
         if(param1.p != undefined)
         {
            return §<"W§.§?$§(param1);
         }
         return §"6§.§?$§(param1);
      }
   }
}
