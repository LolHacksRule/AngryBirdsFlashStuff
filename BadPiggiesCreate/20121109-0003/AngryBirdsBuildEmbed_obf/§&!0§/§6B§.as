package §&!0§
{
   import flash.net.URLVariables;
   
   public class §6B§
   {
       
      
      public function §6B§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      private static function §-!$§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!(_loc10_ && _loc2_))
         {
            if(isNaN(param1) == false)
            {
               return Number(param1);
            }
            §§push(param1.toString() == "true");
            if(!(_loc10_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     §§pop();
                     addr72:
                     §§push(param1.toString() == "false");
                     if(_loc10_ && param1)
                     {
                     }
                     §§goto(addr92);
                  }
               }
               if(§§pop())
               {
                  §§push(true);
                  if(_loc11_ || _loc2_)
                  {
                     §§goto(addr92);
                  }
               }
               else
               {
                  §§push(§6A§(param1 as String));
               }
               if(§§pop())
               {
                  if(_loc11_ || param1)
                  {
                     §§push(param1.toString().substr(1,param1.toString().length - 2));
                     if(!(_loc10_ && param1))
                     {
                        _loc2_ = §§pop();
                        §§push(_loc2_);
                        if(!_loc10_)
                        {
                           addr127:
                           §§push(§§pop().substr(1,_loc2_.length - 2));
                        }
                        _loc2_ = §§pop();
                        addr135:
                        _loc3_ = new Array();
                        if(_loc11_)
                        {
                           if(§6A§(_loc2_))
                           {
                              if(!_loc10_)
                              {
                                 addr147:
                                 _loc3_.push(§-!$§(_loc2_));
                                 if(_loc10_ && §6B§)
                                 {
                                    addr171:
                                    _loc4_ = _loc2_.split("]},{[");
                                    var _loc8_:int = 0;
                                    var _loc9_:* = _loc4_;
                                    addr169:
                                    addr170:
                                    while(§§hasnext(_loc9_,_loc8_))
                                    {
                                       §§push(§§nextvalue(_loc8_,_loc9_));
                                       if(_loc11_ || param1)
                                       {
                                          §§push(§§pop());
                                          if(_loc11_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                §§push(0);
                                                if(_loc11_)
                                                {
                                                   §§push(1);
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(§§pop().substr(§§pop(),§§pop()) == "{");
                                                      if(_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr228:
                                                               §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc11_)
                                                                  {
                                                                     addr241:
                                                                     if(§§pop().substr(_loc5_.length - 1,1) == "}")
                                                                     {
                                                                        addr242:
                                                                        §§push("[");
                                                                        §§push(_loc5_);
                                                                        if(_loc11_ || §6B§)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push("]");
                                                                           if(!(_loc10_ && §6B§))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc10_ && _loc2_)
                                                                                 {
                                                                                    addr314:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr324:
                                                                                 §§push(§§pop() + _loc5_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr329:
                                                                                    _loc2_ = §§pop() + "]";
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              addr332:
                                                                              _loc3_.push(§-!$§(_loc2_));
                                                                              continue;
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr273:
                                                                        if(_loc5_.substr(0,1) == "{")
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push("[");
                                                                              §§push(_loc5_);
                                                                              if(_loc11_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push("}]");
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       if(!(_loc10_ && §6B§))
                                                                                       {
                                                                                          §§goto(addr314);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr329);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("[{");
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                             }
                                             §§goto(addr273);
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                 }
                                 else
                                 {
                                    addr159:
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr159);
                           }
                           else
                           {
                              §§push(_loc2_);
                              if(_loc11_)
                              {
                                 §§push("]},{[");
                                 if(_loc11_)
                                 {
                                    if(§§pop().indexOf(§§pop()) > -1)
                                    {
                                       §§goto(addr169);
                                    }
                                    addr341:
                                    if(!§6A§(_loc2_))
                                    {
                                       _loc6_ = _loc2_.split("},{");
                                       if(!_loc10_)
                                       {
                                          _loc8_ = 0;
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             for each(_loc7_ in _loc6_)
                                             {
                                                if(_loc11_ || §6B§)
                                                {
                                                   _loc3_.push(§-!$§(_loc7_));
                                                }
                                             }
                                          }
                                       }
                                    }
                                    return _loc3_;
                                 }
                                 §§goto(addr171);
                              }
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr135);
               }
               else
               {
                  return param1.toString();
               }
            }
            addr92:
            return §§pop();
         }
         §§goto(addr72);
      }
      
      private static function §6A§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §6B§))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr48:
                        §§pop();
                        if(_loc2_ || param1)
                        {
                           addr57:
                           §§push(param1.toString().substr(-1,1) == "]");
                           if(!(_loc3_ && _loc3_))
                           {
                              addr80:
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr88:
                                    §§push(true);
                                    if(_loc2_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr98);
                        }
                        §§push(false);
                     }
                     addr98:
                     return §§pop();
                  }
                  §§goto(addr80);
               }
               §§goto(addr48);
            }
            §§goto(addr57);
         }
         §§goto(addr88);
      }
      
      public static function §+2§(param1:Object) : Object
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
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_)
                  {
                     _loc2_[_loc4_] = §-!$§(_loc3_);
                  }
               }
               if(!(_loc12_ || _loc3_))
               {
                  addr96:
                  _loc5_ = (param1 as String).split("&");
                  if(_loc12_)
                  {
                     var _loc9_:int = 0;
                     if(!_loc11_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc11_)
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              if(_loc12_ || §6B§)
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    if(_loc12_ || _loc2_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc12_ || _loc3_)
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             if(_loc11_ && param1)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          addr174:
                                       }
                                       while(true)
                                       {
                                          _loc2_[_loc7_] = _loc8_;
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr174);
                           }
                           addr190:
                           return _loc2_;
                           addr189:
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr189);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr96);
            }
            §§goto(addr190);
         }
         §§goto(addr45);
      }
   }
}
