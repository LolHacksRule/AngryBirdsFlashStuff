package §3"H§
{
   import §+!4§.§&!"§;
   
   public class §"w§
   {
       
      
      public function §"w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §3#9§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop().toUpperCase());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(§&!"§[_loc2_])
            {
               if(!_loc3_)
               {
                  §§goto(addr56);
               }
            }
            return §&!"§.DEBUG;
         }
         addr56:
         return §&!"§[_loc2_];
      }
      
      public static function §[!3§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || §"w§)
               {
                  §§push(_loc2_);
                  if(_loc4_ || §"w§)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr280:
                              switch(§§pop())
                              {
                                 case 0:
                                    return "ALL";
                                 case 1:
                                    return "DEBUG";
                                 case 2:
                                    return "INFO";
                                 case 3:
                                    return "WARN";
                                 case 4:
                                    return "ERROR";
                                 case 5:
                                    return "FATAL";
                                 case 6:
                              }
                              return "NONE";
                              addr279:
                           }
                           else
                           {
                              addr236:
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr244:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr247:
                                       §§push(5);
                                       if(_loc3_)
                                       {
                                          addr259:
                                          if(§§pop() !== _loc2_)
                                          {
                                             §§goto(addr279);
                                             §§push(7);
                                          }
                                       }
                                       §§goto(addr279);
                                    }
                                    §§push(6);
                                    if(!_loc3_)
                                    {
                                       addr274:
                                    }
                                 }
                                 else
                                 {
                                    §§push(6);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr259);
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr259);
                           }
                        }
                        else
                        {
                           addr168:
                           §§push(2);
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr279);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc3_ && §"w§))
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                       §§goto(addr279);
                                    }
                                    else
                                    {
                                       addr180:
                                       §§push(_loc2_);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr188:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(3);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr224:
                                                §§push(4);
                                                if(!_loc3_)
                                                {
                                                   addr227:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(4);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_ || §"w§)
                                                {
                                                   addr216:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   else
                                                   {
                                                      §§push(5);
                                                      if(!(_loc3_ && §"w§))
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                }
                                                §§goto(addr244);
                                             }
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr247);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && §"w§))
                                    {
                                       addr160:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§goto(addr168);
                                          }
                                          else
                                          {
                                             §§goto(addr247);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr180);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr180);
                     }
                  }
                  §§goto(addr160);
               }
               §§goto(addr279);
            }
            §§goto(addr168);
         }
         §§goto(addr280);
      }
   }
}
