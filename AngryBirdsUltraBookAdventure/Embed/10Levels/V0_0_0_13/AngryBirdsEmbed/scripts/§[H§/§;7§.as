package §[H§
{
   import flash.net.URLVariables;
   
   public class §;7§
   {
       
      
      public function §;7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      private static function §]!?§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!_loc11_)
         {
            if(isNaN(param1) == false)
            {
               if(!_loc11_)
               {
                  §§goto(addr43);
               }
            }
            §§push(param1.toString() == "true");
            if(_loc10_)
            {
               if(!§§pop())
               {
                  if(_loc10_)
                  {
                     §§pop();
                     §§push(param1.toString() == "false");
                     if(!_loc11_)
                     {
                        addr71:
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              §§push(true);
                              if(_loc10_)
                              {
                                 return §§pop();
                              }
                              addr90:
                              if(!§§pop())
                              {
                                 return param1.toString();
                              }
                           }
                           §§push(param1.toString().substr(1,param1.toString().length - 2));
                           if(_loc10_)
                           {
                              _loc2_ = §§pop();
                              §§push(_loc2_);
                              if(!(_loc11_ && §;7§))
                              {
                                 §§push(§§pop().substr(1,_loc2_.length - 2));
                              }
                           }
                           _loc2_ = §§pop();
                           _loc3_ = new Array();
                           if(!_loc11_)
                           {
                              if(§3p§(_loc2_))
                              {
                                 if(_loc10_)
                                 {
                                    _loc3_.push(§]!?§(_loc2_));
                                    if(!(_loc10_ || _loc2_))
                                    {
                                       addr161:
                                       _loc4_ = _loc2_.split("]},{[");
                                       var _loc8_:int = 0;
                                       var _loc9_:* = _loc4_;
                                       addr159:
                                       addr160:
                                       while(§§hasnext(_loc9_,_loc8_))
                                       {
                                          §§push(§§nextvalue(_loc8_,_loc9_));
                                          if(_loc10_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(0);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(1);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§push(§§pop().substr(§§pop(),§§pop()) == "{");
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc5_);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr239:
                                                                     if(§§pop().substr(_loc5_.length - 1,1) == "}")
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push("[");
                                                                        if(!(_loc11_ && §;7§))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push("]");
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr313:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr290:
                                                                                    §§push(_loc5_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          §§push("}]");
                                                                                          if(!(_loc11_ && §;7§))
                                                                                          {
                                                                                             addr310:
                                                                                             _loc2_ = §§pop() + §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr318:
                                                                                             _loc2_ = §§pop() + §§pop();
                                                                                             if(!(_loc10_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr316:
                                                                                          §§goto(addr318);
                                                                                          §§push(§§pop() + _loc5_);
                                                                                          §§push("]");
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 _loc3_.push(§]!?§(_loc2_));
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr270:
                                                                        if(_loc5_.substr(0,1) == "{")
                                                                        {
                                                                           if(_loc11_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push("[");
                                                                           if(!(_loc11_ && §;7§))
                                                                           {
                                                                              §§goto(addr290);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("[{");
                                                                        }
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                             }
                                          }
                                          §§goto(addr239);
                                       }
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr159);
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push("]},{[");
                                    if(!_loc11_)
                                    {
                                       if(§§pop().indexOf(§§pop()) > -1)
                                       {
                                          §§goto(addr159);
                                       }
                                       addr336:
                                       if(!§3p§(_loc2_))
                                       {
                                          _loc6_ = _loc2_.split("},{");
                                          if(_loc10_ || §;7§)
                                          {
                                             _loc8_ = 0;
                                             if(!_loc11_)
                                             {
                                                for each(_loc7_ in _loc6_)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      _loc3_.push(§]!?§(_loc7_));
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr161);
                        }
                        else
                        {
                           §§push(§3p§(param1 as String));
                        }
                     }
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr71);
         }
         addr43:
         return Number(param1);
      }
      
      private static function §3p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr70);
            }
            addr62:
            §§push(param1.toString().substr(-1,1) == "]");
            if(_loc2_)
            {
               addr70:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr73:
                     §§push(true);
                     if(!_loc3_)
                     {
                        §§goto(addr76);
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr78);
               }
               addr78:
               return §§pop();
               §§push(false);
            }
            addr76:
            return §§pop();
         }
         §§goto(addr73);
      }
      
      public static function §'G§(param1:Object) : Object
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
         if(_loc11_)
         {
            if(param1 is URLVariables)
            {
               addr44:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(!(_loc12_ && _loc2_))
                  {
                     _loc2_[_loc4_] = §]!?§(_loc3_);
                  }
               }
               if(!(_loc11_ || _loc3_))
               {
                  addr100:
                  _loc5_ = (param1 as String).split("&");
                  if(_loc11_)
                  {
                     var _loc9_:int = 0;
                     if(_loc11_ || _loc2_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc11_ || _loc3_)
                        {
                        }
                        while(§§hasnext(_loc10_,_loc9_))
                        {
                           §§push(§§nextvalue(_loc9_,_loc10_));
                           if(!(_loc12_ && §;7§))
                           {
                              _loc6_ = §§pop();
                              if(_loc11_ || §;7§)
                              {
                                 §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                 if(!_loc12_)
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr183:
                                 _loc8_ = §§pop();
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    _loc2_[_loc7_] = _loc8_;
                                 }
                                 continue;
                              }
                              §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                           }
                           §§goto(addr183);
                        }
                     }
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr100);
            }
            return _loc2_;
         }
         §§goto(addr44);
      }
   }
}
