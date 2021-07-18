package §2<§
{
   import flash.net.URLVariables;
   
   public class §0$§
   {
       
      
      public function §0$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §#!H§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!_loc11_)
         {
            if(isNaN(param1) != false)
            {
               loop0:
               while(true)
               {
                  §§push(param1.toString() == "true");
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§goto(addr140);
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc10_ || _loc3_)
                           {
                              §§push(true);
                           }
                           else
                           {
                              loop6:
                              while(!_loc11_)
                              {
                                 while(true)
                                 {
                                    §§push(§="Z§(param1 as String));
                                    if(!(_loc10_ || §0$§))
                                    {
                                       §§goto(addr128);
                                    }
                                    if(_loc10_)
                                    {
                                       if(!(_loc10_ || _loc2_))
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          return param1.toString();
                                       }
                                       loop8:
                                       do
                                       {
                                          §§push(param1.toString().substr(1,param1.toString().length - 2));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().substr(1,_loc2_.length - 2));
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       while(!_loc10_);
                                       
                                       if(!(_loc10_ || _loc3_))
                                       {
                                          continue loop6;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr74);
                                       }
                                       _loc3_ = new Array();
                                       if(_loc10_)
                                       {
                                          if(§="Z§(_loc2_))
                                          {
                                             if(!(_loc11_ && param1))
                                             {
                                                addr170:
                                                _loc3_.push(§#!H§(_loc2_));
                                                if(_loc11_)
                                                {
                                                   addr199:
                                                   _loc4_ = _loc2_.split("]},{[");
                                                   var _loc8_:int = 0;
                                                   var _loc9_:* = _loc4_;
                                                   addr409:
                                                   if(§§hasnext(_loc9_,_loc8_))
                                                   {
                                                      addr392:
                                                      _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                      addr395:
                                                      §§push(_loc5_.substr(0,1) == "{");
                                                      if(_loc10_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr407:
                                                            §§pop();
                                                            addr408:
                                                            §§push(_loc5_);
                                                            if(!_loc11_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     §§push(§§pop().substr(§§pop().length - 1,1) == "}");
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        addr372:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr383:
                                                                              §§push("[");
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr381:
                                                                                 §§push(§§pop() + _loc5_ + "]");
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                           }
                                                                           addr208:
                                                                           _loc3_.push(§#!H§(_loc2_));
                                                                           addr384:
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr237:
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              addr344:
                                                                              §§goto(addr237);
                                                                           }
                                                                           addr271:
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(_loc10_ || §0$§)
                                                                              {
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                           addr306:
                                                                           §§push("[");
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr312:
                                                                                 §§push(_loc5_);
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       addr327:
                                                                                       §§push("}]");
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          addr336:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             §§goto(addr344);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc11_ && §0$§))
                                                                           {
                                                                              §§push(1);
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                                 {
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 §§push("[{");
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             §§push("]");
                                                                                             if(_loc10_ || §0$§)
                                                                                             {
                                                                                                addr270:
                                                                                                _loc2_ = §§pop() + §§pop();
                                                                                                §§goto(addr271);
                                                                                             }
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          §§goto(addr270);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                           }
                                                                           §§goto(addr395);
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr407);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                   addr197:
                                                   addr198:
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr197);
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push("]},{[");
                                                if(_loc10_ || _loc3_)
                                                {
                                                   if(§§pop().indexOf(§§pop()) > -1)
                                                   {
                                                      §§goto(addr197);
                                                   }
                                                   addr413:
                                                   if(!§="Z§(_loc2_))
                                                   {
                                                      _loc6_ = _loc2_.split("},{");
                                                      if(_loc10_)
                                                      {
                                                         _loc8_ = 0;
                                                         if(_loc10_)
                                                         {
                                                            _loc9_ = _loc6_;
                                                            addr460:
                                                            for each(_loc7_ in _loc9_)
                                                            {
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  _loc3_.push(§#!H§(_loc7_));
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return _loc3_;
                                                }
                                                §§goto(addr199);
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr170);
                                       continue loop6;
                                    }
                                    §§goto(addr116);
                                 }
                                 continue loop1;
                              }
                              addr140:
                              §§goto(addr148);
                           }
                           addr128:
                           return §§pop();
                        }
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         addr148:
         while(!_loc11_)
         {
            §§push(param1.toString() == "false");
            while(_loc10_)
            {
            }
            continue loop2;
         }
         return Number(param1);
      }
      
      private static function §="Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               addr118:
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && §0$§))
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(true);
                           }
                           else
                           {
                              addr24:
                              §§push(false);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 addr68:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           if(_loc2_ || _loc3_)
                           {
                              break;
                           }
                           addr120:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                        }
                        §§goto(addr24);
                     }
                     return §§pop();
                  }
                  §§goto(addr120);
               }
            }
            addr112:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§goto(addr68);
               §§push(§§pop().toString().substr(-1,1) == "]");
            }
            else
            {
               §§goto(addr112);
            }
            §§goto(addr118);
         }
      }
      
      public static function §`B§(param1:Object) : Object
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc2_:Object = new Object();
         if(!(_loc12_ && _loc2_))
         {
            if(param1 is URLVariables)
            {
               addr49:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc11_)
                  {
                     _loc2_[_loc4_] = §#!H§(_loc3_);
                  }
               }
               if(!_loc11_)
               {
                  addr95:
                  _loc5_ = (param1 as String).split("&");
                  if(_loc11_)
                  {
                     var _loc9_:int = 0;
                     if(!_loc12_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!(_loc12_ && param1))
                        {
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
                                    loop3:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       addr183:
                                       while(!_loc12_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           addr198:
                           return _loc2_;
                           addr194:
                           addr197:
                        }
                        while(true)
                        {
                           _loc2_[_loc7_] = _loc8_;
                           if(!(_loc11_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc11_ || _loc2_)
                           {
                              if(true)
                              {
                                 §§goto(addr194);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr197);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr95);
            }
            §§goto(addr198);
         }
         §§goto(addr49);
      }
   }
}
