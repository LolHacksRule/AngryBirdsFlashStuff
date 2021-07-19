package starling.events
{
   import §7!8§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §9!U§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§9!U§ == null)
            {
               if(!(_loc5_ && this))
               {
                  addr29:
                  this.§9!U§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§9!U§[param1];
            if(!_loc5_)
            {
               if(_loc3_ != null)
               {
                  this.§9!U§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§9!U§[param1] = new <Function>[param2];
                        addr107:
                        addr83:
                     }
                     else
                     {
                        addr79:
                     }
                     return;
                  }
                  §§goto(addr107);
               }
               §§goto(addr83);
            }
            §§goto(addr79);
         }
         §§goto(addr29);
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
                        loop5:
                        while(true)
                        {
                           if(this.§9!U§)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(_loc5_)
                                 {
                                    §§pop().§§slot[3] = this.§9!U§[type];
                                    loop8:
                                    for(; _loc5_ || _loc3_; while(true)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop8;
                                       addr50:
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr22);
                                          }
                                          continue loop5;
                                       }
                                    },§§goto(addr87))
                                    {
                                       if(!(_loc5_ || param2))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(§§pop().§§slot[3])
                                             {
                                                do
                                                {
                                                   §§push(§§newactivation());
                                                   while(_loc5_)
                                                   {
                                                      §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                                      {
                                                         return param1 != listener;
                                                      });
                                                      continue loop8;
                                                   }
                                                   continue loop4;
                                                }
                                                while(_loc4_);
                                                
                                                delete this.§9!U§[type];
                                                break;
                                                addr105:
                                             }
                                             break;
                                          }
                                          continue loop7;
                                          addr69:
                                          if(!(_loc4_ && param2))
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                                 if(!(_loc4_ && param2))
                                 {
                                    §§goto(addr69);
                                 }
                                 §§goto(addr118);
                              }
                           }
                           addr22:
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(param1));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(this.§9!U§));
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§9!U§ = null;
                                 if(!(_loc3_ || param1))
                                 {
                                    while(_loc2_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    addr75:
                                 }
                                 else
                                 {
                                    addr37:
                                 }
                                 return;
                              }
                              if(!_loc2_)
                              {
                                 §§push(delete this.§9!U§[param1]);
                                 while(true)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop4;
                                    }
                                    §§pop();
                                    continue loop3;
                                 }
                                 continue;
                                 addr67:
                              }
                              §§goto(addr75);
                           }
                           addr59:
                        }
                        §§goto(addr67);
                     }
                  }
                  addr104:
               }
               §§goto(addr59);
            }
            §§goto(addr104);
         }
         §§goto(addr37);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§9!U§ ? this.§9!U§[param1.type] : null;
            if(!(_loc10_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(_loc9_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        §§goto(addr79);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ || param1)
                  {
                     §§goto(addr79);
                  }
               }
               var _loc3_:EventDispatcher = param1.target;
               if(_loc9_ || _loc2_)
               {
                  §§push(_loc3_ == null);
                  if(!_loc10_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && param1))
                        {
                           addr105:
                           §§pop();
                           if(_loc9_ || this)
                           {
                              §§push(param1.currentTarget == null);
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr124:
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    addr127:
                                    if(§§pop())
                                    {
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr135:
                                          param1.§%i§(this);
                                          addr138:
                                          §§push(false);
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    if(_loc2_ == null)
                                    {
                                       addr146:
                                       §§push(0);
                                       if(!_loc9_)
                                       {
                                       }
                                       addr155:
                                       §§push(int(§§pop()));
                                    }
                                    else
                                    {
                                       §§push(int(_loc2_.length));
                                       if(_loc9_)
                                       {
                                          §§goto(addr155);
                                       }
                                    }
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(!_loc10_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             param1.§'!`§(this);
                                             if(_loc9_ || _loc2_)
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
                                                if(_loc9_)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr319:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.bubbles);
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ && _loc3_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(param1.§?Z§);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               addr230:
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     addr242:
                                                                                                                     if(_loc10_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     if(!(_loc9_ || param1))
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              _loc6_++;
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr358);
                                                                                                                              }
                                                                                                                              §§goto(addr412);
                                                                                                                           }
                                                                                                                           §§push(true);
                                                                                                                           addr343:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           §§goto(addr412);
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr341:
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        addr266:
                                                                                                                        if(_loc10_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           addr350:
                                                                                                                           addr350:
                                                                                                                           if(this is DisplayObject)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                              {
                                                                                                                                 addr358:
                                                                                                                                 §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() != null)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          param1.§'!`§(null);
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       §§push(_loc7_.parent);
                                                                                                                                    }
                                                                                                                                    addr390:
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr412);
                                                                                                                                 }
                                                                                                                                 §§pop().dispatchEvent(param1);
                                                                                                                              }
                                                                                                                              §§goto(addr412);
                                                                                                                           }
                                                                                                                           §§goto(addr390);
                                                                                                                           §§goto(addr266);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr412:
                                                                                                                     return;
                                                                                                                     §§goto(addr358);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr350);
                                                                                                            }
                                                                                                            §§goto(addr242);
                                                                                                         }
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                      §§goto(addr242);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             param1.§%i§(_loc3_);
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          §§goto(addr230);
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop14;
                                                                                 addr286:
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr412);
                                             }
                                             else
                                             {
                                                _loc2_[_loc6_](param1);
                                                if(_loc9_ || param1)
                                                {
                                                   §§goto(addr341);
                                                   §§push(param1.§@!"§);
                                                }
                                             }
                                             §§goto(addr273);
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr105);
               }
               §§goto(addr135);
            }
            addr79:
            if(_loc9_)
            {
               §§push(param1.bubbles);
               if(!(_loc10_ && this))
               {
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
         if(!_loc2_)
         {
            §§push(this.§9!U§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr62);
               }
               §§pop();
               addr58:
               §§push(param1 in this.§9!U§);
            }
            addr62:
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public function §,!O§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_ || this)
         {
            if(this.§9!U§)
            {
               addr42:
               for(_loc2_ in this.§9!U§)
               {
                  if(!_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr42);
      }
   }
}
