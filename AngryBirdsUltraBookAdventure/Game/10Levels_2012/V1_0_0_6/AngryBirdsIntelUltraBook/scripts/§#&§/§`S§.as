package §#&§
{
   public class §`S§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §`S§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §2!L§(param1:Object) : §`S§
      {
         if(param1.i)
         {
            return §]!B§.§2!L§(param1);
         }
         if(param1.p != undefined)
         {
            return §9!o§.§2!L§(param1);
         }
         return §35§.§2!L§(param1);
      }
   }
}
