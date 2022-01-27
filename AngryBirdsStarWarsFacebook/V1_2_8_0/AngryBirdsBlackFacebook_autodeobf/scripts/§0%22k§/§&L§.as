package §0"k§
{
   public class §&L§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §&L§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §5"#§(param1:Object) : §&L§
      {
         if(param1.i)
         {
            return §,=§.§5"#§(param1);
         }
         if(param1.p != undefined)
         {
            return §-"[§.§5"#§(param1);
         }
         return §6!v§.§5"#§(param1);
      }
   }
}
