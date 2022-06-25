package starling.events
{
   import §9E§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §'!]§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(this.§'!]§ == null)
            {
               if(!_loc5_)
               {
                  addr29:
                  this.§'!]§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§'!]§[param1];
            if(_loc4_)
            {
               if(_loc3_ != null)
               {
                  this.§'!]§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc4_)
                     {
                        addr98:
                        this.§'!]§[param1] = new <Function>[param2];
                        addr112:
                     }
                     else
                     {
                        addr94:
                     }
                     return;
                  }
                  §§goto(addr112);
               }
               §§goto(addr98);
            }
            §§goto(addr94);
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
            addr179:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  do
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           while(true)
                           {
                              §§push(delete this.§'!]§[param1]);
                              loop6:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr91:
                                    §§pop();
                                    while(_loc2_ && this)
                                    {
                                       §§goto(addr91);
                                    }
                                    addr25:
                                    return;
                                    addr92:
                                 }
                                 else
                                 {
                                    addr104:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 addr104:
                                 while(true)
                                 {
                                    §§push(Boolean(this.§'!]§));
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    continue loop6;
                                    §§goto(addr104);
                                 }
                                 §§goto(addr91);
                              }
                           }
                           addr85:
                        }
                     }
                     else
                     {
                        this.§'!]§ = null;
                        if(_loc3_ || this)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr92);
                  }
                  while(_loc3_);
                  
                  continue;
               }
               §§goto(addr104);
            }
            §§goto(addr25);
         }
         §§goto(addr85);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_ || _loc2_)
         {
            var _loc2_:Vector.<Function> = !!this.§'!]§ ? this.§'!]§[param1.type] : null;
            if(!(_loc10_ && _loc3_))
            {
               §§push(_loc2_ == null);
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           addr71:
                           §§push(param1.bubbles);
                           if(!(_loc10_ && _loc2_))
                           {
                              addr81:
                              if(!§§pop())
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr81);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc10_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(!(_loc10_ && this))
                                       {
                                          addr134:
                                          §§push(!§§pop());
                                          if(_loc9_ || this)
                                          {
                                             addr142:
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   addr145:
                                                   param1.§ 7§(this);
                                                }
                                             }
                                             §§push(false);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(_loc9_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr156:
                                                §§push(0);
                                                if(_loc10_ && param1)
                                                {
                                                }
                                                addr170:
                                                §§push(int(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr170);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc9_ || this)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      param1.§2!N§(this);
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         addr210:
                                                         _loc6_ = 0;
                                                      }
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      if(_loc6_ >= _loc5_)
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               addr330:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.bubbles);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr283:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            if(_loc10_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc10_ && _loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr310:
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               §§push(param1.§]A§);
                                                                                                               if(!(_loc9_ || this))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     addr420:
                                                                                                                     §§goto(addr365);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr267:
                                                                                                               }
                                                                                                               continue;
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr359:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               addr360:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                         }
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   §§goto(addr267);
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             addr365:
                                                                                             addr365:
                                                                                             addr365:
                                                                                             addr365:
                                                                                             if(this is DisplayObject)
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   param1.§ 7§(_loc3_);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr432:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                        }
                                                                        addr336:
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      _loc2_[_loc6_](param1);
                                                      if(_loc9_)
                                                      {
                                                         §§push(param1.§-6§);
                                                         if(!_loc10_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               _loc6_++;
                                                               continue;
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr365);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§push((_loc7_ = this as DisplayObject).parent);
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            param1.§2!N§(null);
                                                            if(_loc9_ || this)
                                                            {
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         addr418:
                                                         _loc7_.parent.dispatchEvent(param1);
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr156);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr71);
         }
         §§goto(addr31);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'!]§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr42:
                        §§pop();
                        return param1 in this.§'!]§;
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §=!$§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_)
         {
            if(this.§'!]§)
            {
               addr48:
               for(_loc2_ in this.§'!]§)
               {
                  if(!(_loc5_ && this))
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
