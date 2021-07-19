package §1!i§
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §6"#§
   {
       
      
      public function §6"#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §7s§(param1:TextField, param2:int, param3:int = -1, param4:int = -1) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param2);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:TextFormat;
         (_loc6_ = param1.getTextFormat()).size = _loc5_;
         if(!_loc8_)
         {
            param1.setTextFormat(_loc6_);
         }
         loop0:
         while(true)
         {
            §§push(param3);
            loop1:
            while(true)
            {
               §§push(-1);
               loop2:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_ || param3)
                  {
                     if(!§§pop())
                     {
                        §§push(param1.textWidth > param3);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(!(_loc8_ && param2))
                                    {
                                       §§push(param4);
                                       if(_loc8_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       §§push(-1);
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || §6"#§)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                                §§push(false);
                                                if(!(_loc8_ && param2))
                                                {
                                                   addr64:
                                                   if(!_loc7_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc8_)
                                                   {
                                                      addr77:
                                                      if(!(_loc7_ || param3))
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc8_ && param1)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr103:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            addr106:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && §6"#§))
                                                                     {
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           addr137:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        addr136:
                                                                     }
                                                                  }
                                                                  addr107:
                                                               }
                                                               else
                                                               {
                                                                  _loc6_.size = int(_loc6_.size) - 1;
                                                               }
                                                               param1.setTextFormat(_loc6_);
                                                               break loop6;
                                                            }
                                                         }
                                                         addr105:
                                                      }
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr106);
                                             }
                                             §§goto(addr107);
                                          }
                                          else
                                          {
                                             §§push(param1.textHeight > param4);
                                             if(_loc7_)
                                             {
                                                §§goto(addr77);
                                             }
                                          }
                                          §§goto(addr103);
                                       }
                                       §§goto(addr64);
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              §§goto(addr105);
                           }
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr137);
               }
            }
         }
      }
   }
}
