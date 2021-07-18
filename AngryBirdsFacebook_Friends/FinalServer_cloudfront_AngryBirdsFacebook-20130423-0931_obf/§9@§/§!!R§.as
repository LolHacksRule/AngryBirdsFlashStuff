package §9@§
{
   public class §!!R§
   {
      
      private static var §%!k§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%!k§ = {
               "EUR":"€",
               "USD":"$",
               "GBP":"£",
               "BRL":"R$",
               "JPY":"¥"
            };
         }
      }
      
      public function §!!R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §>"%§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§%!k§[param1]);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     addr30:
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(_loc4_ || _loc2_)
                        {
                        }
                        addr57:
                        var _loc2_:* = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 addr86:
                                 return "";
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || param1)
                                 {
                                    addr96:
                                    return §§pop();
                                 }
                              }
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr86);
                     }
                  }
               }
               §§push(§§pop());
            }
            §§goto(addr57);
         }
         §§goto(addr30);
      }
   }
}
