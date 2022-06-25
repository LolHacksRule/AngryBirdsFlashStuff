package §^!7§
{
   import flash.net.URLVariables;
   
   public class MessageFactory
   {
       
      
      public function MessageFactory()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function §class§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!(_loc10_ && _loc3_))
         {
            if(isNaN(param1) == false)
            {
               if(!(_loc10_ && _loc3_))
               {
                  return Number(param1);
               }
               while(true)
               {
               }
               addr183:
            }
            loop0:
            while(true)
            {
               §§push(param1.toString() == "true");
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc11_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                              if(_loc11_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    if(_loc10_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc11_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(true);
                                             break loop4;
                                          }
                                          while(true)
                                          {
                                             addr71:
                                             if(!(_loc11_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(!_loc11_)
                                             {
                                                continue loop0;
                                             }
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(§9[§(param1 as String));
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      break loop4;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   loop8:
                                                   while(_loc11_ || _loc3_)
                                                   {
                                                      §§push(param1.toString().substr(1,param1.toString().length - 2));
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().substr(1,_loc2_.length - 2));
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr71);
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                return param1.toString();
                                                addr82:
                                             }
                                             _loc3_ = new Array();
                                             if(_loc11_ || _loc3_)
                                             {
                                                if(§9[§(_loc2_))
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      _loc3_.push(§class§(_loc2_));
                                                      if(_loc10_)
                                                      {
                                                         addr226:
                                                         _loc4_ = _loc2_.split("]},{[");
                                                         var _loc8_:int = 0;
                                                         var _loc9_:* = _loc4_;
                                                         addr453:
                                                         if(§§hasnext(_loc9_,_loc8_))
                                                         {
                                                            addr451:
                                                            _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                            addr416:
                                                            addr452:
                                                            §§push(_loc5_.substr(0,1) == "{");
                                                            if(_loc11_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     addr436:
                                                                     §§pop();
                                                                     addr437:
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop().substr(_loc5_.length - 1,1) == "}");
                                                                           if(_loc11_ || MessageFactory)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr402:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr404:
                                                                                 §§push("[" + _loc5_ + "]");
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    addr235:
                                                                                    _loc3_.push(§class§(_loc2_));
                                                                                    addr413:
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr260:
                                                                                                §§goto(addr235);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       addr372:
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          §§goto(addr260);
                                                                                       }
                                                                                       §§goto(addr413);
                                                                                    }
                                                                                    addr315:
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr235);
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    addr352:
                                                                                    §§push("[");
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr357:
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr360:
                                                                                          §§push("}]");
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr363:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr451);
                                                                              }
                                                                              §§push(_loc5_);
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                                          {
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          §§push("[{");
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc11_ || MessageFactory)
                                                                                                               {
                                                                                                                  §§push("]");
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     addr311:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        §§goto(addr315);
                                                                                                                     }
                                                                                                                     §§goto(addr363);
                                                                                                                  }
                                                                                                                  §§goto(addr360);
                                                                                                               }
                                                                                                               §§goto(addr404);
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   §§goto(addr404);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr404);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr451);
                                                                                 }
                                                                                 §§goto(addr404);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr436);
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr402);
                                                               }
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         addr224:
                                                         addr225:
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                else
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push("]},{[");
                                                      if(!(_loc10_ && MessageFactory))
                                                      {
                                                         if(§§pop().indexOf(§§pop()) > -1)
                                                         {
                                                            §§goto(addr224);
                                                         }
                                                         addr457:
                                                         §§push(§9[§(_loc2_));
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(§§pop())
                                                         {
                                                            _loc6_ = _loc2_.split("},{");
                                                            if(!(_loc10_ && MessageFactory))
                                                            {
                                                               _loc8_ = 0;
                                                               if(!_loc10_)
                                                               {
                                                                  _loc9_ = _loc6_;
                                                                  addr513:
                                                                  for each(_loc7_ in _loc9_)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc3_.push(§class§(_loc7_));
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         return _loc3_;
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr226);
                                          }
                                       }
                                       §§goto(addr82);
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      private static function §9[§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               addr109:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  §§goto(addr110);
               }
            }
            addr103:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop().toString().substr(-1,1) == "]");
               if(_loc3_ || _loc3_)
               {
                  if(!(_loc2_ && param1))
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     §§goto(addr109);
                  }
                  return §§pop();
               }
               §§goto(addr79);
            }
            else
            {
               §§goto(addr103);
            }
         }
      }
      
      public static function §2Q§(param1:Object) : Object
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Object = new Object();
         if(_loc12_ || MessageFactory)
         {
            if(param1 is URLVariables)
            {
               addr51:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_)
                  {
                     _loc2_[_loc4_] = §class§(_loc3_);
                  }
               }
               if(!(_loc12_ || MessageFactory))
               {
                  addr103:
                  _loc5_ = (param1 as String).split("&");
                  if(!_loc11_)
                  {
                     var _loc9_:int = 0;
                     if(_loc12_ || MessageFactory)
                     {
                        var _loc10_:* = _loc5_;
                        if(!(_loc11_ && param1))
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              loop1:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    while(true)
                                    {
                                       if(!_loc12_)
                                       {
                                          break;
                                          addr187:
                                       }
                                       _loc7_ = §§pop();
                                       while(!_loc11_)
                                       {
                                       }
                                       continue loop2;
                                       addr142:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                          if(_loc11_ && MessageFactory)
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          while(_loc12_)
                                          {
                                             _loc2_[_loc7_] = _loc8_;
                                             if(!_loc11_)
                                             {
                                                if(false)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr202:
                           return _loc2_;
                           addr201:
                        }
                        while(true)
                        {
                           §§goto(addr142);
                        }
                     }
                     §§goto(addr201);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr103);
            }
            §§goto(addr202);
         }
         §§goto(addr51);
      }
   }
}
