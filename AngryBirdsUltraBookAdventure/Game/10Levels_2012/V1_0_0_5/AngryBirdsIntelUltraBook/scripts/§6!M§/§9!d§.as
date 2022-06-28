package §6!M§
{
   public class §9!d§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §9!d§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §3!x§(param1:Object) : §9!d§
      {
         if(param1.i)
         {
            return §4W§.§3!x§(param1);
         }
         if(param1.p != undefined)
         {
            return §-!?§.§3!x§(param1);
         }
         return §7!m§.§3!x§(param1);
      }
   }
}
