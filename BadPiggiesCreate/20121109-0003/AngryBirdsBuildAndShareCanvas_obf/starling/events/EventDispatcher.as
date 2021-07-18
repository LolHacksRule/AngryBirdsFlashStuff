package starling.events
{
   import §+!-§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §7"6§:Dictionary;
      
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(this.§7"6§ == null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr34:
                  this.§7"6§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§7"6§[param1];
            if(!(_loc5_ && _loc3_))
            {
               if(_loc3_ != null)
               {
                  this.§7"6§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§7"6§[param1] = new <Function>[param2];
                        addr117:
                        addr93:
                     }
                     else
                     {
                        addr89:
                     }
                     return;
                  }
                  §§goto(addr117);
               }
               §§goto(addr93);
            }
            §§goto(addr89);
         }
         §§goto(addr34);
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
                           if(this.§7"6§)
                           {
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = this.§7"6§[type];
                                    addr154:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop().§§slot[3])
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop2;
                                             addr93:
                                             if(!(_loc4_ && param2))
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr22);
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          addr118:
                                       }
                                    }
                                 }
                              }
                              addr146:
                           }
                           §§goto(addr22);
                        }
                        addr55:
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        if(§§pop().§§slot[3].length == 0)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr55);
                                    }
                                    §§goto(addr146);
                                 }
                                 continue loop2;
                                 addr139:
                              }
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                              delete this.§7"6§[type];
                           }
                           §§goto(addr93);
                        }
                        this.§7"6§[type] = listeners;
                        if(_loc5_ || param1)
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              §§goto(addr154);
                           }
                           addr22:
                           return;
                        }
                        §§goto(addr93);
                        §§goto(addr118);
                     }
                  }
               }
            }
            if(_loc4_ && param1)
            {
               continue;
            }
            §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
            {
               return param1 != listener;
            });
            §§goto(addr139);
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            if(_loc2_ || this)
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
                        §§push(Boolean(this.§7"6§));
                        if(!(_loc3_ && _loc2_))
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§7"6§ = null;
                                 if(!(_loc2_ || this))
                                 {
                                    while(!(_loc2_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    addr74:
                                 }
                                 else
                                 {
                                    addr36:
                                 }
                                 return;
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(delete this.§7"6§[param1]);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop();
                                    continue loop3;
                                 }
                                 continue;
                                 addr71:
                              }
                              §§goto(addr74);
                           }
                           addr58:
                        }
                        §§goto(addr71);
                     }
                  }
                  addr103:
               }
               §§goto(addr58);
            }
            §§goto(addr103);
         }
         §§goto(addr36);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc10_)
         {
            var _loc2_:Vector.<Function> = !!this.§7"6§ ? this.§7"6§[param1.type] : null;
            if(_loc10_ || param1)
            {
               §§push(_loc2_ == null);
               if(_loc10_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && param1))
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param1.bubbles);
                           if(!(_loc9_ && this))
                           {
                              addr77:
                              if(!§§pop())
                              {
                                 if(_loc10_ || this)
                                 {
                                    §§goto(addr85);
                                 }
                              }
                           }
                           §§goto(addr77);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc9_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§pop();
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       addr119:
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || this)
                                       {
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             addr133:
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr136:
                                                   param1.§ !!§(this);
                                                }
                                             }
                                             §§push(false);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!(_loc9_ && this))
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr152:
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   addr166:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§goto(addr166);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc10_)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      param1.§#"6§(this);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         addr196:
                                                         _loc6_ = 0;
                                                      }
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      if(_loc6_ >= _loc5_)
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               addr313:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       addr339:
                                                                                       addr349:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       addr349:
                                                                                       §§push((_loc7_ = this as DisplayObject).parent);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(§§pop() != null)
                                                                                          {
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                param1.§#"6§(null);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc7_.parent.dispatchEvent(param1);
                                                                                                   addr374:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr386:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr390:
                                                                                                param1.§ !!§(_loc3_);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                       §§goto(addr374);
                                                                                    }
                                                                                    addr338:
                                                                                 }
                                                                                 addr393:
                                                                                 return;
                                                                              }
                                                                              addr317:
                                                                           }
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc10_ || param1))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§pop();
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§push(param1.§7!d§);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr234:
                                                                                                      }
                                                                                                      addr346:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr390);
                                                                                                      }
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                       }
                                                                                       addr278:
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              if(!(_loc10_ || _loc2_))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.bubbles);
                                                                                                addr263:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      addr337:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr338);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc6_++;
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr278);
                                                                                                   }
                                                                                                   §§goto(addr390);
                                                                                                }
                                                                                             }
                                                                                             addr260:
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                          §§push(this is DisplayObject);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                 }
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                        }
                                                                        addr322:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr260);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      else
                                                      {
                                                         _loc2_[_loc6_](param1);
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr337);
                                                            §§push(param1.§="+§);
                                                         }
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                }
                                                §§goto(addr313);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr119);
                     }
                  }
               }
               §§goto(addr77);
            }
            addr85:
            return;
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7"6§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ && this)
                     {
                     }
                  }
                  §§goto(addr67);
               }
               §§pop();
               addr63:
               §§push(param1 in this.§7"6§);
            }
            addr67:
            return §§pop();
         }
         §§goto(addr63);
      }
      
      public function §9+§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc5_)
         {
            if(this.§7"6§)
            {
               addr38:
               for(_loc2_ in this.§7"6§)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr38);
      }
   }
}
