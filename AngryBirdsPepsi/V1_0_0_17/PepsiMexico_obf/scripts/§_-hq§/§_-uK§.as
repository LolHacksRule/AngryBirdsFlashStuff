package §_-hq§
{
   import flash.utils.describeType;
   
   public class §_-uK§
   {
       
      
      private var §_-r9§:String;
      
      public function §_-uK§(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            if(_loc3_ || param1)
            {
               this.§_-r9§ = this.§_-bC§(param1);
            }
         }
      }
      
      public function getString() : String
      {
         return this.§_-r9§;
      }
      
      private function §_-bC§(param1:*) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1 is String);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  §§push(this.§_-P1§(param1 as String));
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  addr72:
               }
               else
               {
                  §§push(param1 is Number);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr49:
                           if(isFinite(param1 as Number))
                           {
                              §§push(param1.toString());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr72);
                              }
                              else
                              {
                                 §§goto(addr138);
                              }
                           }
                           else
                           {
                              §§push("null");
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr81);
                              }
                           }
                           §§goto(addr81);
                        }
                        else
                        {
                           addr114:
                           §§push(param1 == null);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr132:
                              if(!§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr138:
                                    return §§pop();
                                    §§push(this.§_-hm§(param1));
                                 }
                              }
                              §§push("null");
                           }
                           §§goto(addr132);
                        }
                     }
                     if(param1 is Boolean)
                     {
                        return !!param1 ? "true" : "false";
                     }
                     if(param1 is Array)
                     {
                        §§push(this.§_-aH§(param1 as Array));
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§push(param1 is Object);
                        if(param1 is Object)
                        {
                           addr113:
                           §§pop();
                           §§goto(addr114);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr138);
                     §§goto(addr132);
                  }
                  §§goto(addr113);
               }
               addr81:
               return §§pop();
            }
            §§goto(addr132);
         }
         §§goto(addr49);
      }
      
      private function §_-P1§(param1:String) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(§§pop() < _loc4_)
            {
               §§push(param1);
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc5_);
                  if(_loc9_ || _loc3_)
                  {
                     _loc3_ = §§pop().charAt(§§pop());
                     §§push(_loc3_);
                     loop2:
                     while(true)
                     {
                        var _loc8_:* = §§pop();
                        if(_loc9_ || _loc3_)
                        {
                           if("\"" === _loc8_)
                           {
                              addr243:
                              §§push(0);
                           }
                           else if("\\" === _loc8_)
                           {
                              §§push(1);
                              if(!_loc9_)
                              {
                                 addr256:
                              }
                           }
                           else if("\b" === _loc8_)
                           {
                              §§goto(addr256);
                              §§push(2);
                           }
                           else if("\f" === _loc8_)
                           {
                              §§push(3);
                           }
                           else
                           {
                              if("\n" === _loc8_)
                              {
                                 if(_loc9_)
                                 {
                                    addr283:
                                    §§push(4);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       loop7:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc2_ += "\\\"";
                                             if(_loc9_ || param1)
                                             {
                                                break loop2;
                                             }
                                             addr77:
                                             break loop2;
                                          case 1:
                                             _loc2_ += "\\\\";
                                             if(_loc10_ && _loc2_)
                                             {
                                                addr83:
                                                break loop2;
                                             }
                                             §§goto(addr77);
                                             break;
                                          case 2:
                                             _loc2_ += "\\b";
                                             §§goto(addr83);
                                          case 3:
                                             §§push(_loc2_);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + "\\f");
                                                if(!(_loc10_ && param1))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      break loop2;
                                                   }
                                                   addr126:
                                                   break loop2;
                                                }
                                                addr315:
                                                §§push(§§pop() + "\"");
                                                break;
                                             }
                                             addr149:
                                             if(§§pop() < " ")
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                      §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                      if(!_loc10_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop().length == 2)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr181:
                                                               _loc7_ = "00";
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  §§push("\\u" + _loc7_);
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() + _loc6_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr215:
                                                                        }
                                                                        break loop2;
                                                                     }
                                                                     addr217:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr218:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               break loop7;
                                                               addr184:
                                                            }
                                                            break loop2;
                                                         }
                                                         §§push("000");
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   addr162:
                                                }
                                                §§goto(addr215);
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                             }
                                             §§goto(addr217);
                                             break;
                                          case 4:
                                             _loc2_ += "\\n";
                                             if(_loc9_ || param1)
                                             {
                                                break loop2;
                                             }
                                             break loop2;
                                          case 5:
                                             _loc2_ += "\\r";
                                             if(_loc9_)
                                             {
                                                §§goto(addr126);
                                             }
                                             break loop2;
                                          case 6:
                                             §§push(_loc2_ + "\\t");
                                             if(!(_loc9_ || this))
                                             {
                                                break;
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc9_ || _loc3_)
                                             {
                                                break loop2;
                                             }
                                             continue loop0;
                                          default:
                                             §§goto(addr149);
                                       }
                                       return _loc3_;
                                    }
                                    continue loop1;
                                 }
                              }
                              else if("\r" === _loc8_)
                              {
                                 §§goto(addr283);
                                 §§push(5);
                              }
                              else
                              {
                                 if("\t" !== _loc8_)
                                 {
                                    §§goto(addr283);
                                    §§push(7);
                                 }
                                 §§goto(addr283);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr243);
                     }
                     _loc5_++;
                     if(_loc10_ && param1)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr162);
               }
               §§goto(addr184);
            }
            §§goto(addr315);
         }
      }
      
      private function §_-aH§(param1:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc3_)
            {
               if(§§pop().length > 0)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + ",");
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           addr60:
                           §§push(_loc2_);
                           if(!(_loc4_ && this))
                           {
                              addr75:
                              _loc2_ = §§pop() + this.§_-bC§(param1[_loc3_]);
                              if(_loc5_)
                              {
                                 addr78:
                                 _loc3_++;
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr78);
               }
               §§goto(addr60);
            }
            §§goto(addr75);
         }
         §§push("[" + _loc2_);
         if(_loc5_ || this)
         {
            §§push(§§pop() + "]");
         }
         addr109:
         return §§pop();
      }
      
      private function §_-hm§(param1:Object) : String
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§newactivation());
         if(_loc11_ || _loc3_)
         {
            §§push(null);
            if(_loc11_ || _loc2_)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(!_loc10_)
               {
                  §§push(null);
                  if(_loc11_)
                  {
                     §§pop().§§slot[5] = §§pop();
                     addr46:
                     var v:XML = null;
                     var o:Object = param1;
                     if(_loc11_ || _loc2_)
                     {
                        §§push(§§newactivation());
                        if(!_loc10_)
                        {
                           §§pop().§§slot[2] = "";
                           §§push(§§newactivation());
                           if(_loc11_)
                           {
                              addr66:
                              §§pop().§§slot[3] = describeType(o);
                           }
                           addr73:
                           if(§§pop().§§slot[3].@name.toString() == "Object")
                           {
                              var _loc3_:int = 0;
                              var _loc4_:* = o;
                              loop4:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 if(_loc11_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc11_ || this)
                                       {
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             if(_loc11_ || _loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr270:
                                             var _loc6_:int = 0;
                                             var _loc7_:* = §§checkfilter(classInfo..§*§);
                                             var _loc5_:* = new XMLList("");
                                             if(_loc10_ && _loc3_)
                                             {
                                             }
                                             classInfo..§*§.(if(!(_loc10_ && param1))
                                             {
                                                §§push(name() == "variable");
                                                if(!(_loc10_ && this))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               addr343:
                                                               §§push(name() == "accessor");
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr355:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr358:
                                                                        §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     addr368:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           _loc5_[_loc6_] = _loc8_;
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§push(attribute("access").charAt(0) == "r");
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr355);
                                                }
                                                §§goto(addr358);
                                             }, §§goto(addr343), false);
                                             _loc4_ = _loc5_;
                                             if(_loc11_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                   break loop4;
                                                }
                                                addr577:
                                                §§push("{" + §§pop().§§slot[2]);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + "}");
                                                }
                                                return §§pop();
                                                addr566:
                                                addr568:
                                                addr576:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr566);
                                             }
                                             addr497:
                                          }
                                          §§goto(addr577);
                                       }
                                       §§goto(addr568);
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                       if(_loc11_ || this)
                                       {
                                          §§push(§§nextname(_loc3_,_loc4_));
                                          if(_loc11_)
                                          {
                                             §§pop().§§slot[5] = §§pop();
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc10_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc11_ || _loc2_)
                                                   {
                                                      §§pop().§§slot[4] = §§pop().§§slot[1][key];
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc11_)
                                                         {
                                                            if(§§pop().§§slot[4] is Function)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr141:
                                                               }
                                                               continue;
                                                            }
                                                            §§push(§§newactivation());
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               addr150:
                                                               if(§§pop().§§slot[2].length > 0)
                                                               {
                                                                  if(_loc10_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  if(_loc11_)
                                                                  {
                                                                     addr164:
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        addr172:
                                                                        §§push(§§pop().§§slot[2]);
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           addr180:
                                                                           §§push(§§pop() + ",");
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              §§pop().§§slot[2] = §§pop();
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 addr227:
                                                                                 §§push(§§newactivation());
                                                                                 §§push(s);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(this.§_-P1§(key) + ":");
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + this.§_-bC§(value));
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§§slot[2] = §§pop();
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr577);
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                    if(_loc11_ || param1)
                                    {
                                       §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                       if(!_loc10_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc10_)
                                          {
                                             §§push(Boolean(§§pop().§§slot[6].metadata));
                                             if(!(_loc10_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr432:
                                                      §§pop();
                                                      _loc6_ = 0;
                                                      _loc7_ = §§checkfilter(v.metadata);
                                                      _loc5_ = new XMLList("");
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                      }
                                                      v.metadata.(_loc11_ || this);
                                                      §§push(_loc5_.length() > 0);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr497);
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc11_)
                                                   {
                                                      if(§§pop().§§slot[2].length > 0)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(§§pop().§§slot[2]);
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() + ",");
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§pop().§§slot[2] = §§pop();
                                                                     addr541:
                                                                     §§push(§§newactivation());
                                                                     §§push(s);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr564:
                                                                        §§push(this.§_-P1§(v.@name.toString()) + ":");
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop() + this.§_-bC§(o[v.@name]));
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().§§slot[2] = §§pop();
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr564);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr541);
                                                }
                                             }
                                             §§goto(addr432);
                                          }
                                       }
                                    }
                                    §§goto(addr541);
                                 }
                              }
                           }
                           else
                           {
                              _loc3_ = 0;
                              if(_loc11_ || param1)
                              {
                                 §§goto(addr270);
                              }
                           }
                           §§goto(addr576);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr73);
                     §§push(§§newactivation());
                  }
                  §§goto(addr46);
               }
               §§goto(addr66);
            }
            §§goto(addr46);
         }
         §§goto(addr73);
      }
   }
}
