package starling.events
{
   import §6!7§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §!l§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            if(this.§!l§ == null)
            {
               if(_loc4_)
               {
                  addr24:
                  this.§!l§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§!l§[param1];
            if(_loc4_)
            {
               if(_loc3_ != null)
               {
                  this.§!l§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(!_loc5_)
                  {
                     if(_loc5_ && param2)
                     {
                        addr94:
                        this.§!l§[param1] = new <Function>[param2];
                        addr109:
                     }
                     return;
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr24);
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
            addr180:
            while(true)
            {
               §§push(§§newactivation());
               addr173:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr175:
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr168:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr170:
                        while(true)
                        {
                           §§push(Boolean(this.§!l§));
                           addr137:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr22:
                                 return;
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§!l§ = null;
                        if(_loc3_)
                        {
                           §§goto(addr20);
                        }
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        §§push(delete this.§!l§[param1]);
                        loop2:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                        addr69:
                     }
                     while(true)
                     {
                        §§push(Boolean(this.§!l§));
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr69);
                     }
                  }
                  addr20:
                  return;
                  addr79:
               }
               §§goto(addr87);
            }
         }
         §§goto(addr79);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:DisplayObject = null;
         if(_loc10_ || param1)
         {
            var _loc2_:Vector.<Function> = Boolean(this.§!l§) ? this.§!l§[param1.type] : null;
            if(!(_loc9_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(!_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc9_ && _loc3_))
                  {
                     addr64:
                     §§push(§§pop());
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(param1.bubbles);
                              if(_loc10_ || this)
                              {
                                 §§push(!§§pop());
                                 if(_loc9_)
                                 {
                                 }
                                 addr87:
                                 if(§§pop())
                                 {
                                    if(_loc10_ || this)
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 var _loc3_:EventDispatcher = param1.target;
                                 if(_loc10_ || _loc2_)
                                 {
                                    §§push(_loc3_ == null);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§pop();
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(param1.currentTarget == null);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr151:
                                                      §§push(!§§pop());
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc9_)
                                                         {
                                                            addr162:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  param1.§,!g§(this);
                                                                  addr169:
                                                                  §§push(false);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     addr177:
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc2_ == null)
                                                            {
                                                               addr185:
                                                               §§push(0);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                  }
                                                               }
                                                               addr207:
                                                               §§push(int(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               §§push(int(_loc2_.length));
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc10_)
                                                               {
                                                                  if(§§pop() != 0)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        param1.§`?§(this);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                        }
                                                                        addr249:
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop() >= _loc5_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          addr382:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop4:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop5:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.bubbles);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop9:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop10:
                                                                                                                                          while(_loc10_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop11:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§>q§);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         if(_loc9_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!(_loc9_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc10_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this is DisplayObject);
                                                                                                                                                                                    if(_loc10_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr443:
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop7;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr503:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop6;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr503);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc7_ = this as DisplayObject;
                                                                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc7_.parent);
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() != null)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             param1.§`?§(null);
                                                                                                                                                                                             addr501:
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc7_.parent);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr503);
                                                                                                                                                                                             §§push(Boolean(_loc3_));
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr501);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().dispatchEvent(param1);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr501);
                                                                                                                                                                              }
                                                                                                                                                                              addr313:
                                                                                                                                                                           }
                                                                                                                                                                           break loop7;
                                                                                                                                                                        }
                                                                                                                                                                        break loop7;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop9;
                                                                                                                                                                  addr296:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr503);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(true);
                                                                                                                                                                        addr420:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop18;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr443);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr419:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr412:
                                                                                                                                                                        _loc6_ = int(§§pop() + 1);
                                                                                                                                                                        addr411:
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr411);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr418:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr515);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr443);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr313);
                                                                                                                                                   }
                                                                                                                                                   break loop6;
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§goto(addr296);
                                                                                                                                          }
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr344:
                                                                                                                                 }
                                                                                                                                 §§goto(addr420);
                                                                                                                              }
                                                                                                                              §§goto(addr443);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr459);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr501);
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr511);
                                                                                                            }
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr511:
                                                                                    param1.§,!g§(_loc3_);
                                                                                    addr515:
                                                                                    return;
                                                                                 }
                                                                                 _loc2_[_loc6_](param1);
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    §§goto(addr418);
                                                                                    §§push(param1.§ ;§);
                                                                                 }
                                                                                 §§goto(addr459);
                                                                              }
                                                                              §§goto(addr411);
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                     }
                                                                     §§push(0);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr237:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc6_ = §§pop();
                                                                     §§goto(addr249);
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr169);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr64);
            }
            addr95:
            return;
         }
         §§goto(addr33);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§!l§ == null);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_ || this)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           addr83:
                           §§pop();
                           §§push(param1 in this.§!l§);
                           if(_loc3_ || _loc2_)
                           {
                              addr95:
                              return Boolean(§§pop());
                           }
                        }
                     }
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr95);
         }
         §§goto(addr83);
      }
      
      public function §8!$§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_ || this)
         {
            if(this.§!l§)
            {
               addr54:
               for(_loc2_ in this.§!l§)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr54);
      }
   }
}
