package §4[§
{
   public class §?O§
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function §?O§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            while(true)
            {
               this.userId = param1;
               while(!(_loc4_ && param2))
               {
                  this.userName = param2;
                  do
                  {
                     this.avatarString = param3;
                  }
                  while(_loc4_ && this);
                  
                  if(_loc4_ && param3)
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §+q§(param1:Object) : §?O§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §?O§)
         {
            if(!param1.i)
            {
               while(param1.p != undefined)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        return §-w§.§+q§(param1);
                     }
                     addr70:
                     return §3!G§.§+q§(param1);
                  }
               }
               return §>!P§.§+q§(param1);
            }
         }
         §§goto(addr70);
      }
   }
}
