package starling.events
{
   import §]@§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §<_§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(this.§<_§ == null)
            {
               if(!_loc4_)
               {
                  addr30:
                  this.§<_§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§<_§[param1];
            if(!(_loc4_ && param2))
            {
               if(_loc3_ != null)
               {
                  this.§<_§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc5_ || param2)
                  {
                     if(_loc4_)
                     {
                        this.§<_§[param1] = new <Function>[param2];
                        addr118:
                        addr94:
                     }
                     return;
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr30);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
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
                        while(true)
                        {
                           if(!this.§<_§)
                           {
                              return;
                           }
                           if(_loc4_ || param1)
                           {
                              §§push(§§newactivation());
                              continue loop2;
                           }
                           addr154:
                           loop7:
                           for(; !(_loc5_ && _loc3_); while(true)
                           {
                              if(_loc5_ && param2)
                              {
                                 continue loop7;
                              }
                              §§goto(addr127);
                              §§goto(addr67);
                           },§§goto(addr74))
                           {
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                              §§push(§§newactivation());
                              loop8:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!§§pop().§§slot[3])
                                    {
                                       break;
                                    }
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(§§newactivation());
                                       while(!_loc5_)
                                       {
                                          §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                          {
                                             return param1 != listener;
                                          });
                                          §§push(§§newactivation());
                                          continue loop7;
                                          if(_loc4_ || _loc3_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                           }
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
         if(_loc2_)
         {
            §§push(Boolean(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(Boolean(this.§<_§));
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        addr73:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              addr19:
                              return;
                              addr86:
                           }
                           continue loop3;
                        }
                        continue loop3;
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr73);
                        §§push(delete this.§<_§[param1]);
                     }
                     break;
                  }
                  this.§<_§ = null;
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr19);
               }
               §§goto(addr86);
            }
            §§goto(addr93);
         }
         §§goto(addr48);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§<_§ ? this.§<_§[param1.type] : null;
            if(_loc9_ || this)
            {
               §§push(_loc2_ == null);
               if(!(_loc10_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        §§goto(addr69);
                     }
                     §§goto(addr65);
                  }
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr69);
                     }
                  }
                  var _loc3_:EventDispatcher = param1.target;
                  if(!(_loc10_ && _loc2_))
                  {
                     §§push(_loc3_ == null);
                     if(!_loc10_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc10_ && _loc2_))
                           {
                              addr95:
                              §§pop();
                              if(!(_loc10_ && _loc2_))
                              {
                                 §§push(param1.currentTarget == null);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       addr122:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr130:
                                             param1.§&2§(this);
                                          }
                                       }
                                       §§push(false);
                                    }
                                    var _loc4_:* = §§pop();
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       if(_loc2_ == null)
                                       {
                                          addr146:
                                          §§push(0);
                                          if(_loc9_)
                                          {
                                             addr160:
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       else
                                       {
                                          §§push(int(_loc2_.length));
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§goto(addr160);
                                          }
                                       }
                                       var _loc5_:*;
                                       §§push(_loc5_ = §§pop());
                                       if(!(_loc10_ && this))
                                       {
                                          if(§§pop() != 0)
                                          {
                                             if(!_loc10_)
                                             {
                                                param1.§#o§(this);
                                                if(!_loc10_)
                                                {
                                                   addr180:
                                                   _loc6_ = 0;
                                                }
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                if(_loc6_ >= _loc5_)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr295:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop10:
                                                                  while(_loc10_ && _loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           _loc6_++;
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr319:
                                                                  if(§§pop())
                                                                  {
                                                                     addr320:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr321:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_ && _loc3_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.bubbles);
                                                                              addr266:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr320:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(!_loc10_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       §§push(param1.§9!$§);
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr233:
                                                                                                §§push(§§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr266);
                                                                                          }
                                                                                          break loop7;
                                                                                       }
                                                                                       break loop7;
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 param1.§&2§(_loc3_);
                                                                                 return;
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(this is DisplayObject);
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr311);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§push((_loc7_ = this as DisplayObject).parent);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(§§pop() != null)
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    param1.§#o§(null);
                                                                                    if(_loc10_ && _loc2_)
                                                                                    {
                                                                                    }
                                                                                    addr385:
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc10_ && _loc2_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                                 §§push(_loc7_.parent);
                                                                              }
                                                                              §§goto(addr385);
                                                                           }
                                                                           §§pop().dispatchEvent(param1);
                                                                           §§goto(addr385);
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  addr311:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr321);
                                                }
                                                else
                                                {
                                                   _loc2_[_loc6_](param1);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§goto(addr336);
                                                      §§push(param1.§6^§);
                                                   }
                                                }
                                                §§goto(addr337);
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr146);
                                 }
                              }
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr130);
               }
               §§goto(addr65);
            }
            addr69:
            if(_loc9_)
            {
               §§push(param1.bubbles);
               if(_loc9_)
               {
                  addr65:
                  §§push(!§§pop());
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<_§ == null);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr67);
               }
               §§pop();
               addr63:
               §§push(param1 in this.§<_§);
            }
            addr67:
            return §§pop();
         }
         §§goto(addr63);
      }
      
      public function §8^§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_)
         {
            if(this.§<_§)
            {
               addr28:
               for(_loc2_ in this.§<_§)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr28);
      }
   }
}
