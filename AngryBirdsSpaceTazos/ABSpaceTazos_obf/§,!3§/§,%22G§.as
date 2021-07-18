package §,!3§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §,"G§
   {
       
      
      private var jsonString:String;
      
      public function §,"G§(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.jsonString = this.§&!l§(param1);
         }
         while(!_loc3_);
         
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function §&!l§(param1:*) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(!(_loc7_ && this))
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr36:
               _loc2_ = new Array();
               for each(_loc3_ in param1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
               param1 = _loc2_;
            }
            §§push(param1 is String);
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(this.§]!v§(param1 as String));
                     if(!(_loc7_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr164:
                     §§push(this.§@"+§(param1));
                     if(!(_loc7_ && _loc3_))
                     {
                        if(!_loc7_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§goto(addr227);
                     }
                  }
                  addr290:
               }
               else
               {
                  §§push(param1 is Number);
                  loop0:
                  for(; !§§pop(); loop7:
                  while(!(_loc7_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           loop9:
                           while(true)
                           {
                              if(!(_loc7_ && this))
                              {
                                 §§push(param1 == null);
                                 if(_loc6_ || this)
                                 {
                                    continue loop8;
                                 }
                                 addr153:
                                 while(true)
                                 {
                                    if(_loc7_ && this)
                                    {
                                       break loop9;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§goto(addr164);
                                          }
                                          else
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop9;
                                             }
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§goto(addr108);
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                       addr108:
                                       §§push("null");
                                       if(_loc6_ || this)
                                       {
                                          return §§pop();
                                       }
                                       addr292:
                                       return §§pop();
                                    }
                                 }
                              }
                              else
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc7_ && _loc3_)
                                    {
                                       §§goto(addr239);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr290);
                           }
                           continue loop7;
                        }
                     }
                     §§goto(addr160);
                  })
                  {
                     while(true)
                     {
                        §§push(param1 is Boolean);
                        addr243:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(!param1)
                                 {
                                    §§push("false");
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    §§push("true");
                                    break;
                                 }
                              }
                              while(!(_loc7_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(param1 is Array);
                                    addr214:
                                    while(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1 is Object);
                                          continue loop0;
                                       }
                                    }
                                    addr215:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       break loop0;
                                    }
                                    addr227:
                                    return §§pop();
                                    §§push(this.§;!p§(param1 as Array));
                                 }
                              }
                              addr287:
                              §§goto(addr290);
                              §§push(param1.toString());
                              addr259:
                           }
                           §§goto(addr210);
                        }
                        return §§pop();
                     }
                  }
                  if(isFinite(param1 as Number))
                  {
                     §§goto(addr287);
                  }
                  else
                  {
                     §§push("null");
                  }
               }
               §§goto(addr292);
            }
            §§goto(addr152);
         }
         §§goto(addr36);
      }
      
      private function §]!v§(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               if(§§pop() < _loc4_)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().charAt(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              loop6:
                              while(true)
                              {
                                 var _loc8_:* = §§pop();
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    if("\"" === _loc8_)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(0);
                                          if(!_loc10_)
                                          {
                                             addr416:
                                          }
                                       }
                                       else
                                       {
                                          addr399:
                                          §§push(4);
                                          if(_loc10_ || this)
                                          {
                                          }
                                       }
                                    }
                                    else if("\\" === _loc8_)
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(1);
                                          if(!_loc9_)
                                          {
                                             addr433:
                                             if(!(_loc10_ || param1))
                                             {
                                                continue loop1;
                                             }
                                             loop16:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr312:
                                                   §§push(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() + "\\\"");
                                                      if(!(_loc9_ && this))
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr324:
                                                         break;
                                                         addr324:
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   continue loop4;
                                                case 1:
                                                   addr306:
                                                   _loc2_ += "\\\\";
                                                   break;
                                                   addr304:
                                                   addr307:
                                                case 2:
                                                   addr289:
                                                   §§push(_loc2_ + "\\b");
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      break;
                                                      addr299:
                                                   }
                                                   §§goto(addr477);
                                                case 3:
                                                   addr276:
                                                   _loc2_ += "\\f";
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr324);
                                                   break;
                                                   addr274:
                                                case 4:
                                                   addr266:
                                                   _loc2_ += "\\n";
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr299);
                                                   break;
                                                   addr264:
                                                case 5:
                                                   addr243:
                                                   §§push(_loc2_);
                                                   if(_loc10_)
                                                   {
                                                      addr247:
                                                      §§push(§§pop() + "\\r");
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            addr455:
                                                            §§push("\"" + _loc2_);
                                                            if(_loc9_ && this)
                                                            {
                                                            }
                                                            §§goto(addr477);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr306);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr266);
                                                case 6:
                                                   §§push(_loc2_);
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§pop() + "\\t");
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                   }
                                                   continue;
                                                   addr477:
                                                   return §§pop() + "\"";
                                                   break;
                                                default:
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() >= " ")
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr60:
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             addr106:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push("\\u" + _loc7_);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc6_);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr333:
                                                                                                                        break loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           while(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc9_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr175:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(§§pop().length == 2)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push("00");
                                                                                                                                             }
                                                                                                                                             §§goto(addr455);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push("000");
                                                                                                                                          }
                                                                                                                                          §§push(§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                §§goto(addr266);
                                                                                                                                             }
                                                                                                                                             break loop16;
                                                                                                                                          }
                                                                                                                                          addr192:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr312);
                                                                                                                                       }
                                                                                                                                       §§goto(addr477);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr304);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr306);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                           addr160:
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     addr152:
                                                                                                                  }
                                                                                                                  §§goto(addr307);
                                                                                                               }
                                                                                                               addr134:
                                                                                                            }
                                                                                                            §§goto(addr174);
                                                                                                         }
                                                                                                         addr126:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr289);
                                                                           §§goto(addr477);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr60);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr160);
                                             }
                                             _loc5_++;
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr455);
                                          }
                                       }
                                       else
                                       {
                                          addr385:
                                          §§push(3);
                                          if(_loc9_ && _loc2_)
                                          {
                                             §§goto(addr416);
                                          }
                                       }
                                       §§goto(addr433);
                                    }
                                    else
                                    {
                                       if("\b" === _loc8_)
                                       {
                                          if(_loc10_)
                                          {
                                             addr371:
                                             §§push(2);
                                             if(!_loc10_)
                                             {
                                                addr428:
                                             }
                                          }
                                       }
                                       else if("\f" === _loc8_)
                                       {
                                          if(_loc10_ || this)
                                          {
                                             §§goto(addr385);
                                          }
                                          else
                                          {
                                             addr413:
                                             §§push(5);
                                             if(!_loc10_)
                                             {
                                                §§goto(addr428);
                                             }
                                             §§goto(addr433);
                                          }
                                       }
                                       else
                                       {
                                          if("\n" === _loc8_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§goto(addr399);
                                             }
                                             else
                                             {
                                                §§goto(addr413);
                                             }
                                          }
                                          else
                                          {
                                             if("\r" === _loc8_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr413);
                                                }
                                             }
                                             else if("\t" !== _loc8_)
                                             {
                                                §§goto(addr433);
                                                §§push(7);
                                             }
                                             §§goto(addr433);
                                          }
                                          §§goto(addr433);
                                       }
                                       §§goto(addr433);
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§goto(addr428);
                                       }
                                    }
                                    §§goto(addr433);
                                 }
                                 §§goto(addr371);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr455);
            }
         }
      }
      
      private function §;!p§(param1:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc5_ || this)
               {
                  §§push("[" + _loc2_);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + "]");
                  }
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(§§pop() + this.§&!l§(param1[_loc3_]));
                           }
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              loop4:
                              while(_loc5_)
                              {
                                 _loc3_++;
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 if(§§pop().length <= 0)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr115:
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              break loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr68);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr115);
         }
         return §§pop();
      }
      
      private function §@"+§(param1:Object) : String
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     while(_loc11_ || this)
                     {
                        §§pop().§§slot[5] = §§pop();
                        if(!_loc10_)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(null);
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(§§newactivation());
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       continue loop6;
                                    }
                                 }
                              }
                              if(!(_loc10_ && param1))
                              {
                                 continue loop3;
                              }
                           }
                           continue;
                        }
                        var _loc3_:int = 0;
                        var _loc4_:* = o;
                        addr272:
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(!(_loc10_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              addr270:
                              var key:String = §§nextname(_loc3_,_loc4_);
                              addr256:
                              var value:Object = o[key];
                              addr271:
                              addr262:
                              addr266:
                              addr255:
                              if(value is Function)
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    if(_loc11_)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§goto(addr272);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr262);
                                 }
                                 addr230:
                                 §§push(§§newactivation());
                                 if(!_loc10_)
                                 {
                                    if(_loc11_ || this)
                                    {
                                       addr242:
                                       §§push(s);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          addr251:
                                          §§pop().§§slot[2] = §§pop() + ",";
                                          addr252:
                                          §§push(§§newactivation());
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(§§pop().§§slot[2]);
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.§]!v§(key) + ":");
                                                            if(_loc11_ || this)
                                                            {
                                                               §§push(§§pop() + this.§&!l§(value));
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc11_)
                                                            {
                                                               addr198:
                                                               §§pop().§§slot[2] = §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr255);
                              }
                              §§push(§§newactivation());
                              if(!_loc10_)
                              {
                                 if(§§pop().§§slot[2].length > 0)
                                 {
                                    §§goto(addr230);
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr230);
                           }
                           if(_loc11_)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(_loc11_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr622);
                              }
                              §§goto(addr622);
                           }
                           else
                           {
                              §§goto(addr621);
                           }
                        }
                        §§goto(addr619);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
