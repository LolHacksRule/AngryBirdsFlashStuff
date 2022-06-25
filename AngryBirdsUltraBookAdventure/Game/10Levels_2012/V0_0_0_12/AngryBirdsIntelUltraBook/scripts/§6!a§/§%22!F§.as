package §6!a§
{
   import flash.net.URLRequest;
   
   public class §"!F§
   {
      
      private static var §9>§:String;
       
      
      public function §"!F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §=i§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_ || _loc3_)
         {
            §§push(§9>§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §9>§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                  }
                  while(true)
                  {
                     addr99:
                     if(_loc4_ || §"!F§)
                     {
                        §§goto(addr28);
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() != null)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§9>§);
                              loop5:
                              while(true)
                              {
                                 §§push("-");
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + new Date().time.toString());
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop9:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push("?");
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) < 0)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(param1);
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         §§push("&hash=");
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr64:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        §§push(§§pop());
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                        §§push(_loc2_);
                                                                     }
                                                                     addr129:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           param1 = §§pop();
                                                                           break loop12;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr64);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ || §"!F§))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            addr121:
                                                         }
                                                         §§goto(addr129);
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr121);
                                                      §§push("?hash=");
                                                   }
                                                   §§goto(addr134);
                                                }
                                                addr115:
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  addr28:
                  return new URLRequest(param1);
               }
            }
         }
         §§goto(addr115);
      }
   }
}
