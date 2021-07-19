package §,l§
{
   public class §#!>§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §#!>§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
         }
         while(true)
         {
            this.userId = param1;
            while(!_loc4_)
            {
               this.userName = param2;
               do
               {
                  this.avatarString = param3;
               }
               while(!(_loc5_ || param2));
               
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §?$§(param1:Object) : §#!>§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1.i)
            {
               while(param1.p != undefined)
               {
                  if(!_loc2_)
                  {
                     return §<"W§.§?$§(param1);
                  }
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr56:
                     return §!"T§.§?$§(param1);
                  }
               }
               return §"6§.§?$§(param1);
            }
         }
         §§goto(addr56);
      }
   }
}
