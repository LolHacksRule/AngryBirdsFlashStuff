package §4!C§
{
   import flash.net.URLRequest;
   
   public class §]!X§
   {
      
      private static var §%`§:String;
       
      
      public function §]!X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §#l§(param1:String) : URLRequest
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc4_)
         {
            §§push(§%`§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §%`§ = Math.round(Math.random() * int.MAX_VALUE).toString();
                     addr197:
                     while(true)
                     {
                     }
                  }
                  addr187:
               }
               while(true)
               {
                  §§push(param1);
                  loop4:
                  for(; §§pop() != null; while(_loc3_ || _loc3_)
                  {
                     §§goto(addr127);
                     §§push("?");
                  })
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           §§push(§%`§);
                           while(true)
                           {
                              §§push("-");
                              addr176:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr177:
                                 while(true)
                                 {
                                    §§push(§§pop() + new Date().time.toString());
                                    addr182:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr183:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr184:
                                          addr104:
                                          while(true)
                                          {
                                             §§push(param1);
                                             continue loop4;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          param1 = §§pop();
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             addr150:
                                             break loop4;
                                             addr150:
                                          }
                                          if(_loc3_)
                                          {
                                             break loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr49:
                              if(_loc4_ && §]!X§)
                              {
                                 continue;
                              }
                              §§push("&hash=");
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop().indexOf(§§pop()) < 0)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr140:
                                                   while(true)
                                                   {
                                                      §§push("?hash=");
                                                      addr141:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr142:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        break loop12;
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                               }
                                                               addr145:
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr139:
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr150);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc3_ || param1)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr49);
                                             }
                                             else
                                             {
                                                §§goto(addr140);
                                             }
                                          }
                                          addr100:
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§goto(addr183);
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                    param1 = §§pop();
                                    §§goto(addr150);
                                    addr127:
                                 }
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_)
                                       {
                                          addr75:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§goto(addr100);
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                §§goto(addr142);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr75);
                                 }
                                 else
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr141);
                           }
                        }
                        else
                        {
                           §§goto(addr187);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr184);
                  }
                  return new URLRequest(param1);
               }
            }
         }
         §§goto(addr139);
      }
   }
}
