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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.userId = param1;
               while(_loc5_ || param1)
               {
                  this.userName = param2;
                  while(_loc5_)
                  {
                     this.avatarString = param3;
                     if(!_loc4_)
                     {
                        return;
                        addr40:
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function §3!x§(param1:Object) : §9!d§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!param1.i)
            {
               while(param1.p != undefined)
               {
                  if(!(_loc3_ || §9!d§))
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr68);
                     }
                     else
                     {
                        addr76:
                     }
                     return §4W§.§3!x§(param1);
                  }
               }
               return §7!m§.§3!x§(param1);
            }
            §§goto(addr76);
         }
         addr68:
         return §-!?§.§3!x§(param1);
      }
   }
}
