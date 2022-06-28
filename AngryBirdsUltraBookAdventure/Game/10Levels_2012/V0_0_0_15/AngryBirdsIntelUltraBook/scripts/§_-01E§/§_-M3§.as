package §_-01E§
{
   public class §_-M3§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §_-M3§(param1:String, param2:String, param3:String)
      {
         super();
         this.userId = param1;
         this.userName = param2;
         this.avatarString = param3;
      }
      
      public static function §_-Ej§(param1:Object) : §_-M3§
      {
         if(param1.i)
         {
            return §_-5z§.§_-Ej§(param1);
         }
         if(param1.p != undefined)
         {
            return §_-5b§.§_-Ej§(param1);
         }
         return §_-00n§.§_-Ej§(param1);
      }
   }
}
