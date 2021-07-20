package starling.events
{
   import §^a§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §]J§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.§]J§ == null)
            {
               if(_loc4_)
               {
                  addr24:
                  this.§]J§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§]J§[param1];
            if(!_loc5_)
            {
               if(_loc3_ != null)
               {
                  this.§]J§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(!_loc5_)
                  {
                     addr72:
                  }
                  else
                  {
                     addr107:
                  }
                  return;
               }
               if(!(_loc5_ && param1))
               {
                  this.§]J§[param1] = new <Function>[param2];
               }
               §§goto(addr107);
            }
            §§goto(addr72);
         }
         §§goto(addr24);
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
                        loop5:
                        while(true)
                        {
                           if(this.§]J§)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = this.§]J§[type];
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop().§§slot[3])
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§newactivation());
                                                }
                                                continue loop5;
                                                addr106:
                                             }
                                             §§goto(addr22);
                                          }
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                             {
                                                return param1 != listener;
                                             });
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   continue loop10;
                                                }
                                                continue loop3;
                                                addr60:
                                                if(_loc4_ && this)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                delete this.§]J§[type];
                                                if(_loc5_)
                                                {
                                                   break loop10;
                                                }
                                                §§goto(addr106);
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr40:
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           addr22:
                           return;
                        }
                     }
                  }
               }
            }
            if(_loc4_ && param2)
            {
               continue;
            }
            if(§§pop().§§slot[3].length == 0)
            {
               §§goto(addr60);
            }
            this.§]J§[type] = listeners;
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  §§goto(addr40);
               }
               §§goto(addr60);
            }
            §§goto(addr85);
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
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     loop4:
                     while(true)
                     {
                        §§push(Boolean(this.§]J§));
                        if(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§]J§ = null;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr19);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§push(delete this.§]J§[param1]);
                           }
                           addr19:
                           return;
                           addr57:
                           addr88:
                        }
                        while(!(_loc2_ || param1))
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr57);
            }
         }
         §§goto(addr94);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§]J§ ? this.§]J§[param1.type] : null;
            if(_loc10_)
            {
               §§push(_loc2_ == null);
               if(_loc10_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        addr59:
                        §§pop();
                        §§goto(addr75);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr75:
                        if(_loc10_)
                        {
                           §§push(param1.bubbles);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        return;
                     }
                  }
                  var _loc3_:EventDispatcher = param1.target;
                  if(_loc10_ || param1)
                  {
                     §§push(_loc3_ == null);
                     if(_loc10_ || this)
                     {
                        if(!§§pop())
                        {
                           if(_loc10_ || _loc2_)
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 §§push(param1.currentTarget == null);
                                 if(!_loc9_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc10_)
                                    {
                                       addr118:
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             addr121:
                                             param1.§4!E§(this);
                                          }
                                       }
                                       §§push(false);
                                    }
                                    var _loc4_:* = §§pop();
                                    if(_loc10_ || _loc2_)
                                    {
                                       if(_loc2_ == null)
                                       {
                                          addr137:
                                          §§push(0);
                                          if(!_loc10_)
                                          {
                                          }
                                          addr146:
                                          §§push(int(§§pop()));
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
                                       if(!_loc9_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             if(_loc10_)
                                             {
                                                param1.§"!>§(this);
                                                if(_loc10_)
                                                {
                                                   addr161:
                                                   _loc6_ = 0;
                                                }
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                if(_loc6_ < _loc5_)
                                                {
                                                   _loc2_[_loc6_](param1);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(param1.§<!b§);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr325);
                                                         }
                                                         else
                                                         {
                                                            _loc6_++;
                                                            if(!_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   break;
                                                }
                                                if(!_loc9_)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      addr286:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr296:
                                                            loop10:
                                                            while(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr298:
                                                                  addr254:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr325:
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        addr326:
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.bubbles);
                                                                     addr257:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              addr339:
                                                                              §§push((_loc7_ = this as DisplayObject).parent);
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       param1.§"!>§(null);
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    §§push(_loc7_.parent);
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              §§pop().dispatchEvent(param1);
                                                                              addr366:
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    addr385:
                                                                                    param1.§4!E§(_loc3_);
                                                                                 }
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           addr388:
                                                                           return;
                                                                        }
                                                                        §§goto(addr366);
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop8:
                                                               while(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                    §§push(this is DisplayObject);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                              §§goto(addr385);
                                                                           }
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr296);
                                                                     }
                                                                  }
                                                               }
                                                               §§pop();
                                                               if(!_loc9_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr339);
                                                §§goto(addr331);
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§-!^§);
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         addr212:
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr137);
                                 }
                              }
                              §§goto(addr121);
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§]J§ == null);
            if(!(_loc2_ && param1))
            {
               §§push(!§§pop());
               if(_loc3_ || this)
               {
                  §§goto(addr53);
               }
               §§goto(addr72);
            }
            addr53:
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  addr72:
                  §§pop();
                  return param1 in this.§]J§;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §]!T§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_ || _loc1_)
         {
            if(this.§]J§)
            {
               addr43:
               var _loc3_:int = 0;
               for(_loc2_ in this.§]J§)
               {
                  if(_loc6_ || _loc3_)
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
