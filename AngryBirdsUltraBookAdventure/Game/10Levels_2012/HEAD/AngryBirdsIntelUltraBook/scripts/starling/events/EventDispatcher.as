package starling.events
{
   import §1!&§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §@,§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(this.§@,§ == null)
            {
               if(_loc4_ || param1)
               {
                  this.§@,§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§@,§[param1];
         if(_loc4_)
         {
            if(_loc3_ != null)
            {
               this.§@,§[param1] = _loc3_.concat(new <Function>[param2]);
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     addr99:
                     this.§@,§[param1] = new <Function>[param2];
                     addr114:
                  }
                  else
                  {
                     addr95:
                  }
                  return;
               }
               §§goto(addr114);
            }
            §§goto(addr99);
         }
         §§goto(addr95);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(_loc5_)
                        {
                           §§push(Boolean(this.§@,§));
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = this.§@,§[type];
                                       while(true)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_ || param2)
                                             {
                                                §§push(Boolean(§§pop().§§slot[3]));
                                                continue loop6;
                                             }
                                             addr135:
                                             addr135:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop8;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                          addr85:
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop7;
                                          }
                                          §§push(delete this.§@,§[type]);
                                          if(_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          addr134:
                                          while(true)
                                          {
                                             §§goto(addr135);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr22:
                              return;
                           }
                        }
                        continue loop3;
                        addr60:
                        if(_loc5_ || _loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr102:
                     while(true)
                     {
                        §§push(Boolean(this.§@,§));
                        if(_loc3_ && _loc3_)
                        {
                           continue loop0;
                        }
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ || param1))
                     {
                        break;
                     }
                     §§push(delete this.§@,§[param1]);
                     continue loop0;
                  }
                  this.§@,§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr88);
            }
            addr88:
            return;
         }
         §§goto(addr102);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc10_)
         {
            var _loc2_:Vector.<Function> = Boolean(this.§@,§) ? this.§@,§[param1.type] : null;
            if(!(_loc10_ && param1))
            {
               §§push(_loc2_ == null);
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc10_ && this))
                  {
                     §§push(§§pop());
                     if(!(_loc10_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr70:
                           §§pop();
                           if(!_loc10_)
                           {
                              addr73:
                              §§push(param1.bubbles);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    addr86:
                                    if(§§pop())
                                    {
                                       if(_loc9_ || _loc2_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr86);
                           }
                           var _loc3_:EventDispatcher = param1.target;
                           if(_loc9_)
                           {
                              §§push(_loc3_ == null);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc9_ || this)
                                       {
                                          §§pop();
                                          if(!_loc10_)
                                          {
                                             §§push(param1.currentTarget == null);
                                             if(_loc10_ && _loc3_)
                                             {
                                             }
                                             addr182:
                                             var _loc4_:* = Boolean(§§pop());
                                             addr181:
                                             if(_loc9_ || this)
                                             {
                                                if(_loc2_ == null)
                                                {
                                                   addr194:
                                                   §§push(0);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         addr211:
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(int(_loc2_.length));
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr211);
                                                   }
                                                }
                                                var _loc5_:* = §§pop();
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop() != 0)
                                                      {
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            param1.§+!M§(this);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(0);
                                                               if(_loc9_)
                                                               {
                                                                  addr251:
                                                                  §§push(int(§§pop()));
                                                               }
                                                               _loc6_ = §§pop();
                                                               addr253:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     if(§§pop() < _loc5_)
                                                                     {
                                                                        _loc2_[_loc6_](param1);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(param1.§]5§);
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr435:
                                                                                          while(true)
                                                                                          {
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                addr379:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_ && this)
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.bubbles);
                                                                                                                              addr322:
                                                                                                                              §§goto(addr502);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr453);
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                     addr399:
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr502:
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(!(_loc9_ || param1))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             do
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc10_ && this)
                                                                                                      {
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(§§push(§§pop()), if(_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }, _loc10_);
                                                                                             
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   addr305:
                                                                                                   §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               §§push(this is DisplayObject);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      addr376:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                break loop6;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr450:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr453:
                                                                                                _loc7_ = this as DisplayObject;
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   §§push(_loc7_.parent);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(§§pop() != null)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            param1.§+!M§(null);
                                                                                                            if(_loc9_ || _loc2_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr500:
                                                                                                            §§push(Boolean(_loc3_));
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc7_.parent);
                                                                                                      }
                                                                                                      §§goto(addr500);
                                                                                                   }
                                                                                                   §§pop().dispatchEvent(param1);
                                                                                                }
                                                                                                §§goto(addr500);
                                                                                             }
                                                                                             §§goto(addr514);
                                                                                          }
                                                                                          §§goto(addr500);
                                                                                          addr325:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          addr510:
                                                                                          param1.§&z§(_loc3_);
                                                                                       }
                                                                                    }
                                                                                    addr514:
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    addr425:
                                                                                    _loc6_ = §§pop();
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr425);
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr194);
                                          }
                                          addr173:
                                          §§push(false);
                                          if(!(_loc10_ && this))
                                          {
                                             §§goto(addr181);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§push(!§§pop());
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr153:
                                          §§push(Boolean(§§pop()));
                                          if(_loc9_ || _loc2_)
                                          {
                                             addr161:
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   param1.§&z§(this);
                                                }
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr173);
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr70);
            }
            §§goto(addr73);
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@,§ == null);
            if(_loc2_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr72:
                           §§pop();
                           §§push(param1 in this.§@,§);
                           if(!(_loc3_ && this))
                           {
                              addr84:
                              return Boolean(§§pop());
                           }
                        }
                     }
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr84);
         }
         §§goto(addr72);
      }
      
      public function §use§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_ || _loc1_)
         {
            if(this.§@,§)
            {
               var _loc3_:int = 0;
               addr43:
               for(_loc2_ in this.§@,§)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr43);
      }
   }
}
