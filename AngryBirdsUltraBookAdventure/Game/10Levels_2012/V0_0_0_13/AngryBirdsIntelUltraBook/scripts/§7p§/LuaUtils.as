package §7p§
{
   public class LuaUtils
   {
       
      
      public function LuaUtils()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §<@§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
               while(true)
               {
                  param1 = §§pop();
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop().replace(/\-\-.*/g,""));
                        loop4:
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().replace(/\[\"(.*)\"\]/g,"$1"));
                                 addr217:
                                 while(_loc3_)
                                 {
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(§§pop().replace(/^\s*\}\s*$/mg,"},"));
                                          addr193:
                                          while(!_loc4_)
                                          {
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                §§push(param1);
                                                continue loop6;
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      private static function §<!^§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:* = null;
         var _loc18_:String = null;
         var _loc19_:* = null;
         var _loc3_:String = "{";
         var _loc4_:String = "}";
         var _loc5_:String = "[";
         var _loc6_:String = "]";
         var _loc7_:String = ":";
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:* = int(param1.indexOf(_loc3_));
         §§push(_loc11_);
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         while(true)
         {
            §§push(_loc11_);
            if(_loc21_)
            {
               §§push(0);
               if(_loc21_)
               {
                  if(!_loc20_)
                  {
                     if(_loc21_ || _loc3_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc21_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc20_)
                           {
                              if(!_loc20_)
                              {
                                 §§push(§§pop());
                                 if(_loc21_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!(_loc20_ && LuaUtils))
                                 {
                                    if(!(_loc20_ && _loc3_))
                                    {
                                       if(_loc21_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc21_)
                                             {
                                                addr133:
                                                if(_loc21_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         §§pop();
                                                         if(_loc21_)
                                                         {
                                                            if(!(_loc20_ && _loc3_))
                                                            {
                                                               if(_loc21_)
                                                               {
                                                                  if(!(_loc20_ && LuaUtils))
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(_loc21_ || param1)
                                                                                 {
                                                                                    addr654:
                                                                                    §§push(§§pop() >= 0);
                                                                                    if(_loc21_ || LuaUtils)
                                                                                    {
                                                                                       addr662:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr663:
                                                                                          addr664:
                                                                                          loop1:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             loop2:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr631:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                   addr632:
                                                                                                   loop60:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr633:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc21_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         addr642:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr644:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     addr610:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        addr611:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           addr612:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc20_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr643:
                                                                                                            }
                                                                                                            addr620:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_.push(_loc11_);
                                                                                                                     addr626:
                                                                                                                     addr607:
                                                                                                                     loop37:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        addr598:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr606:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 break loop37;
                                                                                                                              }
                                                                                                                              addr606:
                                                                                                                           }
                                                                                                                           §§goto(addr610);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr607:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr622:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(int(_loc8_.pop()));
                                                                                                                  if(!(_loc20_ && LuaUtils))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  addr672:
                                                                                                                  addr672:
                                                                                                                  addr673:
                                                                                                                  var _loc14_:int = §§pop();
                                                                                                                  addr672:
                                                                                                                  if(!(_loc20_ && LuaUtils))
                                                                                                                  {
                                                                                                                     addr682:
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        if(§§pop() >= _loc9_.length)
                                                                                                                        {
                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(param1);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                addr845:
                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                addr846:
                                                                                                                                                §§push(param1);
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr831:
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr837:
                                                                                                                                                      _loc18_ = §§pop().substring(§§pop() + §§pop(),_loc13_);
                                                                                                                                                      addr838:
                                                                                                                                                      addr834:
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         if(_loc21_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr797:
                                                                                                                                                                  §§push(§§pop().substring(§§pop()));
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                     addr800:
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc20_ && LuaUtils))
                                                                                                                                                                        {
                                                                                                                                                                           addr747:
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr758:
                                                                                                                                                                              param1 = §§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_;
                                                                                                                                                                              addr759:
                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                       if(_loc21_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr731:
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr734:
                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr682);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr800);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr860:
                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                          §§push(int(_loc10_[_loc14_]));
                                                                                                                                                                                          addr861:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr734);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                    addr841:
                                                                                                                                                                                    §§goto(addr845);
                                                                                                                                                                                    §§push(param1.substring(0,_loc11_));
                                                                                                                                                                                    addr853:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr731);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr838);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr841);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr853);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr846);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr845);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr834);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr831);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr845);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr837);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr841);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr837);
                                                                                                                                       }
                                                                                                                                       §§goto(addr797);
                                                                                                                                    }
                                                                                                                                    §§goto(addr747);
                                                                                                                                 }
                                                                                                                                 §§goto(addr758);
                                                                                                                              }
                                                                                                                              §§goto(addr861);
                                                                                                                           }
                                                                                                                           §§goto(addr734);
                                                                                                                        }
                                                                                                                        §§goto(addr860);
                                                                                                                        §§push(int(_loc9_[_loc14_]));
                                                                                                                     }
                                                                                                                     §§goto(addr734);
                                                                                                                  }
                                                                                                                  §§goto(addr841);
                                                                                                               }
                                                                                                               §§goto(addr672);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop60;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc21_ || param1)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr672);
                                                                                       }
                                                                                       addr662:
                                                                                    }
                                                                                    §§goto(addr663);
                                                                                 }
                                                                                 §§goto(addr672);
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                           §§goto(addr542);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr664);
                                                      }
                                                      §§goto(addr546);
                                                   }
                                                   §§goto(addr492);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr662);
                                          }
                                          §§goto(addr663);
                                       }
                                       §§goto(addr456);
                                    }
                                    §§goto(addr381);
                                 }
                                 §§goto(addr391);
                              }
                              §§goto(addr352);
                           }
                           §§goto(addr662);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr631);
                  }
                  §§goto(addr611);
               }
               §§goto(addr654);
            }
            §§goto(addr672);
         }
      }
   }
}
