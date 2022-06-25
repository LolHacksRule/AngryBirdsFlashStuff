package §_-Hb§
{
   import flash.net.URLRequest;
   
   public class §_-P-§
   {
      
      private static var §_-Kq§:String;
       
      
      public function §_-P-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-0Ak§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_)
         {
            §§push(§_-Kq§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §_-Kq§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                     addr208:
                     while(true)
                     {
                     }
                  }
                  addr198:
               }
               addr157:
               while(true)
               {
                  §§push(param1);
                  while(§§pop() != null)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     param1 = §§pop();
                     if(!(_loc3_ && §_-P-§))
                     {
                        break;
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr23);
               }
               loop10:
               while(true)
               {
                  if(!(_loc4_ || _loc2_))
                  {
                     continue loop0;
                  }
                  _loc2_ = §§pop();
                  while(true)
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(param1);
                        loop12:
                        while(true)
                        {
                           §§push("?");
                           while(true)
                           {
                              if(§§pop().indexOf(§§pop()) < 0)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    addr138:
                                    §§push(param1 + "?hash=");
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr137:
                                       §§push(§§pop() + _loc2_);
                                    }
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       §§goto(addr141);
                                    }
                                    while(true)
                                    {
                                       §§push("-");
                                       break loop12;
                                    }
                                    addr162:
                                 }
                                 break;
                              }
                              §§push(param1);
                              if(_loc3_ && param1)
                              {
                                 continue loop12;
                              }
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop10;
                                    }
                                    §§push("&hash=");
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr70:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            continue loop12;
                                                         }
                                                         addr164:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + new Date().time.toString());
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr137);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr70);
                                          }
                                          break loop12;
                                       }
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr149);
                        }
                        while(true)
                        {
                           §§goto(addr164);
                        }
                     }
                     else
                     {
                        §§goto(addr198);
                     }
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        addr23:
                        return new URLRequest(param1);
                     }
                     while(true)
                     {
                        §§goto(addr162);
                     }
                     addr161:
                  }
                  §§goto(addr208);
               }
               §§goto(addr157);
            }
         }
         §§goto(addr161);
      }
   }
}
