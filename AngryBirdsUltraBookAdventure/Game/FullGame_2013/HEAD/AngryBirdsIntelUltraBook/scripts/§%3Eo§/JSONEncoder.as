package §>o§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class JSONEncoder
   {
       
      
      private var §[!=§:String;
      
      public function JSONEncoder(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§[!=§ = this.§<5§(param1);
         }
         while(!_loc2_);
         
      }
      
      public function getString() : String
      {
         return this.§[!=§;
      }
      
      private function §<5§(param1:*) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc7_)
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr32:
               _loc2_ = new Array();
               for each(_loc3_ in param1)
               {
                  if(_loc7_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
               param1 = _loc2_;
            }
            §§push(param1 is String);
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(this.§'!h§(param1 as String));
                     if(!(_loc6_ && param1))
                     {
                        return §§pop();
                     }
                     addr268:
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(param1 is Array);
                           loop2:
                           while(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(param1 is Object);
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr209:
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(param1 == null);
                                                if(_loc7_ || this)
                                                {
                                                   continue loop5;
                                                }
                                                addr154:
                                                if(_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc7_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                      addr160:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop6;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_ && _loc2_)
                                                            {
                                                               break loop2;
                                                            }
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(this.§ u§(param1));
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr266:
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   addr159:
                                                }
                                                addr250:
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(isFinite(param1 as Number))
                                                            {
                                                               addr304:
                                                               §§push(param1.toString());
                                                               if(!_loc7_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr311:
                                                               §§push("null");
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               addr242:
                                                               while(true)
                                                               {
                                                                  §§push(param1 is Boolean);
                                                                  addr247:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                               }
                                                            }
                                                            addr313:
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   addr294:
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push("true");
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr266);
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr311);
                                                      }
                                                      addr312:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr271);
                                                }
                                                else
                                                {
                                                   §§push("false");
                                                }
                                                addr271:
                                                return §§pop();
                                                §§push(§§pop());
                                             }
                                             §§goto(addr313);
                                          }
                                          §§push("null");
                                          if(!(_loc6_ && param1))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr270);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                              }
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr248);
                        }
                        addr239:
                        return §§pop();
                     }
                  }
                  §§goto(addr271);
               }
               else
               {
                  §§push(param1 is Number);
               }
               §§goto(addr294);
            }
            §§goto(addr209);
         }
         §§goto(addr32);
      }
      
      private function §'!h§(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(§§pop() < _loc4_)
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
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop6:
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(_loc10_ || this)
                              {
                                 §§push("\"");
                                 if(_loc10_ || this)
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc9_ && this))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(0);
                                             if(!(_loc10_ || _loc2_))
                                             {
                                                addr594:
                                             }
                                          }
                                          else
                                          {
                                             addr639:
                                             §§push(7);
                                             if(_loc10_ || _loc3_)
                                             {
                                             }
                                          }
                                          addr649:
                                          if(_loc10_)
                                          {
                                             loop20:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr448:
                                                   _loc2_ += "\\\"";
                                                   addr447:
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      addr655:
                                                      §§push(_loc5_);
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         break loop1;
                                                      }
                                                   }
                                                   continue loop0;
                                                case 1:
                                                   §§push(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      addr434:
                                                      §§push(§§pop() + "\\\\");
                                                      if(!_loc10_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      _loc2_ = §§pop();
                                                   }
                                                   continue;
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   §§goto(addr655);
                                                   break;
                                                case 2:
                                                   addr414:
                                                   §§push(_loc2_ + "\\b");
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr424:
                                                      _loc2_ = §§pop();
                                                      addr425:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr447);
                                                   }
                                                   §§goto(addr655);
                                                case 3:
                                                   addr385:
                                                   §§push(_loc2_);
                                                   if(_loc10_)
                                                   {
                                                      addr388:
                                                      §§push(§§pop() + "\\f");
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            addr404:
                                                            _loc2_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§goto(addr655);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr434);
                                                         }
                                                      }
                                                      addr712:
                                                      §§push(§§pop() + "\"");
                                                      break;
                                                   }
                                                   §§goto(addr414);
                                                   §§goto(addr655);
                                                case 4:
                                                   addr368:
                                                   §§push(_loc2_);
                                                   §§push("\\n");
                                                   if(!_loc9_)
                                                   {
                                                      addr372:
                                                      _loc2_ = §§pop() + §§pop();
                                                      if(!(_loc10_ || this))
                                                      {
                                                         §§goto(addr425);
                                                      }
                                                      addr371:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr655);
                                                case 5:
                                                   addr338:
                                                   §§push(_loc2_ + "\\r");
                                                   if(!_loc9_)
                                                   {
                                                      addr342:
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc10_ || this)
                                                         {
                                                         }
                                                         break loop1;
                                                      }
                                                      §§goto(addr448);
                                                      §§goto(addr655);
                                                   }
                                                   break;
                                                case 6:
                                                   addr311:
                                                   §§push(_loc2_);
                                                   §§push("\\t");
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         addr321:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr329:
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            _loc2_ = §§pop();
                                                            addr332:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr371);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr368);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr338);
                                                   }
                                                   §§goto(addr655);
                                                default:
                                                   §§push(_loc3_);
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(" ");
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(§§pop().length != 2)
                                                                                                   {
                                                                                                      §§push("000");
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop16:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr228:
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr236:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr90:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push("\\u");
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          addr134:
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr138:
                                                                                                                                             §§push(§§pop() + _loc6_);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                break loop7;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc9_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            _loc2_ = §§pop();
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("00");
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        addr211:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr414);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop15;
                                                                                                                                                                  addr200:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr655);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr655);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr448);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr372);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr425);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr211);
                                                                                                                                                }
                                                                                                                                                §§goto(addr311);
                                                                                                                                                addr149:
                                                                                                                                             }
                                                                                                                                             §§goto(addr712);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr311);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr329);
                                                                                                                                 }
                                                                                                                                 §§goto(addr342);
                                                                                                                                 §§goto(addr236);
                                                                                                                              }
                                                                                                                              addr88:
                                                                                                                           }
                                                                                                                           §§goto(addr655);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr311);
                                                                                                                  }
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr321);
                                                                                                         }
                                                                                                      }
                                                                                                      addr703:
                                                                                                      §§push(§§pop() + _loc2_);
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr712);
                                                                                                      }
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   §§goto(addr200);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr404);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          addr305:
                                                                                       }
                                                                                       §§goto(addr655);
                                                                                    }
                                                                                    §§goto(addr424);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr368);
                                                                                 }
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           continue loop3;
                                                                           addr276:
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc9_ && _loc3_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(!(_loc10_ || this))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr88);
                                                                              }
                                                                              §§goto(addr465);
                                                                           }
                                                                           §§goto(addr149);
                                                                        }
                                                                        §§goto(addr434);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr385);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr90);
                                                            }
                                                            §§goto(addr448);
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr338);
                                                      }
                                                   }
                                                   §§goto(addr276);
                                             }
                                             §§goto(addr714);
                                          }
                                          break;
                                       }
                                       §§push("\\");
                                       if(!_loc9_)
                                       {
                                          addr506:
                                          §§push(_loc8_);
                                          if(_loc10_ || _loc2_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(1);
                                                   if(!(_loc10_ || _loc2_))
                                                   {
                                                      addr617:
                                                   }
                                                }
                                                else
                                                {
                                                   addr628:
                                                   §§push(6);
                                                   if(_loc9_ && this)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("\b");
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc9_)
                                                   {
                                                      addr537:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(2);
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr586:
                                                            §§push(4);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§goto(addr594);
                                                            }
                                                         }
                                                         §§goto(addr649);
                                                      }
                                                      else
                                                      {
                                                         §§push("\f");
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     addr568:
                                                                     §§push(3);
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§goto(addr649);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr594);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr614:
                                                                     §§push(5);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr617);
                                                                     }
                                                                     §§goto(addr649);
                                                                  }
                                                                  §§goto(addr649);
                                                               }
                                                               else
                                                               {
                                                                  §§push("\n");
                                                                  if(_loc10_)
                                                                  {
                                                                     addr580:
                                                                     §§push(_loc8_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr583:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr586);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr628);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("\r");
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                           }
                                                                           addr619:
                                                                           if(§§pop() === _loc8_)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§goto(addr628);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr639);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr639);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr649);
                                                                                 §§push(7);
                                                                              }
                                                                              §§goto(addr649);
                                                                           }
                                                                           §§goto(addr639);
                                                                        }
                                                                        §§goto(addr649);
                                                                     }
                                                                     addr611:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr614);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr628);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr619);
                                                                        §§push("\t");
                                                                     }
                                                                     §§goto(addr649);
                                                                  }
                                                                  §§push(_loc8_);
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§goto(addr611);
                                                                  }
                                                                  §§goto(addr619);
                                                               }
                                                            }
                                                            §§goto(addr583);
                                                         }
                                                         §§goto(addr580);
                                                      }
                                                   }
                                                   §§goto(addr580);
                                                }
                                                §§goto(addr619);
                                             }
                                             §§goto(addr649);
                                          }
                                          §§goto(addr537);
                                       }
                                       §§goto(addr580);
                                       §§goto(addr639);
                                    }
                                    §§goto(addr619);
                                 }
                                 §§goto(addr506);
                              }
                              §§goto(addr568);
                           }
                           §§push(int(§§pop()));
                           if(_loc9_)
                           {
                              continue loop1;
                           }
                           §§goto(addr655);
                        }
                     }
                  }
               }
            }
            §§push("\"");
            if(!(_loc9_ && _loc2_))
            {
               §§goto(addr703);
            }
            addr714:
            return §§pop();
         }
      }
      
      private function §3b§(param1:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= param1.length)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push("[");
                        if(_loc4_)
                        {
                           §§push(§§pop() + _loc2_);
                           if(!_loc5_)
                           {
                              addr53:
                              if(_loc4_)
                              {
                                 break;
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       addr94:
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + this.§<5§(param1[_loc3_]));
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc4_)
                                             {
                                                addr83:
                                                §§push(§§pop() + 1);
                                                if(_loc4_ || this)
                                                {
                                                }
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr84:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr86:
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc5_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr86);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                addr83:
                                             }
                                             §§goto(addr83);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc4_ || this)
                  {
                     if(§§pop().length > 0)
                     {
                        §§goto(addr132);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr83);
         }
         addr67:
         §§pop() + "]";
         return §§pop();
      }
      
      private function § u§(param1:Object) : String
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§newactivation());
         if(_loc10_ || _loc3_)
         {
            §§push(null);
            loop0:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(!_loc11_)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           if(!(_loc11_ && _loc3_))
                           {
                              §§push(§§newactivation());
                              loop5:
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[6] = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc11_ && _loc2_)
                                    {
                                       break;
                                       addr77:
                                    }
                                    §§push(§§newactivation());
                                    while(_loc10_)
                                    {
                                       §§pop().§§slot[1] = param1;
                                       while(true)
                                       {
                                          addr53:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop5;
                                          }
                                       }
                                    }
                                    continue loop2;
                                    addr67:
                                    addr125:
                                    while(true)
                                    {
                                       if(!(_loc10_ || this))
                                       {
                                          continue loop6;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       if(!(_loc10_ || this))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc10_)
                                       {
                                          §§pop().§§slot[3] = describeType(o);
                                          if(!_loc11_)
                                          {
                                             continue;
                                          }
                                          addr130:
                                          addr130:
                                          var _loc3_:int = 0;
                                          var _loc4_:* = o;
                                          loop27:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_ || param1)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr297:
                                                         var _loc6_:int = 0;
                                                         var _loc7_:* = §§checkfilter(classInfo..*);
                                                         var _loc5_:* = new XMLList("");
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         loop12:
                                                         while(§§hasnext(_loc7_,_loc6_))
                                                         {
                                                            var _loc8_:* = §§nextvalue(_loc6_,_loc7_);
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            var _loc9_:*;
                                                            with(_loc9_ = _loc8_)
                                                            {
                                                               
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(name() == "variable");
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr455:
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(name() == "accessor");
                                                                                          if(!(_loc11_ && this))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(_loc11_ && _loc3_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         _loc5_[_loc6_] = _loc8_;
                                                                                                      }
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(attribute("access").charAt(0) == "r");
                                                                                                         if(_loc11_ && _loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr362:
                                                                                                         if(!(_loc11_ && param1))
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         addr440:
                                                                                                         while(!_loc11_)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                            §§goto(addr362);
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             addr379:
                                                                                          }
                                                                                          §§goto(addr440);
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr455);
                                                         }
                                                         _loc4_ = _loc5_;
                                                         if(_loc11_ && _loc3_)
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc4_,_loc3_));
                                                            break loop27;
                                                         }
                                                         addr692:
                                                         addr690:
                                                      }
                                                      §§push("{");
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() + s);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr707:
                                                            return §§pop() + "}";
                                                         }
                                                      }
                                                      §§goto(addr707);
                                                   }
                                                   §§goto(addr692);
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                   loop28:
                                                   while(true)
                                                   {
                                                      §§push(§§nextname(_loc3_,_loc4_));
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[5] = §§pop();
                                                         loop30:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop31:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[4] = §§pop().§§slot[1][key];
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        loop35:
                                                                        while(!(§§pop().§§slot[4] is Function))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc10_)
                                                                           {
                                                                              if(§§pop().§§slot[2].length > 0)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr237:
                                                                                    §§push(§§newactivation());
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[2]);
                                                                                          addr241:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(",");
                                                                                             addr242:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr243:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr244:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§§slot[2] = §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop28;
                                                                                    addr237:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr245:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc11_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       §§push(§§pop().§§slot[2]);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                §§push(this.§'!h§(key) + ":");
                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + this.§<5§(value));
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr191:
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         §§pop().§§slot[2] = §§pop();
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc11_ && _loc3_)
                                                                                                            {
                                                                                                               break loop35;
                                                                                                            }
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr242);
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr241);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr244);
                                                                                       }
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr237);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr692);
                                             }
                                             else
                                             {
                                                §§push(§§newactivation());
                                                if(_loc10_)
                                                {
                                                   §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc10_ || this)
                                                      {
                                                         addr499:
                                                         §§push(Boolean(§§pop().§§slot[6].metadata));
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc10_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_ = 0;
                                                                     _loc7_ = §§checkfilter(v.metadata);
                                                                     _loc5_ = new XMLList("");
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                     while(§§hasnext(_loc7_,_loc6_))
                                                                     {
                                                                        _loc8_ = §§nextvalue(_loc6_,_loc7_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           with(_loc8_)
                                                                           {
                                                                              
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(@name == "Transient")
                                                                                 {
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       _loc5_[_loc6_] = _loc8_;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(_loc5_.length() > 0);
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        addr584:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              addr587:
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§push(§§newactivation());
                                                                        if(_loc10_)
                                                                        {
                                                                           addr591:
                                                                           if(§§pop().§§slot[2].length > 0)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 addr605:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[2]);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(",");
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                addr635:
                                                                                                §§pop().§§slot[2] = §§pop();
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   addr645:
                                                                                                   §§push(§§newactivation());
                                                                                                   §§push(s);
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      addr653:
                                                                                                      §§push(this.§'!h§(v.@name.toString()) + ":");
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         addr668:
                                                                                                         §§push(§§pop() + this.§<5§(o[v.@name]));
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().§§slot[2] = §§pop();
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr653);
                                                                                       }
                                                                                       §§goto(addr668);
                                                                                    }
                                                                                    §§goto(addr635);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr645);
                                                                        }
                                                                        §§goto(addr605);
                                                                     }
                                                                     §§goto(addr584);
                                                                  }
                                                                  §§goto(addr645);
                                                               }
                                                               §§goto(addr584);
                                                            }
                                                         }
                                                         §§goto(addr584);
                                                      }
                                                      §§goto(addr591);
                                                   }
                                                   §§goto(addr587);
                                                }
                                                §§goto(addr499);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr77);
                                       }
                                    }
                                    if(§§pop().§§slot[3].@name.toString() == "Object")
                                    {
                                       §§goto(addr130);
                                    }
                                    else
                                    {
                                       _loc3_ = 0;
                                       if(!(_loc11_ && this))
                                       {
                                          §§goto(addr297);
                                       }
                                    }
                                    §§goto(addr297);
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           §§goto(addr130);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr125);
      }
   }
}
