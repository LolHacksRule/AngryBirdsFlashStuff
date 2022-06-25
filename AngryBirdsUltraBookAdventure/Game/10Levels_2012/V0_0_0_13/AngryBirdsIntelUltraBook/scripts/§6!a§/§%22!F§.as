package §6!a§
{
   import flash.net.URLRequest;
   
   public class §"!F§
   {
      
      private static var §9>§:String;
       
      
      public function §"!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §=i§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§9>§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §9>§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                  }
                  while(true)
                  {
                  }
                  addr203:
               }
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(§§pop() != null)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        while(true)
                        {
                           §§push(§9>§);
                           addr160:
                           while(true)
                           {
                              §§push("-");
                              addr161:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + new Date().time.toString());
                                 }
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr180:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr158:
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push("?");
                              if(_loc3_)
                              {
                                 if(§§pop().indexOf(§§pop()) >= 0)
                                 {
                                    §§push(param1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push("&hash=");
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_ || §"!F§)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr104:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        addr107:
                                                                        param1 = §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc4_ && §"!F§)
                                                                           {
                                                                              addr130:
                                                                              §§push(param1);
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           continue;
                                                                           break;
                                                                        }
                                                                        addr146:
                                                                        break loop3;
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                                  addr136:
                                                                  §§push(§§pop() + §§pop());
                                                                  continue loop0;
                                                               }
                                                               addr135:
                                                               §§goto(addr136);
                                                               §§push(_loc2_);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   addr134:
                                                   §§goto(addr135);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr180);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr134);
                           }
                           break;
                        }
                        §§goto(addr203);
                     }
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr134);
                     §§push("?hash=");
                  }
                  return new URLRequest(param1);
               }
            }
         }
         §§goto(addr158);
      }
   }
}
