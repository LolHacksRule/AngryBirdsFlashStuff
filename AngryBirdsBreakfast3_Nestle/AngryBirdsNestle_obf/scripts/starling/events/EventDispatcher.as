package starling.events
{
   import §3!J§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var § "2§:Dictionary;
      
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
            if(this.§ "2§ == null)
            {
               if(!(_loc5_ && param2))
               {
                  addr29:
                  this.§ "2§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§ "2§[param1];
            if(_loc4_ || this)
            {
               if(_loc3_ != null)
               {
                  this.§ "2§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_ || param2)
                  {
                     if(_loc5_)
                     {
                        this.§ "2§[param1] = new <Function>[param2];
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
                  while(!(_loc4_ && param1))
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(true)
                        {
                           if(this.§ "2§)
                           {
                              if(!_loc4_)
                              {
                                 §§push(§§newactivation());
                                 while(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§pop().§§slot[3] = this.§ "2§[type];
                                 }
                                 continue loop2;
                                 addr141:
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(§§pop().§§slot[3])
                                 {
                                    if(_loc4_)
                                    {
                                       do
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc5_)
                                          {
                                             if(§§pop().§§slot[3].length == 0)
                                             {
                                                continue loop7;
                                             }
                                             this.§ "2§[type] = listeners;
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                          §§goto(addr141);
                                       }
                                       while(!(_loc5_ || this));
                                       
                                    }
                                    else
                                    {
                                       addr133:
                                    }
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§newactivation());
                                    continue loop4;
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
                  continue loop1;
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
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr99:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§ "2§));
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        addr61:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr68:
                              §§pop();
                              while(!(_loc2_ || param1))
                              {
                                 continue loop2;
                                 §§goto(addr68);
                              }
                              addr19:
                              return;
                              addr69:
                              addr76:
                           }
                           continue loop4;
                        }
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§ "2§ = null;
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           addr57:
                           §§goto(addr61);
                           §§push(delete this.§ "2§[param1]);
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr57);
                  §§goto(addr99);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr76);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§ "2§ ? this.§ "2§[param1.type] : null;
            if(_loc10_ || this)
            {
               §§push(_loc2_ == null);
               if(_loc10_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§goto(addr59);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr72);
               }
               addr59:
               §§pop();
               if(!_loc9_)
               {
                  addr62:
                  §§push(param1.bubbles);
                  if(_loc10_ || this)
                  {
                     addr72:
                     addr71:
                     if(!§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr75);
                        }
                     }
                     var _loc3_:EventDispatcher = param1.target;
                     if(!(_loc9_ && this))
                     {
                        §§push(_loc3_ == null);
                        if(_loc10_)
                        {
                           if(!§§pop())
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(param1.currentTarget == null);
                                    if(!_loc9_)
                                    {
                                       addr110:
                                       §§push(!§§pop());
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr118:
                                          if(§§pop())
                                          {
                                             if(_loc9_ && param1)
                                             {
                                             }
                                             addr130:
                                             var _loc4_:* = false;
                                             addr129:
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                if(_loc2_ == null)
                                                {
                                                   addr142:
                                                   §§push(0);
                                                   if(!_loc10_)
                                                   {
                                                   }
                                                   addr156:
                                                   §§push(int(§§pop()));
                                                }
                                                else
                                                {
                                                   §§push(int(_loc2_.length));
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      §§goto(addr156);
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
                                                         param1.§-I§(this);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr176:
                                                            _loc6_ = 0;
                                                            addr175:
                                                         }
                                                         loop0:
                                                         while(true)
                                                         {
                                                            if(_loc6_ < _loc5_)
                                                            {
                                                               _loc2_[_loc6_](param1);
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(param1.§,"!§);
                                                               if(_loc10_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(true);
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 addr310:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop8:
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
                                                                                                         addr271:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      addr268:
                                                                                                   }
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr314:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr273:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop14:
                                                                                                   while(_loc10_ || this)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_ && _loc2_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§[x§);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              addr344:
                                                                                                                              §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(§§pop() != null)
                                                                                                                                 {
                                                                                                                                    if(_loc10_ || param1)
                                                                                                                                    {
                                                                                                                                       param1.§-I§(null);
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr374:
                                                                                                                                          _loc7_.parent.dispatchEvent(param1);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr376:
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       addr395:
                                                                                                                                       param1.§>"-§(_loc3_);
                                                                                                                                       break loop0;
                                                                                                                                    }
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              §§goto(addr374);
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                           addr282:
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc9_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 §§push(this is DisplayObject);
                                                                                                                                 break loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop0;
                                                                                                                        }
                                                                                                                        §§goto(addr314);
                                                                                                                        §§goto(addr268);
                                                                                                                     }
                                                                                                                     addr247:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr344);
                                                                                                            }
                                                                                                            §§goto(addr395);
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                         addr235:
                                                                                                      }
                                                                                                      §§goto(addr282);
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr336:
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc6_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 param1.§>"-§(this);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr72);
               }
               addr75:
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§ "2§ == null);
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr56:
                        §§pop();
                        return param1 in this.§ "2§;
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §%"'§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_ || _loc1_)
         {
            if(this.§ "2§)
            {
               addr42:
               var _loc3_:int = 0;
               for(_loc2_ in this.§ "2§)
               {
                  if(_loc5_ || _loc3_)
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
