package §_-IV§
{
   import §_-hq§.§_-AD§;
   
   public class §_-nb§
   {
       
      
      public function §_-nb§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-N§(param1:String) : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop().replace(/^\}$/mg,"},"));
               if(!_loc2_)
               {
                  param1 = §§pop();
                  if(!_loc2_)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(§§pop().replace(/,[ \t\n\r]+\}/gm,"}"));
                        if(_loc3_ || param1)
                        {
                        }
                        §§goto(addr78);
                     }
                     param1 = §§pop();
                     if(_loc3_)
                     {
                        addr68:
                        §§push(param1);
                        if(!_loc2_)
                        {
                           addr78:
                           param1 = §§pop();
                           if(_loc3_)
                           {
                              addr81:
                              §§push("{" + param1);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + "}");
                              }
                              param1 = §§pop();
                              §§goto(addr96);
                           }
                           addr96:
                           return §_-AD§.§_-Ae§(param1);
                           §§push(§§pop().replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":"));
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr81);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr68);
      }
   }
}
