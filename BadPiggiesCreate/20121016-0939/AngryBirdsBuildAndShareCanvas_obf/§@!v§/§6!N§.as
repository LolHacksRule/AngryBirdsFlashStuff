package §@!v§
{
   import flash.net.URLVariables;
   
   public class §6!N§
   {
       
      
      public function §6!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      private static function §8r§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!_loc10_)
         {
            if(isNaN(param1) == false)
            {
               if(!(_loc10_ && _loc2_))
               {
                  return Number(param1);
               }
               while(true)
               {
               }
               addr163:
            }
            loop1:
            while(true)
            {
               §§push(param1.toString() == "true");
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§5-§(param1 as String));
                              if(_loc11_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       return param1.toString();
                                    }
                                    if(_loc11_ || §6!N§)
                                    {
                                       if(_loc10_ && _loc3_)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       §§push(param1.toString().substr(1,param1.toString().length - 2));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr47:
                                          if(!(_loc11_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          addr61:
                                          _loc2_ = §§pop().substr(1,_loc2_.length - 2);
                                          if(_loc10_)
                                          {
                                             while(!(_loc10_ && param1))
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc11_ || §6!N§)
                                                   {
                                                      §§goto(addr47);
                                                   }
                                                   §§goto(addr61);
                                                }
                                                else
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(param1.toString() == "false");
                                                      addr117:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr145:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             addr133:
                                             §§push(true);
                                             break loop7;
                                             addr102:
                                          }
                                          if(false)
                                          {
                                             continue loop7;
                                          }
                                          _loc3_ = new Array();
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             if(§5-§(_loc2_))
                                             {
                                                if(_loc11_ || §6!N§)
                                                {
                                                   _loc3_.push(§8r§(_loc2_));
                                                   if(!_loc11_)
                                                   {
                                                      addr220:
                                                      _loc4_ = _loc2_.split("]},{[");
                                                      var _loc8_:int = 0;
                                                      var _loc9_:* = _loc4_;
                                                      addr377:
                                                      if(§§hasnext(_loc9_,_loc8_))
                                                      {
                                                         addr370:
                                                         §§push(§§nextvalue(_loc8_,_loc9_));
                                                         if(_loc11_)
                                                         {
                                                            addr367:
                                                            §§push(_loc5_ = §§pop());
                                                         }
                                                         §§push(§§pop().substr(0,1) == "{");
                                                         if(§§pop().substr(0,1) == "{")
                                                         {
                                                            addr375:
                                                            §§pop();
                                                            addr376:
                                                            §§push(_loc5_);
                                                            §§push(_loc5_);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop().substr(§§pop().length - 1,1) == "}");
                                                               if(!(_loc10_ && §6!N§))
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     addr349:
                                                                     if(§§pop())
                                                                     {
                                                                        addr356:
                                                                        _loc2_ = "[" + _loc5_ + "]";
                                                                        addr229:
                                                                        _loc3_.push(§8r§(_loc2_));
                                                                        addr357:
                                                                        addr353:
                                                                        addr352:
                                                                        addr351:
                                                                        if(_loc11_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_ || §6!N§)
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr255:
                                                                                       §§goto(addr229);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              addr314:
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push("[");
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr325:
                                                                                       _loc2_ = §§pop() + §§pop() + "}]";
                                                                                       addr326:
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                       addr323:
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        addr291:
                                                                        §§goto(addr229);
                                                                        addr354:
                                                                        addr355:
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                                 {
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§push("[{" + _loc5_);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    §§push("]");
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr272:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc10_ && §6!N§))
                                                                                       {
                                                                                          if(_loc11_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   §§goto(addr291);
                                                                                                }
                                                                                                §§goto(addr354);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr375);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      addr218:
                                                      addr219:
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr218);
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc10_ && §6!N§))
                                                {
                                                   §§push("]},{[");
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) > -1)
                                                      {
                                                         §§goto(addr218);
                                                      }
                                                      addr381:
                                                      if(!§5-§(_loc2_))
                                                      {
                                                         _loc6_ = _loc2_.split("},{");
                                                         if(_loc11_)
                                                         {
                                                            _loc8_ = 0;
                                                            if(_loc11_)
                                                            {
                                                               _loc9_ = _loc6_;
                                                               addr413:
                                                               for each(_loc7_ in _loc9_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc3_.push(§8r§(_loc7_));
                                                                  }
                                                                  §§goto(addr413);
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
                                          §§goto(addr220);
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr117);
                              }
                              break;
                           }
                           return §§pop();
                        }
                        §§goto(addr133);
                     }
                     addr131:
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr133);
      }
      
      private static function §5-§(param1:String) : Boolean
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
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr71:
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!(_loc3_ && §6!N§))
                        {
                           return §§pop();
                        }
                        addr58:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               addr95:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      public static function §]n§(param1:Object) : Object
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
         if(!_loc11_)
         {
            if(param1 is URLVariables)
            {
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_ || §6!N§)
                  {
                     _loc2_[_loc4_] = §8r§(_loc3_);
                  }
               }
               if(!(_loc12_ || _loc2_))
               {
                  addr101:
                  _loc5_ = (param1 as String).split("&");
                  if(_loc12_ || param1)
                  {
                     var _loc9_:int = 0;
                     if(!(_loc11_ && §6!N§))
                     {
                        var _loc10_:* = _loc5_;
                        if(!(_loc11_ && _loc2_))
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
                                    loop3:
                                    while(_loc12_)
                                    {
                                       _loc7_ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                             if(_loc11_)
                                             {
                                                break;
                                             }
                                             _loc8_ = §§pop();
                                             loop6:
                                             while(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   _loc2_[_loc7_] = _loc8_;
                                                   if(_loc12_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr199:
                           return _loc2_;
                           addr198:
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr198);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr101);
            }
            §§goto(addr199);
         }
         §§goto(addr45);
      }
   }
}
