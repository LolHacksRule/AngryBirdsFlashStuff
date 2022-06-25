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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.userId = param1;
               while(_loc4_ || param2)
               {
                  this.userName = param2;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.avatarString = param3;
                        if(!(_loc5_ && param1))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public static function §+!7§(param1:Object) : §4!R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1.i)
            {
               loop0:
               while(param1.p != undefined)
               {
                  if(_loc3_ || §4!R§)
                  {
                     return §9?§.§+!7§(param1);
                  }
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr71:
                     return §%Q§.§+!7§(param1);
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return §4!k§.§+!7§(param1);
            }
            §§goto(addr71);
         }
         §§goto(addr75);
      }
   }
}
