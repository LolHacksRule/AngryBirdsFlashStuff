package §`!b§
{
   public class §"#6§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §"#6§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §5!G§(param1:Object) : §"#6§
      {
         if(param1.i)
         {
            return §-"P§.§5!G§(param1);
         }
         if(param1.p != undefined)
         {
            return §>"h§.§5!G§(param1);
         }
         return §?"S§.§5!G§(param1);
      }
   }
}
