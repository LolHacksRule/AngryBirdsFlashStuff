package §`!o§
{
   import flash.net.URLRequest;
   
   public class §<9§
   {
      
      private static var §8^§:String;
       
      
      public function §<9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §""I§(param1:String) : URLRequest
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_ || §<9§)
         {
            §§push(§8^§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && §<9§))
                  {
                     §8^§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                  }
                  while(true)
                  {
                  }
                  addr190:
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(_loc4_)
                        {
                           while(true)
                           {
                              §§push(§8^§);
                              addr149:
                              loop4:
                              for(; !_loc5_; while(true)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(§§pop().indexOf("?") >= 0)
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + "&hash=");
                                                if(!(_loc5_ && §<9§))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_ || §<9§)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr69:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            param1 = §§pop();
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(false)
                                                               {
                                                                  §§goto(addr89);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         addr120:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr123);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      addr119:
                                                      §§goto(addr120);
                                                      §§push(_loc3_);
                                                   }
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr69);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr69);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              },if(_loc4_)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    §§goto(addr119);
                                    §§push(§§pop() + "?hash=");
                                 }
                                 §§goto(addr131);
                              },§§goto(addr160))
                              {
                                 §§push(§§pop() + "-");
                                 while(true)
                                 {
                                    §§push(§§pop() + new Date().time.toString());
                                    addr158:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr159:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr160:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                continue loop4;
                                                addr89:
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                    addr123:
                                    if(_loc4_ || §<9§)
                                    {
                                       addr131:
                                       param1 = §§pop();
                                       addr132:
                                       if(_loc4_)
                                       {
                                          §§goto(addr191);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr190);
                     }
                     addr191:
                     return new URLRequest(param1);
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr148);
      }
   }
}
