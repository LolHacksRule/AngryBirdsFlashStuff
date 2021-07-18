package §"k§
{
   public class §]"V§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §]"V§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.userId = param1;
               loop1:
               for(; _loc5_ || param2; while(!(_loc4_ && this))
               {
                  this.avatarString = param3;
                  if(_loc5_ || param1)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.userName = param2;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function §[!b§(param1:Object) : §]"V§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1.i)
            {
               loop0:
               while(param1.p != undefined)
               {
                  if(!_loc3_)
                  {
                     return §5"2§.§[!b§(param1);
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr75:
                     return §=#W§.§[!b§(param1);
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return §-!i§.§[!b§(param1);
            }
            §§goto(addr75);
         }
         §§goto(addr79);
      }
   }
}
