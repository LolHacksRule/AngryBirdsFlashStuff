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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.userId = param1;
               while(true)
               {
                  this.userName = param2;
                  while(_loc4_ || param3)
                  {
                     continue loop0;
                     this.avatarString = param3;
                     if(_loc4_ || this)
                     {
                        return;
                        addr59:
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function §_-Ej§(param1:Object) : §_-M3§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!param1.i)
            {
               while(param1.p != undefined)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return §_-5b§.§_-Ej§(param1);
                  }
                  if(_loc3_)
                  {
                     if(!(_loc2_ && §_-M3§))
                     {
                        addr77:
                        break;
                     }
                     addr81:
                     return §_-5z§.§_-Ej§(param1);
                  }
               }
               return §_-00n§.§_-Ej§(param1);
            }
            §§goto(addr81);
         }
         §§goto(addr77);
      }
   }
}
