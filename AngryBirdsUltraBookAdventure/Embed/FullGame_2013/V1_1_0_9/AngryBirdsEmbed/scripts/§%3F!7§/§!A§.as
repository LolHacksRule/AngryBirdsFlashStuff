package §?!7§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §!A§
   {
       
      
      private var jsonString:String;
      
      public function §!A§(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this.jsonString = this.§4G§(param1);
            }
         }
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function §4G§(param1:*) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc6_)
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr31:
               _loc2_ = new Array();
               for each(_loc3_ in param1)
               {
                  if(_loc6_ || this)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
               param1 = _loc2_;
            }
            if(param1 is String)
            {
               §§push(this.§]B§(param1 as String));
               if(_loc6_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(param1 is Number);
               if(_loc6_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        if(isFinite(param1 as Number))
                        {
                           if(!_loc7_)
                           {
                              §§push(param1.toString());
                              if(_loc6_)
                              {
                                 §§goto(addr123);
                              }
                              else
                              {
                                 §§goto(addr189);
                              }
                           }
                           else
                           {
                              addr147:
                              §§push("true");
                              if(_loc7_ && param1)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("null");
                           if(!_loc7_)
                           {
                              addr123:
                              return §§pop();
                           }
                        }
                        §§goto(addr159);
                     }
                  }
                  else
                  {
                     §§push(param1 is Boolean);
                     if(_loc6_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(param1)
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr147);
                              }
                              else
                              {
                                 addr172:
                                 §§push(this.§-<§(param1 as Array));
                                 if(_loc6_)
                                 {
                                    §§goto(addr189);
                                 }
                                 else
                                 {
                                    §§goto(addr213);
                                 }
                              }
                           }
                           else
                           {
                              §§push("false");
                              if(!_loc6_)
                              {
                                 §§goto(addr215);
                              }
                           }
                           addr159:
                           return §§pop();
                        }
                        if(param1 is Array)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr172);
                           }
                           else
                           {
                              addr210:
                              §§push(this.§8!N§(param1));
                           }
                           addr213:
                           return §§pop();
                        }
                        addr200:
                        §§goto(addr207);
                        §§push(param1 is Object && "null");
                        §§goto(addr210);
                        addr215:
                        return §§pop();
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr210);
               }
               §§goto(addr200);
            }
            addr189:
            return §§pop();
         }
         §§goto(addr31);
      }
      
      private function §]B§(param1:String) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() < _loc4_)
            {
               §§push(param1);
               §§push(_loc5_);
               if(!(_loc10_ && param1))
               {
                  _loc3_ = §§pop().charAt(§§pop());
                  var _loc8_:* = _loc3_;
                  if(!(_loc10_ && this))
                  {
                     §§push("\"");
                     if(!_loc10_)
                     {
                        if(§§pop() === _loc8_)
                        {
                           §§push(0);
                           if(_loc10_ && this)
                           {
                              addr323:
                           }
                        }
                        else
                        {
                           addr299:
                           §§push("\\");
                           §§push(_loc8_);
                           if(_loc9_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc10_ && this)
                                 {
                                 }
                                 §§goto(addr415);
                              }
                              else if("\b" === _loc8_)
                              {
                                 §§push(2);
                                 if(_loc9_ || this)
                                 {
                                    §§goto(addr323);
                                 }
                                 §§goto(addr415);
                              }
                              else
                              {
                                 §§push("\f");
                                 if(!_loc10_)
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc10_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc9_ || _loc2_)
                                          {
                                             addr343:
                                             §§push(3);
                                             if(_loc10_ && _loc2_)
                                             {
                                             }
                                             §§goto(addr415);
                                          }
                                          else
                                          {
                                             addr387:
                                             addr415:
                                             §§push(1);
                                             if(_loc10_ && param1)
                                             {
                                                continue;
                                             }
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(_loc2_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push("\\\"");
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc9_ || this)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc10_ && _loc3_)
                                                            {
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr130:
                                                         _loc2_ = §§pop();
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr94:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop0;
                                                         }
                                                         addr228:
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            §§push(_loc2_);
                                                            if(_loc10_)
                                                            {
                                                               addr264:
                                                               §§push(§§pop() + _loc3_);
                                                               break;
                                                            }
                                                         }
                                                         §§push("\\u");
                                                         §§push(_loc7_);
                                                         if(_loc9_)
                                                         {
                                                            addr249:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               addr248:
                                                               §§push(§§pop() + _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc10_ && param1)
                                                            {
                                                               §§goto(addr440);
                                                            }
                                                            addr257:
                                                            §§push(§§pop());
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            _loc2_ = §§pop();
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   else
                                                   {
                                                      addr195:
                                                      if(§§pop().length == 2)
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push("00");
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr224:
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      else
                                                      {
                                                         §§push("000");
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                   }
                                                   addr440:
                                                   return §§pop() + "\"";
                                                case 1:
                                                   §§push(_loc2_);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      §§push("\\\\");
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr94);
                                                      }
                                                      else
                                                      {
                                                         addr175:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               addr184:
                                                               §§push(§§pop().charCodeAt(0).toString(16));
                                                               §§push(§§pop().charCodeAt(0).toString(16));
                                                               if(!_loc10_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr195);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            break;
                                                         }
                                                         §§push(_loc2_);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr228);
                                                case 2:
                                                   §§push(_loc2_);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      _loc2_ = §§pop() + "\\b";
                                                   }
                                                   else
                                                   {
                                                      addr141:
                                                      _loc2_ = §§pop() + "\\n";
                                                   }
                                                   continue loop0;
                                                case 3:
                                                   §§push(_loc2_);
                                                   §§push("\\f");
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_ || this)
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   §§goto(addr249);
                                                case 4:
                                                   §§goto(addr141);
                                                case 5:
                                                   §§push(_loc2_);
                                                   §§push(_loc2_);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push("\\r");
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc9_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                case 6:
                                                   §§push(_loc2_);
                                                   §§push("\\t");
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr249);
                                                      break;
                                                   }
                                                   _loc2_ = §§pop() + §§pop();
                                                   continue loop0;
                                                default:
                                                   §§goto(addr175);
                                             }
                                             _loc2_ = " ";
                                             §§push(_loc3_);
                                             if(_loc10_ && _loc2_)
                                             {
                                                break;
                                             }
                                             addr274:
                                             continue loop0;
                                             §§push(5);
                                          }
                                          §§goto(addr415);
                                       }
                                       else
                                       {
                                          §§push("\n");
                                          if(!_loc10_)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc10_)
                                             {
                                                addr358:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr415);
                                                      §§push(4);
                                                   }
                                                   else
                                                   {
                                                      addr392:
                                                      §§push(6);
                                                      if(_loc10_ && this)
                                                      {
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                else
                                                {
                                                   §§push("\r");
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr371:
                                                      §§push(_loc8_);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§goto(addr387);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr392);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("\t");
                                                         }
                                                         §§goto(addr392);
                                                      }
                                                      addr391:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr392);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr415);
                                                         §§push(7);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr391);
                                          }
                                          §§push(_loc8_);
                                       }
                                       §§goto(addr415);
                                    }
                                    §§goto(addr391);
                                 }
                                 §§goto(addr371);
                              }
                              §§goto(addr392);
                           }
                           §§goto(addr358);
                        }
                        §§goto(addr415);
                     }
                     §§goto(addr299);
                  }
                  §§goto(addr343);
               }
               §§goto(addr184);
            }
            addr437:
            §§goto(addr249);
         }
      }
      
      private function §-<§(param1:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         for(; _loc3_ < param1.length; _loc3_++,if(!(_loc5_ || _loc3_))
         {
            break;
         })
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop().length > 0)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + ",");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + _loc2_);
                        if(!_loc4_)
                        {
                           addr108:
                           return §§pop() + "]";
                        }
                     }
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr56:
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr64:
                        §§push(§§pop() + this.§4G§(param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                     continue;
                     addr104:
                  }
                  §§goto(addr64);
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§push("[");
         if(_loc5_)
         {
            §§goto(addr104);
         }
         §§goto(addr108);
      }
      
      private function §8!N§(param1:Object) : String
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(!_loc10_)
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            §§push(null);
            if(_loc11_ || param1)
            {
               addr36:
               §§pop().§§slot[5] = §§pop();
               §§push(§§newactivation());
               §§push(null);
            }
            §§pop().§§slot[6] = §§pop();
            §§push(§§newactivation());
            if(!_loc10_)
            {
               §§pop().§§slot[1] = param1;
               if(!(_loc10_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(!(_loc10_ && this))
                  {
                     §§pop().§§slot[2] = "";
                     §§push(§§newactivation());
                  }
                  §§pop().§§slot[3] = describeType(o);
               }
               §§push(§§newactivation());
            }
            if(§§pop().§§slot[3].@name.toString() == "Object")
            {
               var _loc3_:int = 0;
               var _loc4_:* = o;
               loop4:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc11_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && this))
                        {
                           if(_loc11_ || param1)
                           {
                              if(_loc10_ && this)
                              {
                              }
                           }
                           else
                           {
                              addr241:
                              var _loc6_:int = 0;
                              var _loc7_:* = §§checkfilter(classInfo..§*§);
                              var _loc5_:* = new XMLList("");
                              if(_loc10_)
                              {
                              }
                              classInfo..§*§.(if(!_loc11_)
                              {
                                 continue loop0;
                              }, §§push(name() == "variable"), if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§pop();
                                          if(_loc11_ || this)
                                          {
                                             §§push(name() == "accessor");
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr309:
                                                if(§§pop())
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§pop();
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         addr332:
                                                         if(attribute("access").charAt(0) != "r")
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr332);
                                          }
                                          _loc5_[_loc6_] = _loc8_;
                                          continue loop0;
                                       }
                                       §§goto(addr332);
                                    }
                                    §§goto(addr332);
                                 }
                                 §§goto(addr309);
                              }, §§goto(addr332), false);
                              _loc4_ = _loc5_;
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop4;
                                 }
                                 addr530:
                                 §§push("{");
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§push(§§pop() + §§pop().§§slot[2]);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + "}");
                                    }
                                 }
                                 return §§pop();
                                 addr526:
                                 addr528:
                                 addr529:
                              }
                              while(true)
                              {
                                 §§goto(addr526);
                              }
                              addr448:
                           }
                           §§goto(addr530);
                        }
                        §§goto(addr528);
                     }
                     else
                     {
                        §§push(§§newactivation());
                        if(_loc11_ || _loc3_)
                        {
                           §§push(§§nextname(_loc3_,_loc4_));
                           if(!_loc10_)
                           {
                              §§pop().§§slot[5] = §§pop();
                              if(_loc10_)
                              {
                                 continue;
                              }
                              §§push(§§newactivation());
                              if(!_loc10_)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§pop().§§slot[4] = §§pop().§§slot[1][key];
                                    if(_loc10_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(§§newactivation());
                                    if(_loc11_)
                                    {
                                       addr129:
                                       if(§§pop().§§slot[4] is Function)
                                       {
                                          if(_loc10_ && this)
                                          {
                                          }
                                          continue;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc11_ || param1)
                                       {
                                          addr149:
                                          if(§§pop().§§slot[2].length > 0)
                                          {
                                             if(!_loc11_)
                                             {
                                                continue;
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc10_)
                                             {
                                                addr158:
                                                §§push(§§newactivation());
                                                if(!_loc10_)
                                                {
                                                   addr161:
                                                   §§push(§§pop().§§slot[2]);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(",");
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_)
                                                         {
                                                            §§pop().§§slot[2] = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               addr175:
                                                               addr174:
                                                               addr173:
                                                               §§push(§§newactivation());
                                                               §§push(s);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(this.§]B§(key) + ":");
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     addr196:
                                                                     §§push(§§pop() + (§§pop() + this.§4G§(value)));
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               addr198:
                                                               §§pop().§§slot[2] = §§pop();
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr198);
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr129);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr530);
                  }
                  else
                  {
                     §§push(§§newactivation());
                     if(_loc11_)
                     {
                        §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc10_ && this))
                        {
                           §§push(§§newactivation());
                           if(!_loc10_)
                           {
                              §§push(Boolean(§§pop().§§slot[6].metadata));
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && this))
                                    {
                                       addr396:
                                       §§pop();
                                       addr397:
                                       _loc6_ = 0;
                                       _loc7_ = §§checkfilter(v.metadata);
                                       _loc5_ = new XMLList("");
                                       if(_loc10_)
                                       {
                                       }
                                       v.metadata.(!_loc10_);
                                       §§push(_loc5_.length() > 0);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr448);
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc10_)
                                    {
                                       if(§§pop().§§slot[2].length > 0)
                                       {
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                          §§push(§§newactivation());
                                          if(!(_loc10_ && this))
                                          {
                                             addr466:
                                             §§push(§§newactivation());
                                             if(_loc11_)
                                             {
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc11_)
                                                {
                                                   §§push(",");
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§pop().§§slot[2] = §§pop();
                                                         addr525:
                                                         §§push(§§newactivation());
                                                         §§push(s);
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.§]B§(v.@name.toString()) + ":");
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               addr504:
                                                               §§push(§§pop() + this.§4G§(o[v.@name]));
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§§slot[2] = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr525);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr504);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr525);
                                    }
                                    §§goto(addr466);
                                 }
                              }
                              §§goto(addr396);
                           }
                           §§goto(addr466);
                        }
                        §§goto(addr397);
                     }
                     §§goto(addr466);
                  }
               }
            }
            else
            {
               _loc3_ = 0;
               if(_loc11_ || _loc2_)
               {
                  §§goto(addr241);
               }
            }
            §§goto(addr529);
         }
         §§goto(addr36);
      }
   }
}
