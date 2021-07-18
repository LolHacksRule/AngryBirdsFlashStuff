package starling.events
{
   import §`a§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §%Z§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(this.§%Z§ == null)
            {
               if(!(_loc4_ && param2))
               {
                  addr35:
                  this.§%Z§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§%Z§[param1];
            if(!(_loc4_ && param1))
            {
               if(_loc3_ != null)
               {
                  this.§%Z§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(!_loc5_)
                  {
                     addr123:
                  }
                  return;
               }
               if(_loc5_ || this)
               {
                  this.§%Z§[param1] = new <Function>[param2];
                  addr99:
               }
               §§goto(addr123);
            }
            §§goto(addr99);
         }
         §§goto(addr35);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
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
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr149:
                        while(true)
                        {
                           if(this.§%Z§)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(_loc5_)
                                 {
                                    §§pop().§§slot[3] = this.§%Z§[type];
                                    loop8:
                                    for(; _loc5_ || param2; while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                                {
                                                   return param1 != listener;
                                                });
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          continue loop4;
                                       }
                                       continue loop8;
                                    },continue loop6)
                                    {
                                       §§push(§§newactivation());
                                       while(§§pop().§§slot[3])
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr22);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr22);
                        }
                     }
                  }
               }
            }
            if(_loc4_ && _loc3_)
            {
               continue;
            }
            if(§§pop().§§slot[3].length == 0)
            {
               addr65:
               delete this.§%Z§[type];
               §§goto(addr71);
            }
            this.§%Z§[type] = listeners;
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  if(!(_loc5_ || param1))
                  {
                     §§goto(addr149);
                  }
                  addr22:
                  return;
               }
               §§goto(addr65);
            }
            §§goto(addr71);
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(Boolean(this.§%Z§));
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§%Z§ = null;
                     if(_loc2_ || this)
                     {
                        if(_loc3_ && param1)
                        {
                           addr69:
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(delete this.§%Z§[param1]);
                                 continue loop0;
                              }
                              addr71:
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                        }
                     }
                     else
                     {
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr69);
               }
            }
            §§pop();
            §§goto(addr88);
         }
         §§goto(addr71);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_ || param1)
         {
            var _loc2_:Vector.<Function> = !!this.§%Z§ ? this.§%Z§[param1.type] : null;
            if(_loc9_ || this)
            {
               §§push(_loc2_ == null);
               if(_loc9_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§pop();
                        addr90:
                        if(_loc9_)
                        {
                           §§push(param1.bubbles);
                           if(_loc9_ || _loc2_)
                           {
                              addr80:
                              §§push(!§§pop());
                           }
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!_loc10_)
                        {
                           §§push(_loc3_ == null);
                           if(!_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc9_)
                                          {
                                          }
                                          addr134:
                                          var _loc4_:* = §§pop();
                                          if(!_loc10_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr141:
                                                §§push(0);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   addr160:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§goto(addr160);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc9_ || _loc2_)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!(_loc10_ && this))
                                                   {
                                                      param1.§-;§(this);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         addr190:
                                                         _loc6_ = 0;
                                                         addr189:
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         if(_loc6_ >= _loc5_)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(!(_loc9_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  addr320:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr333:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.bubbles);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   addr288:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                                addr360:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      addr368:
                                                                                                      §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         if(§§pop() != null)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               param1.§-;§(null);
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr410:
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr414:
                                                                                                                     param1.§%!;§(_loc3_);
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            §§push(_loc7_.parent);
                                                                                                         }
                                                                                                         §§goto(addr410);
                                                                                                      }
                                                                                                      §§pop().dispatchEvent(param1);
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                addr287:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr410);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr333:
                                                                                    addr356:
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                           }
                                                                           break;
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 §§goto(addr360);
                                                                                 §§push(this is DisplayObject);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr356);
                                                                        }
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         _loc2_[_loc6_](param1);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr346);
                                                            §§push(param1.§?]§);
                                                         }
                                                         §§goto(addr320);
                                                         §§goto(addr320);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr141);
                                       }
                                    }
                                    addr133:
                                    §§goto(addr134);
                                    §§push(false);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    param1.§%!;§(this);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr133);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc10_ && this))
                     {
                        return;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr90);
               }
               §§goto(addr80);
            }
            §§goto(addr90);
         }
         §§goto(addr31);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%Z§ == null);
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  §§goto(addr43);
               }
               §§goto(addr62);
            }
            addr43:
            if(§§pop())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr62:
                  §§pop();
                  return param1 in this.§%Z§;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §]!K§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_)
         {
            if(this.§%Z§)
            {
               addr37:
               for(_loc2_ in this.§%Z§)
               {
                  if(!_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr37);
      }
   }
}
