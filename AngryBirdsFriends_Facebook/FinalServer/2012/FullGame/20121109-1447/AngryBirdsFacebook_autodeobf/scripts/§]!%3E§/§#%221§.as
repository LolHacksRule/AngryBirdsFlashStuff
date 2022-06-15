package §]!>§
{
   public class §#"1§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §#"1§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §!!t§(param1:Object) : §#"1§
      {
         if(param1.i)
         {
            return §;!e§.§!!t§(param1);
         }
         if(param1.p != undefined)
         {
            return §2!W§.§!!t§(param1);
         }
         return §>+§.§!!t§(param1);
      }
   }
}
