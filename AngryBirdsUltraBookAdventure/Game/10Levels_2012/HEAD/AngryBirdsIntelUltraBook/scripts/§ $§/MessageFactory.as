package § $§
{
   import flash.net.URLVariables;
   
   public class MessageFactory
   {
       
      
      public function MessageFactory()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      private static function §"H§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc10_)
         {
            if(isNaN(param1) != false)
            {
               loop0:
               while(true)
               {
                  §§push(param1.toString() == "true");
                  if(!_loc11_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                              if(_loc10_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc10_)
                                 {
                                    addr127:
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§goto(addr139);
                                          }
                                          while(_loc10_ || MessageFactory)
                                          {
                                             if(_loc11_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc11_)
                                             {
                                                continue loop3;
                                             }
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(§4!P§(param1 as String));
                                                   if(!_loc11_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr139);
                                                }
                                                addr524:
                                                return param1.toString();
                                                addr74:
                                             }
                                             else
                                             {
                                                _loc3_ = new Array();
                                                if(!(_loc11_ && MessageFactory))
                                                {
                                                   if(§4!P§(_loc2_))
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         addr190:
                                                         _loc3_.push(§"H§(_loc2_));
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            addr220:
                                                            _loc4_ = _loc2_.split("]},{[");
                                                            var _loc8_:int = 0;
                                                            var _loc9_:* = _loc4_;
                                                            addr462:
                                                            if(§§hasnext(_loc9_,_loc8_))
                                                            {
                                                               addr460:
                                                               _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                               §§push(_loc5_.substr(0,1) == "{");
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               addr461:
                                                               if(§§pop())
                                                               {
                                                                  addr452:
                                                                  §§pop();
                                                                  addr453:
                                                                  §§push(_loc5_.substr(_loc5_.length - 1,1) == "}");
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr413:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr415:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr425:
                                                                                 _loc2_ = "[" + _loc5_ + "]";
                                                                              }
                                                                              addr229:
                                                                              _loc3_.push(§"H§(_loc2_));
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr264:
                                                                                          §§goto(addr229);
                                                                                       }
                                                                                       §§goto(addr462);
                                                                                    }
                                                                                    addr372:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr375:
                                                                                       §§push("[");
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr382:
                                                                                          §§push(§§pop() + _loc5_ + "}]");
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             addr390:
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              addr351:
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§goto(addr229);
                                                                              }
                                                                              addr426:
                                                                              §§goto(addr426);
                                                                           }
                                                                           addr358:
                                                                           §§push(_loc5_);
                                                                           §§push(0);
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                                 {
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§push("[{");
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_ || MessageFactory)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr292:
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      §§push("]");
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            addr310:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc10_ || MessageFactory)
                                                                                                            {
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc10_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || MessageFactory)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 §§goto(addr351);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        §§goto(addr453);
                                                                                                                     }
                                                                                                                     §§goto(addr358);
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                               }
                                                                                                               §§goto(addr425);
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         §§goto(addr425);
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   §§goto(addr375);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          §§goto(addr382);
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr413);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            addr218:
                                                            addr219:
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push("]},{[");
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop().indexOf(§§pop()) > -1)
                                                            {
                                                               §§goto(addr218);
                                                            }
                                                            addr466:
                                                            §§push(§4!P§(_loc2_));
                                                            if(_loc10_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = _loc2_.split("},{");
                                                               if(!_loc11_)
                                                               {
                                                                  _loc8_ = 0;
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc9_ = _loc6_;
                                                                     addr517:
                                                                     for each(_loc7_ in _loc9_)
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           _loc3_.push(§"H§(_loc7_));
                                                                        }
                                                                        §§goto(addr517);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            return _loc3_;
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr190);
                                             }
                                          }
                                          continue loop0;
                                          §§goto(addr139);
                                       }
                                       §§goto(addr74);
                                    }
                                 }
                                 addr139:
                                 return true;
                              }
                              §§goto(addr127);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr129);
                  }
               }
            }
         }
         §§goto(addr168);
      }
      
      private static function §4!P§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§push(true);
                           }
                           else
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 addr19:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       addr23:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break loop5;
                                       }
                                       addr63:
                                       while(!_loc3_)
                                       {
                                          continue loop5;
                                          §§goto(addr23);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr85:
                           return §§pop();
                        }
                        §§goto(addr19);
                     }
                     return §§pop();
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function §7!#§(param1:Object) : Object
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Object = new Object();
         if(!_loc12_)
         {
            if(param1 is URLVariables)
            {
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc11_)
                  {
                     _loc2_[_loc4_] = §"H§(_loc3_);
                  }
               }
               if(!(_loc11_ || _loc2_))
               {
                  addr97:
                  _loc5_ = (param1 as String).split("&");
                  if(!_loc12_)
                  {
                     var _loc9_:int = 0;
                     if(_loc11_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc12_)
                        {
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
                                    loop3:
                                    while(_loc11_)
                                    {
                                       _loc7_ = §§pop();
                                       loop4:
                                       while(_loc11_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             _loc8_ = §§pop();
                                             do
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             while(_loc2_[_loc7_] = _loc8_, !(_loc11_ || MessageFactory));
                                             
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr196:
                           return _loc2_;
                           addr192:
                           addr195:
                        }
                        while(true)
                        {
                           if(true)
                           {
                              §§goto(addr192);
                           }
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr195);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr97);
            }
            §§goto(addr196);
         }
         §§goto(addr45);
      }
   }
}
