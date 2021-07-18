package starling.events
{
   import §'!6§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §-!i§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
            if(this.§-!i§ == null)
            {
               if(_loc4_)
               {
                  this.§-!i§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§-!i§[param1];
         if(!_loc5_)
         {
            if(_loc3_ != null)
            {
               this.§-!i§[param1] = _loc3_.concat(new <Function>[param2]);
               if(!(_loc5_ && _loc3_))
               {
                  if(!_loc4_)
                  {
                     addr93:
                     this.§-!i§[param1] = new <Function>[param2];
                     addr107:
                  }
                  else
                  {
                     addr89:
                  }
                  return;
               }
               §§goto(addr107);
            }
            §§goto(addr93);
         }
         §§goto(addr89);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
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
                        loop5:
                        while(true)
                        {
                           if(this.§-!i§)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(!_loc5_)
                                 {
                                    §§pop().§§slot[3] = this.§-!i§[type];
                                    loop8:
                                    for(; !_loc5_; if(_loc5_ && this)
                                    {
                                       continue;
                                    })
                                    {
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§newactivation());
                                       while(§§pop().§§slot[3])
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr107:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop7;
                                             }
                                             continue loop2;
                                          }
                                          addr63:
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(§§pop().§§slot[3].length != 0)
                                          {
                                             addr27:
                                             this.§-!i§[type] = listeners;
                                             if(_loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr63);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr107);
                                                      }
                                                   }
                                                   addr99:
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                   addr129:
                                                }
                                                if(!(_loc5_ && param2))
                                                {
                                                   continue loop8;
                                                }
                                                §§goto(addr106);
                                             }
                                             §§goto(addr99);
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr99);
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
            if(_loc5_ && _loc3_)
            {
               continue;
            }
            §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
            {
               return param1 != listener;
            });
            §§goto(addr129);
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
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§-!i§));
                        if(_loc2_)
                        {
                           if(_loc3_ && this)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§-!i§ = null;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc2_ || this))
                                    {
                                       addr79:
                                       while(true)
                                       {
                                          §§push(delete this.§-!i§[param1]);
                                          addr83:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop2;
                                             }
                                             §§pop();
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr79:
                                    }
                                    return;
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr83);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr79);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_ || param1)
         {
            var _loc2_:Vector.<Function> = !!this.§-!i§ ? this.§-!i§[param1.type] : null;
            if(_loc9_)
            {
               §§push(_loc2_ == null);
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_ || this)
                        {
                           §§push(param1.bubbles);
                           if(_loc9_ || this)
                           {
                              addr71:
                              if(!§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§goto(addr74);
                                 }
                              }
                           }
                           §§goto(addr71);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(!_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc9_ || param1)
                                          {
                                             addr112:
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                }
                                                addr119:
                                                var _loc4_:Boolean = false;
                                                addr118:
                                                if(!(_loc10_ && this))
                                                {
                                                   if(_loc2_ == null)
                                                   {
                                                      addr131:
                                                      §§push(0);
                                                      if(!_loc10_)
                                                      {
                                                         addr140:
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(int(_loc2_.length));
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = §§pop());
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop() != 0)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            param1.§''§(this);
                                                            if(_loc9_)
                                                            {
                                                               addr160:
                                                               _loc6_ = 0;
                                                               addr159:
                                                            }
                                                            loop0:
                                                            while(true)
                                                            {
                                                               if(_loc6_ < _loc5_)
                                                               {
                                                                  _loc2_[_loc6_](param1);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr323);
                                                                     §§push(param1.§2"U§);
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr292:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr296:
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc10_ && _loc3_)
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.bubbles);
                                                                                             addr261:
                                                                                             while(!_loc10_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr265:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr323:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       _loc6_++;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                                 addr323:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr325);
                                                                              }
                                                                           }
                                                                           §§goto(addr330);
                                                                           if(!(_loc9_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr387);
                                                               §§goto(addr323);
                                                            }
                                                            param1.§#O§(_loc3_);
                                                            §§goto(addr387);
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr118);
                                          }
                                       }
                                       §§goto(addr119);
                                    }
                                    param1.§#O§(this);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr119);
                     }
                  }
               }
               §§goto(addr71);
            }
            addr74:
            return;
         }
         §§goto(addr31);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§-!i§ == null);
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc3_))
               {
                  addr58:
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§pop();
                        addr68:
                        return param1 in this.§-!i§;
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr68);
      }
      
      public function §-"4§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc5_)
         {
            if(this.§-!i§)
            {
               addr48:
               for(_loc2_ in this.§-!i§)
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr48);
      }
   }
}
