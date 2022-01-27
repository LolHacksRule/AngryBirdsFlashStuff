package §4H§
{
   public class §4!R§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §4!R§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §+!7§(param1:Object) : §4!R§
      {
         if(param1.i)
         {
            return §%Q§.§+!7§(param1);
         }
         if(param1.p != undefined)
         {
            return §9?§.§+!7§(param1);
         }
         return §4!k§.§+!7§(param1);
      }
   }
}
