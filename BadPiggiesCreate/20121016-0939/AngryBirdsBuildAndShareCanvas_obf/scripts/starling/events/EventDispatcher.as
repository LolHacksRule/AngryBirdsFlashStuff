package starling.events
{
   import §default§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §@"1§:Dictionary;
      
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(this.§@"1§ == null)
            {
               if(!(_loc4_ && param1))
               {
                  addr35:
                  this.§@"1§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§@"1§[param1];
            if(_loc5_)
            {
               if(_loc3_ != null)
               {
                  this.§@"1§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(!(_loc5_ || this))
                  {
                     addr123:
                  }
                  return;
               }
               if(_loc5_ || this)
               {
                  this.§@"1§[param1] = new <Function>[param2];
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
                  addr168:
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr153:
                        while(true)
                        {
                           if(!this.§@"1§)
                           {
                              §§goto(addr21);
                           }
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop2;
                              addr101:
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                             {
                                                return param1 != listener;
                                             });
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                       addr118:
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(_loc5_ && param1)
            {
               continue;
            }
            if(§§pop().§§slot[3].length == 0)
            {
               addr60:
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr153);
                     }
                     delete this.§@"1§[type];
                     addr21:
                     return;
                     addr72:
                  }
                  §§goto(addr94);
               }
               §§goto(addr128);
            }
            this.§@"1§[type] = listeners;
            if(!(_loc5_ && _loc3_))
            {
               if(!_loc4_)
               {
                  §§goto(addr60);
               }
               §§goto(addr21);
            }
            §§goto(addr72);
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(Boolean(param1));
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§@"1§));
                        if(_loc2_ || param1)
                        {
                           addr65:
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§@"1§ = null;
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr24);
                                    }
                                    addr74:
                                    §§push(delete this.§@"1§[param1]);
                                    break loop2;
                                 }
                                 while(!(_loc2_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 addr24:
                                 return;
                                 addr79:
                                 addr86:
                              }
                              §§goto(addr74);
                              §§goto(addr65);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr79);
                     }
                  }
                  addr108:
               }
               §§goto(addr72);
            }
            §§goto(addr108);
         }
         §§goto(addr86);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!(_loc9_ && _loc3_))
         {
            var _loc2_:Vector.<Function> = !!this.§@"1§ ? this.§@"1§[param1.type] : null;
            if(!(_loc9_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(!(_loc9_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        §§pop();
                        addr81:
                        if(!_loc9_)
                        {
                           §§push(param1.bubbles);
                           if(_loc10_)
                           {
                              addr76:
                              §§push(!§§pop());
                           }
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(_loc10_)
                        {
                           §§push(_loc3_ == null);
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || this)
                                       {
                                          addr115:
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             addr118:
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr126:
                                                   param1.§0'§(this);
                                                   addr129:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          if(_loc2_ == null)
                                          {
                                             addr137:
                                             §§push(0);
                                             if(!(_loc9_ && this))
                                             {
                                                addr156:
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          else
                                          {
                                             §§push(int(_loc2_.length));
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§goto(addr156);
                                             }
                                          }
                                          var _loc5_:*;
                                          §§push(_loc5_ = §§pop());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             if(§§pop() != 0)
                                             {
                                                if(_loc10_ || _loc3_)
                                                {
                                                   param1.§<!D§(this);
                                                   if(!_loc9_)
                                                   {
                                                      addr181:
                                                      _loc6_ = 0;
                                                   }
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   if(_loc6_ >= _loc5_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            addr303:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr304:
                                                               addr325:
                                                               loop5:
                                                               for(; !(_loc9_ && _loc2_); while(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§goto(addr273);
                                                                  §§push(Boolean(§§pop()));
                                                               })
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.bubbles);
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr262:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr344:
                                                                                 §§push((_loc7_ = this as DisplayObject).parent);
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(§§pop() != null)
                                                                                    {
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          param1.§<!D§(null);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§pop().dispatchEvent(param1);
                                                                              }
                                                                           }
                                                                           addr314:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 do
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc10_ || _loc2_))
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr229:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 while(_loc9_);
                                                                                 
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr341:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                           }
                                                                           addr273:
                                                                        }
                                                                        addr381:
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(_loc7_.parent);
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr400:
                                                                              param1.§0'§(_loc3_);
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     _loc6_++;
                                                                     break;
                                                                  }
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     §§goto(addr334);
                                                                     §§push(true);
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   else
                                                   {
                                                      _loc2_[_loc6_](param1);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§goto(addr325);
                                                         §§push(param1.§%!9§);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr126);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        return;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr81);
               }
               §§goto(addr76);
            }
            §§goto(addr81);
         }
         §§goto(addr32);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@"1§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr43);
               }
               §§goto(addr57);
            }
            addr43:
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr57:
                  §§pop();
                  return param1 in this.§@"1§;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §5e§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc5_)
         {
            if(this.§@"1§)
            {
               addr28:
               for(_loc2_ in this.§@"1§)
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
