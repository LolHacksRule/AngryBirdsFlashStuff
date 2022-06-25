package starling.events
{
   import §_-uY§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §_-ia§:Dictionary;
      
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
         if(!(_loc4_ && param1))
         {
            if(this.§_-ia§ == null)
            {
               if(!(_loc4_ && param1))
               {
                  this.§_-ia§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§_-ia§[param1];
         if(_loc5_)
         {
            if(_loc3_ != null)
            {
               this.§_-ia§[param1] = _loc3_.concat(new <Function>[param2]);
               if(_loc4_)
               {
                  addr113:
               }
               return;
            }
            if(_loc5_)
            {
               addr99:
               this.§_-ia§[param1] = new <Function>[param2];
            }
            §§goto(addr113);
         }
         §§goto(addr99);
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
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; _loc4_; loop9:
               while(true)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop().§§slot[3])
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                              {
                                 return param1 != listener;
                              });
                              addr124:
                              §§push(§§newactivation());
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 continue loop9;
                              }
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(§§pop().§§slot[3].length == 0)
                                    {
                                       addr81:
                                       if(!(_loc4_ || param2))
                                       {
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr124);
                                             }
                                             §§goto(addr139);
                                          }
                                          addr122:
                                       }
                                       if(!_loc5_)
                                       {
                                          delete this.§_-ia§[type];
                                          break loop9;
                                          addr96:
                                       }
                                       else
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                    this.§_-ia§[type] = listeners;
                                    if(_loc4_ || param1)
                                    {
                                       if(!(_loc4_ || param2))
                                       {
                                          §§goto(addr81);
                                       }
                                       if(!_loc5_)
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr122);
                     }
                     break;
                  }
                  continue loop2;
               },§§goto(addr21))
               {
                  §§pop().§§slot[1] = param1;
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr154:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           if(!this.§_-ia§)
                           {
                              return;
                              addr139:
                           }
                           else
                           {
                              addr21:
                           }
                           while(_loc4_)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[3] = this.§_-ia§[type];
                                 addr149:
                                 while(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               continue loop0;
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
                        §§push(Boolean(this.§_-ia§));
                        if(!_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§_-ia§ = null;
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       addr75:
                                       §§push(delete this.§_-ia§[param1]);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§pop();
                                          while(true)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                       addr79:
                                    }
                                    else
                                    {
                                       addr54:
                                    }
                                    return;
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr79);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr54);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!(_loc9_ && _loc3_))
         {
            var _loc2_:Vector.<Function> = !!this.§_-ia§ ? this.§_-ia§[param1.type] : null;
            if(!(_loc9_ && this))
            {
               §§push(_loc2_ == null);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(param1.bubbles);
                           if(!(_loc9_ && this))
                           {
                              addr82:
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr90);
                                 }
                              }
                           }
                           §§goto(addr82);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    addr111:
                                    §§pop();
                                    if(!(_loc9_ && this))
                                    {
                                       addr119:
                                       §§push(param1.currentTarget == null);
                                       if(!_loc9_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc9_ && param1))
                                          {
                                             addr133:
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   param1.§_-dc§(this);
                                                }
                                             }
                                          }
                                          addr145:
                                          var _loc4_:* = §§pop();
                                          if(_loc10_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr152:
                                                §§push(0);
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr166:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc10_)
                                                {
                                                   §§goto(addr166);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      param1.§_-j5§(this);
                                                      if(_loc10_)
                                                      {
                                                         addr186:
                                                         _loc6_ = 0;
                                                         addr185:
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         if(_loc6_ >= _loc5_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  addr316:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.bubbles);
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         while(true)
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
                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc10_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(param1.§_-AR§);
                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_ && _loc2_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr361:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr364:
                                                                                                                                             §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                             {
                                                                                                                                                if(§§pop() != null)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      param1.§_-j5§(null);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr406);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc7_.parent);
                                                                                                                                                }
                                                                                                                                                addr406:
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr410:
                                                                                                                                                      param1.§_-dc§(_loc3_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr413);
                                                                                                                                             }
                                                                                                                                             §§pop().dispatchEvent(param1);
                                                                                                                                          }
                                                                                                                                          §§goto(addr413);
                                                                                                                                       }
                                                                                                                                       §§goto(addr406);
                                                                                                                                    }
                                                                                                                                    §§goto(addr361);
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                                 addr225:
                                                                                                                              }
                                                                                                                              §§goto(addr361);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       §§goto(addr361);
                                                                                                                                       §§push(this is DisplayObject);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           addr413:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr364);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr349:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           if(!(_loc10_ || param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr349:
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr225);
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr281:
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             addr348:
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       addr330:
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                 }
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         else
                                                         {
                                                            _loc2_[_loc6_](param1);
                                                            if(!_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(param1.§_-sM§);
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  _loc6_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§push(false);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr119);
                     }
                  }
               }
               §§goto(addr82);
            }
            addr90:
            return;
         }
         §§goto(addr32);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-ia§ == null);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr66:
                        §§pop();
                        return param1 in this.§_-ia§;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §_-J0§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_)
         {
            if(this.§_-ia§)
            {
               addr47:
               for(_loc2_ in this.§_-ia§)
               {
                  if(_loc5_ || _loc2_)
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
