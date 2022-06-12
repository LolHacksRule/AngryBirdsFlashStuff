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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.userId = param1;
               addr61:
               if(!(_loc5_ && param2))
               {
                  this.avatarString = param3;
                  addr68:
                  if(!(_loc4_ || param2))
                  {
                     while(_loc4_)
                     {
                        §§goto(addr61);
                        §§goto(addr68);
                     }
                     while(true)
                     {
                        this.userName = param2;
                        §§goto(addr59);
                     }
                     addr59:
                     addr73:
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §!!t§(param1:Object) : §#"1§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1.i)
            {
               while(param1.p != undefined)
               {
                  if(_loc2_)
                  {
                     return §2!W§.§!!t§(param1);
                  }
                  if(_loc2_)
                  {
                     if(_loc2_ || param1)
                     {
                        addr71:
                        break;
                     }
                     addr75:
                     return §;!e§.§!!t§(param1);
                  }
               }
               return §>+§.§!!t§(param1);
            }
            §§goto(addr75);
         }
         §§goto(addr71);
      }
   }
}
