package §^!U§
{
   public class §2!M§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §2!M§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §@6§(param1:Object) : §2!M§
      {
         if(param1.i)
         {
            return §"B§.§@6§(param1);
         }
         if(param1.p != undefined)
         {
            return §default§.§@6§(param1);
         }
         return §!8§.§@6§(param1);
      }
   }
}
