package §4[§
{
   public class §?O§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §?O§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §+q§(param1:Object) : §?O§
      {
         if(param1.i)
         {
            return §3!G§.§+q§(param1);
         }
         if(param1.p != undefined)
         {
            return §-w§.§+q§(param1);
         }
         return §>!P§.§+q§(param1);
      }
   }
}
