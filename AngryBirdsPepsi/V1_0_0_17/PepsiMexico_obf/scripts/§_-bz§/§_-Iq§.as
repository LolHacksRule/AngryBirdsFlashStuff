package §_-bz§
{
   import flash.net.URLVariables;
   
   public class §_-Iq§
   {
       
      
      public function §_-Iq§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      private static function §_-sm§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(isNaN(param1) == false)
         {
            return Number(param1);
         }
         §§push(param1.toString() == "true");
         if(!(_loc10_ && _loc3_))
         {
            if(!§§pop())
            {
               if(!_loc10_)
               {
                  §§pop();
                  §§push(param1.toString() == "false");
                  if(_loc11_)
                  {
                     addr65:
                     if(§§pop())
                     {
                        §§push(true);
                        if(!_loc10_)
                        {
                           §§goto(addr69);
                        }
                     }
                     else
                     {
                        §§push(§_-V4§(param1 as String));
                     }
                     if(§§pop())
                     {
                        if(!(_loc10_ && param1))
                        {
                           §§push(param1.toString().substr(1,param1.toString().length - 2));
                           if(_loc11_)
                           {
                              _loc2_ = §§pop();
                              if(_loc11_)
                              {
                                 addr100:
                                 §§push(_loc2_);
                                 if(_loc11_ || param1)
                                 {
                                    addr108:
                                    §§push(§§pop().substr(1,_loc2_.length - 2));
                                 }
                                 _loc2_ = §§pop();
                              }
                              _loc3_ = new Array();
                              if(!(_loc10_ && param1))
                              {
                                 if(§_-V4§(_loc2_))
                                 {
                                    if(!(_loc10_ && §_-Iq§))
                                    {
                                       _loc3_.push(§_-sm§(_loc2_));
                                       if(_loc10_)
                                       {
                                          addr162:
                                          _loc4_ = _loc2_.split("]},{[");
                                          var _loc8_:int = 0;
                                          var _loc9_:* = _loc4_;
                                          addr160:
                                          addr161:
                                          for(; §§hasnext(_loc9_,_loc8_); _loc3_.push(§_-sm§(_loc2_)))
                                          {
                                             §§push(§§nextvalue(_loc8_,_loc9_));
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc10_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop().substr(§§pop(),§§pop()) == "{");
                                                            if(_loc11_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc10_ && §_-Iq§))
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        addr258:
                                                                        addr260:
                                                                        addr259:
                                                                        §§push(_loc5_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr228:
                                                                           §§push(§§pop().substr(_loc5_.length - 1,1) == "}");
                                                                        }
                                                                        if(§§pop().substr(0,1) == "{")
                                                                        {
                                                                           addr265:
                                                                           addr264:
                                                                           §§push("[" + _loc5_);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop() + "}]");
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           addr289:
                                                                           §§push(§§pop() + "]");
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("[{" + _loc5_);
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              §§goto(addr289);
                                                                           }
                                                                        }
                                                                        addr291:
                                                                        _loc2_ = §§pop();
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§push("[");
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc11_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push("]");
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr265);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr264);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr258);
                                                               §§push(_loc5_);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr258);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                       }
                                       else
                                       {
                                          addr145:
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr145);
                                 }
                                 else
                                 {
                                    §§push(_loc2_);
                                    if(_loc11_ || §_-Iq§)
                                    {
                                       §§push("]},{[");
                                       if(_loc11_)
                                       {
                                          if(§§pop().indexOf(§§pop()) > -1)
                                          {
                                             §§goto(addr160);
                                          }
                                          addr301:
                                          if(!§_-V4§(_loc2_))
                                          {
                                             _loc6_ = _loc2_.split("},{");
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                _loc8_ = 0;
                                                if(_loc11_ || §_-Iq§)
                                                {
                                                   for each(_loc7_ in _loc6_)
                                                   {
                                                      if(_loc11_ || param1)
                                                      {
                                                         _loc3_.push(§_-sm§(_loc7_));
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          return _loc3_;
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        return param1.toString();
                     }
                  }
               }
               addr69:
               return §§pop();
            }
         }
         §§goto(addr65);
      }
      
      private static function §_-V4§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && §_-Iq§))
                     {
                        addr52:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr64);
               }
               §§goto(addr52);
            }
            addr56:
            §§goto(addr55);
         }
         addr55:
         §§push(param1.toString().substr(-1,1) == "]");
         if(_loc2_)
         {
            addr64:
            if(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(true);
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr88:
                  §§push(false);
               }
            }
            §§goto(addr88);
         }
         return §§pop();
      }
      
      public static function §_-th§(param1:Object) : Object
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
         if(_loc12_)
         {
            if(param1 is URLVariables)
            {
               addr42:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(!_loc11_)
                  {
                     _loc2_[_loc4_] = §_-sm§(_loc3_);
                  }
               }
               if(_loc11_)
               {
                  _loc5_ = (param1 as String).split("&");
                  addr78:
                  if(_loc12_ || _loc3_)
                  {
                     var _loc9_:int = 0;
                     if(_loc12_ || _loc2_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc11_)
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              if(!_loc11_)
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc11_)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    if(_loc12_)
                                    {
                                       addr135:
                                       _loc7_ = §§pop();
                                       addr163:
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                       }
                                       while(true)
                                       {
                                          _loc2_[_loc7_] = _loc8_;
                                          continue loop0;
                                       }
                                       addr163:
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr135);
                           }
                           addr171:
                           return _loc2_;
                           addr170:
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr170);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr78);
            }
            §§goto(addr171);
         }
         §§goto(addr42);
      }
   }
}
