package §1!`§
{
   import flash.net.URLVariables;
   
   public class §#i§
   {
       
      
      public function §#i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      private static function §[&§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc10_ || §#i§)
         {
            if(isNaN(param1) == false)
            {
               if(_loc10_)
               {
                  return Number(param1);
               }
               while(true)
               {
                  loop9:
                  while(_loc10_ || §#i§)
                  {
                     §§push(_loc2_);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(§§pop().substr(1,_loc2_.length - 2));
                     }
                     addr144:
                     if(!(_loc11_ && param1))
                     {
                        _loc2_ = §§pop();
                        if(_loc11_ && param1)
                        {
                           continue;
                        }
                        if(_loc10_ || §#i§)
                        {
                           if(false)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(§%!o§(param1 as String));
                                 if(!_loc11_)
                                 {
                                    addr90:
                                    if(_loc10_ || param1)
                                    {
                                       addr97:
                                       if(_loc10_ || _loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             return param1.toString();
                                          }
                                          if(_loc11_ && §#i§)
                                          {
                                             continue loop9;
                                          }
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(_loc10_ || param1)
                                             {
                                                §§push(param1.toString().substr(1,param1.toString().length - 2));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop9;
                                                   §§goto(addr144);
                                                }
                                                addr136:
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                             addr156:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§push(param1.toString() == "false");
                                                      addr150:
                                                      while(!_loc11_)
                                                      {
                                                         §§goto(addr90);
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr97);
                                          }
                                          addr162:
                                       }
                                       §§push(true);
                                       break;
                                    }
                                    §§goto(addr150);
                                 }
                                 break;
                              }
                              return §§pop();
                           }
                           _loc3_ = new Array();
                           if(!(_loc11_ && §#i§))
                           {
                              if(§%!o§(_loc2_))
                              {
                                 if(_loc10_)
                                 {
                                    _loc3_.push(§[&§(_loc2_));
                                    if(!_loc10_)
                                    {
                                       addr219:
                                       _loc4_ = _loc2_.split("]},{[");
                                       var _loc8_:int = 0;
                                       var _loc9_:* = _loc4_;
                                       addr431:
                                       if(§§hasnext(_loc9_,_loc8_))
                                       {
                                          addr414:
                                          _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                          addr417:
                                          §§push(_loc5_.substr(0,1) == "{");
                                          if(_loc10_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                addr429:
                                                §§pop();
                                                addr430:
                                                §§push(_loc5_);
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      §§push(§§pop().substr(§§pop().length - 1,1) == "}");
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr398:
                                                         if(§§pop())
                                                         {
                                                            addr405:
                                                            _loc2_ = "[" + _loc5_ + "]";
                                                            addr228:
                                                            _loc3_.push(§[&§(_loc2_));
                                                            if(_loc10_ || §#i§)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr253:
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr431);
                                                            }
                                                            addr406:
                                                            addr402:
                                                            addr401:
                                                            addr400:
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                               addr337:
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push("[");
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr364:
                                                                                 _loc2_ = §§pop() + "}]";
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr406);
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr430);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr364);
                                                            addr403:
                                                            addr404:
                                                         }
                                                         §§push(_loc5_);
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            if(!(_loc11_ && §#i§))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc11_ && §#i§))
                                                               {
                                                                  §§push(1);
                                                                  if(!(_loc11_ && _loc2_))
                                                                  {
                                                                     if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§push("[{" + _loc5_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push("]");
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           addr270:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_ || §#i§)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 §§goto(addr405);
                                                                              }
                                                                              §§goto(addr403);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr417);
                                                         }
                                                         §§goto(addr430);
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                }
                                                §§goto(addr414);
                                             }
                                             §§goto(addr398);
                                          }
                                          §§goto(addr429);
                                       }
                                       addr217:
                                       addr218:
                                    }
                                    else
                                    {
                                       addr202:
                                    }
                                    §§goto(addr435);
                                 }
                                 §§goto(addr217);
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(_loc10_ || param1)
                                 {
                                    §§push("]},{[");
                                    if(!_loc11_)
                                    {
                                       if(§§pop().indexOf(§§pop()) > -1)
                                       {
                                          §§goto(addr217);
                                       }
                                       addr435:
                                       if(!§%!o§(_loc2_))
                                       {
                                          _loc6_ = _loc2_.split("},{");
                                          if(!(_loc11_ && §#i§))
                                          {
                                             _loc8_ = 0;
                                             if(_loc10_ || §#i§)
                                             {
                                                _loc9_ = _loc6_;
                                                addr477:
                                                for each(_loc7_ in _loc9_)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      _loc3_.push(§[&§(_loc7_));
                                                   }
                                                   §§goto(addr477);
                                                }
                                             }
                                          }
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr136);
                  }
               }
               addr177:
            }
            while(true)
            {
               §§goto(addr162);
               §§goto(addr177);
            }
         }
         §§goto(addr156);
      }
      
      private static function §%!o§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!(_loc3_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     do
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr69:
                              §§push(true);
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(!(_loc2_ || §#i§))
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        return §§pop().toString().substr(-1,1) == "]";
                     }
                     while(_loc2_);
                     
                     return §§pop();
                  }
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      public static function §>"$§(param1:Object) : Object
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
         if(!(_loc12_ && param1))
         {
            if(param1 is URLVariables)
            {
               addr49:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc11_)
                  {
                     _loc2_[_loc4_] = §[&§(_loc3_);
                  }
               }
               if(!(_loc11_ || _loc3_))
               {
                  addr100:
                  _loc5_ = (param1 as String).split("&");
                  if(!(_loc12_ && _loc2_))
                  {
                     var _loc9_:int = 0;
                     if(!_loc12_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc12_)
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    addr167:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       addr168:
                                       while(_loc11_)
                                       {
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr146:
                                 if(!(_loc11_ || §#i§))
                                 {
                                    continue;
                                 }
                                 _loc8_ = §§pop();
                                 while(_loc11_)
                                 {
                                    _loc2_[_loc7_] = _loc8_;
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr168);
                              }
                           }
                           addr193:
                           return _loc2_;
                           addr192:
                        }
                        while(true)
                        {
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr192);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr100);
            }
            §§goto(addr193);
         }
         §§goto(addr49);
      }
   }
}
