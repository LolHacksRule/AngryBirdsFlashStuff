package starling.events
{
   import §`g§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §=!c§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(this.§=!c§ == null)
            {
               if(!_loc5_)
               {
                  addr29:
                  this.§=!c§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§=!c§[param1];
            if(_loc4_)
            {
               if(_loc3_ != null)
               {
                  this.§=!c§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_ || param2)
                  {
                     if(_loc5_ && this)
                     {
                        addr103:
                        this.§=!c§[param1] = new <Function>[param2];
                        addr117:
                     }
                     return;
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr103);
         }
         §§goto(addr29);
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
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           if(this.§=!c§)
                           {
                              while(_loc5_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§newactivation());
                                    continue loop2;
                                 }
                                 continue loop3;
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr22);
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr22);
                        }
                        loop11:
                        while(!(_loc4_ && param1))
                        {
                           §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                           {
                              return param1 != listener;
                           });
                           do
                           {
                              §§push(§§newactivation());
                              if(_loc5_ || param2)
                              {
                                 addr62:
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop().§§slot[3].length == 0)
                                    {
                                       if(!_loc4_)
                                       {
                                          delete this.§=!c§[type];
                                       }
                                       continue;
                                    }
                                    this.§=!c§[type] = listeners;
                                    if(_loc4_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr43);
                                 }
                                 else
                                 {
                                    loop9:
                                    while(§§pop().§§slot[3])
                                    {
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§newactivation());
                                             continue loop11;
                                          }
                                          else
                                          {
                                             addr174:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr62);
                                             continue loop9;
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 addr22:
                              }
                              continue loop11;
                              return;
                           }
                           while(!(_loc5_ || param2));
                           
                           if(!(_loc5_ || _loc3_))
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr107);
                        }
                     }
                  }
               }
            }
            if(_loc4_ && param1)
            {
               continue;
            }
            §§pop().§§slot[3] = this.§=!c§[type];
            §§goto(addr174);
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(param1));
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(Boolean(this.§=!c§));
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§=!c§ = null;
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§goto(addr24);
                                    }
                                    addr74:
                                    if(_loc2_)
                                    {
                                       addr76:
                                       §§push(delete this.§=!c§[param1]);
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 addr24:
                                 return;
                                 addr81:
                              }
                              §§goto(addr74);
                           }
                        }
                        break;
                     }
                     §§pop();
                     §§goto(addr81);
                  }
                  addr93:
               }
               §§goto(addr72);
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!(_loc9_ && param1))
         {
            var _loc2_:Vector.<Function> = !!this.§=!c§ ? this.§=!c§[param1.type] : null;
            if(_loc10_ || this)
            {
               §§push(_loc2_ == null);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param1.bubbles);
                           if(!_loc10_)
                           {
                           }
                           addr67:
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 return;
                              }
                              addr71:
                              var _loc3_:EventDispatcher = param1.target;
                              if(!_loc9_)
                              {
                                 §§push(_loc3_ == null);
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc10_ || this)
                                       {
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr99:
                                             §§push(param1.currentTarget == null);
                                             if(!_loc9_)
                                             {
                                                addr105:
                                                §§push(!§§pop());
                                                if(_loc10_ || this)
                                                {
                                                   addr113:
                                                   if(§§pop())
                                                   {
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         param1.§<!1§(this);
                                                      }
                                                   }
                                                }
                                                addr125:
                                                var _loc4_:* = §§pop();
                                                if(_loc10_ || _loc2_)
                                                {
                                                   if(_loc2_ == null)
                                                   {
                                                      addr137:
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                         addr146:
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(int(_loc2_.length));
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr146);
                                                      }
                                                   }
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = §§pop());
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(§§pop() != 0)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            param1.§;!;§(this);
                                                            if(!_loc9_)
                                                            {
                                                               addr166:
                                                               _loc6_ = 0;
                                                               addr165:
                                                            }
                                                            loop0:
                                                            while(true)
                                                            {
                                                               if(_loc6_ >= _loc5_)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        addr305:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr311:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr312:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.bubbles);
                                                                                                   addr264:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr265:
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc9_ && _loc2_))
                                                                                                         {
                                                                                                            addr327:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr328:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     addr329:
                                                                                                                     addr349:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(!(_loc10_ || param1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr349:
                                                                                                                     §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(§§pop() != null)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              param1.§;!;§(null);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr379:
                                                                                                                                 _loc7_.parent.dispatchEvent(param1);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  addr328:
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                            addr327:
                                                                                                            addr272:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr327);
                                                                                                         }
                                                                                                         _loc6_++;
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr261:
                                                                                             }
                                                                                             §§goto(addr328);
                                                                                          }
                                                                                       }
                                                                                       addr311:
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                              }
                                                                              §§goto(addr311);
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               _loc2_[_loc6_](param1);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§goto(addr327);
                                                                  §§push(param1.§^X§);
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                            param1.§<!1§(_loc3_);
                                                            addr381:
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  break loop0;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr125);
                                          §§push(false);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr71);
                     }
                     §§push(!§§pop());
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr71);
         }
         §§goto(addr32);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§=!c§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr52);
               }
               §§pop();
               addr48:
               §§push(param1 in this.§=!c§);
            }
            addr52:
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function §@O§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_)
         {
            if(this.§=!c§)
            {
               addr47:
               for(_loc2_ in this.§=!c§)
               {
                  if(!_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr47);
      }
   }
}
