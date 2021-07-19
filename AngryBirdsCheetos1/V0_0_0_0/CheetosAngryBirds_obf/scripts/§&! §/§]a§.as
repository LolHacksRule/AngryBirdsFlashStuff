package §&! §
{
   import §,!D§.§5E§;
   
   public class §]a§
   {
       
      
      public function §]a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §"y§(param1:String) : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().replace(/^\}$/mg,"},"));
               while(true)
               {
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           break;
                        }
                        §§push(§§pop().replace(/,[ \t\n\r]+\}/gm,"}"));
                     }
                     loop3:
                     while(true)
                     {
                        param1 = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop().replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":"));
                           }
                           param1 = §§pop();
                           while(!_loc3_)
                           {
                              §§push("{" + param1);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() + "}");
                              }
                              param1 = §§pop();
                              if(_loc2_)
                              {
                                 if(_loc2_ || §]a§)
                                 {
                                    return §5E§.§,§(param1);
                                    addr49:
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
