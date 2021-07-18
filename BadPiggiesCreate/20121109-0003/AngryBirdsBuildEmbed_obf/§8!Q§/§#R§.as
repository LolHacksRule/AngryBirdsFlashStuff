package §8!Q§
{
   import §]!Z§.§@!j§;
   
   public class §#R§
   {
       
      
      public function §#R§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §2J§(param1:String) : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(§§pop().replace(/^\}$/mg,"},"));
               if(!_loc3_)
               {
                  param1 = §§pop();
                  if(_loc2_)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr56:
                        §§push(§§pop().replace(/,[ \t\n\r]+\}/gm,"}"));
                        if(!_loc3_)
                        {
                           §§goto(addr65);
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr68);
               }
               §§goto(addr56);
            }
            addr65:
            param1 = §§pop();
            if(_loc2_)
            {
               addr68:
               §§push(param1);
               if(_loc2_)
               {
                  addr88:
                  param1 = §§pop().replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push("{");
                     if(_loc2_ || §#R§)
                     {
                        §§push(§§pop() + param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + "}");
                        }
                     }
                     param1 = §§pop();
                  }
               }
               §§goto(addr88);
            }
            return §@!j§.decode(param1);
         }
         §§goto(addr68);
      }
   }
}
