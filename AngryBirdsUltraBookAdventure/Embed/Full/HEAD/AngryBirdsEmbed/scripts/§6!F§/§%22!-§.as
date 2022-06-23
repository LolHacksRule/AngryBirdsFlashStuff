package §6!F§
{
   import flash.net.URLVariables;
   
   public class §"!-§
   {
       
      
      public function §"!-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function §1!$§(param1:*) : *
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
            if(!(_loc10_ && param1))
            {
               return Number(param1);
            }
            addr64:
            §§push(param1.toString() == "false");
            if(_loc11_)
            {
               addr70:
               if(§§pop())
               {
                  §§push(true);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§goto(addr79);
                  }
               }
               else
               {
                  §§push(§2,§(param1 as String));
               }
            }
            if(§§pop())
            {
               if(!(_loc10_ && _loc3_))
               {
                  addr100:
                  §§push(param1.toString().substr(1,param1.toString().length - 2));
                  if(!(_loc10_ && §"!-§))
                  {
                     _loc2_ = §§pop();
                     addr136:
                     if(!(_loc10_ && §"!-§))
                     {
                        §§push(_loc2_);
                        if(_loc11_)
                        {
                           §§push(§§pop().substr(1,_loc2_.length - 2));
                        }
                     }
                     _loc3_ = new Array();
                     if(!_loc10_)
                     {
                        if(§2,§(_loc2_))
                        {
                           if(!(_loc10_ && param1))
                           {
                              _loc3_.push(§1!$§(_loc2_));
                              if(_loc10_ && _loc2_)
                              {
                                 addr182:
                                 _loc4_ = _loc2_.split("]},{[");
                                 var _loc8_:int = 0;
                                 var _loc9_:* = _loc4_;
                                 addr180:
                                 addr181:
                                 for(; §§hasnext(_loc9_,_loc8_); _loc3_.push(§1!$§(_loc2_)))
                                 {
                                    §§push(§§nextvalue(_loc8_,_loc9_));
                                    if(_loc11_)
                                    {
                                       §§push(§§pop());
                                       if(_loc11_ || §"!-§)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc11_ || param1)
                                          {
                                             §§push(0);
                                             if(_loc11_ || §"!-§)
                                             {
                                                §§push(1);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop().substr(§§pop(),§§pop()) == "{");
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr249:
                                                            §§pop();
                                                            §§push(_loc5_);
                                                            if(_loc11_)
                                                            {
                                                               addr260:
                                                               if(§§pop().substr(_loc5_.length - 1,1) == "}")
                                                               {
                                                                  §§push("[");
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push("]");
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr346:
                                                                              _loc2_ = §§pop();
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr322:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push("}]");
                                                                        if(!(_loc11_ || §"!-§))
                                                                        {
                                                                           addr345:
                                                                           §§goto(addr346);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                     _loc2_ = §§pop() + §§pop();
                                                                     continue;
                                                                  }
                                                                  addr344:
                                                                  §§push("]");
                                                                  §§goto(addr345);
                                                               }
                                                               else
                                                               {
                                                                  addr294:
                                                                  if(_loc5_.substr(0,1) == "{")
                                                                  {
                                                                     if(!(_loc11_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push("[");
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           §§goto(addr322);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr343:
                                                                           §§goto(addr344);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr342:
                                                                        §§push(_loc5_);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("[{");
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        §§goto(addr342);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr249);
                                                }
                                             }
                                             §§goto(addr294);
                                          }
                                       }
                                    }
                                    §§goto(addr260);
                                 }
                              }
                              else
                              {
                                 addr165:
                              }
                              §§goto(addr356);
                           }
                           §§goto(addr165);
                        }
                        else
                        {
                           §§push(_loc2_);
                           if(!(_loc10_ && §"!-§))
                           {
                              §§push("]},{[");
                              if(_loc11_)
                              {
                                 if(§§pop().indexOf(§§pop()) > -1)
                                 {
                                    §§goto(addr180);
                                 }
                                 addr356:
                                 if(!§2,§(_loc2_))
                                 {
                                    _loc6_ = _loc2_.split("},{");
                                    if(!_loc10_)
                                    {
                                       _loc8_ = 0;
                                       if(_loc11_)
                                       {
                                          for each(_loc7_ in _loc6_)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc3_.push(§1!$§(_loc7_));
                                             }
                                          }
                                       }
                                    }
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr165);
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr136);
            }
            else
            {
               return param1.toString();
            }
         }
         else
         {
            §§push(param1.toString() == "true");
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  if(_loc11_)
                  {
                     §§pop();
                     if(_loc11_)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr100);
                  }
                  addr79:
                  return §§pop();
               }
            }
         }
         §§goto(addr70);
      }
      
      private static function §2,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §"!-§)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr81);
            }
            addr62:
            §§push(param1.toString().substr(-1,1) == "]");
            if(!(_loc3_ && _loc3_))
            {
               addr75:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr78:
                     §§push(true);
                     if(_loc2_)
                     {
                        addr81:
                        return §§pop();
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr83);
               }
               §§push(false);
            }
            addr83:
            return §§pop();
         }
         §§goto(addr78);
      }
      
      public static function §?$§(param1:Object) : Object
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc2_:Object = new Object();
         if(_loc12_)
         {
            if(param1 is URLVariables)
            {
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_ || param1)
                  {
                     _loc2_[_loc4_] = §1!$§(_loc3_);
                  }
               }
               if(_loc11_)
               {
                  addr96:
                  _loc5_ = (param1 as String).split("&");
                  if(!(_loc11_ && §"!-§))
                  {
                     var _loc9_:int = 0;
                     if(_loc12_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc12_ || param1)
                        {
                        }
                        while(§§hasnext(_loc10_,_loc9_))
                        {
                           §§push(§§nextvalue(_loc9_,_loc10_));
                           if(_loc12_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                 if(_loc12_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc12_ || _loc2_)
                                    {
                                       addr184:
                                       _loc8_ = unescape(_loc6_.substring(_loc6_.indexOf("=") + 1));
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr184);
                              }
                              _loc2_[_loc7_] = _loc8_;
                              continue;
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr96);
            }
            return _loc2_;
         }
         §§goto(addr45);
      }
   }
}
