package starling.events
{
   import §^V§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §&D§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(this.§&D§ == null)
            {
               if(_loc5_ || param2)
               {
                  this.§&D§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§&D§[param1];
         if(_loc5_)
         {
            if(_loc3_ != null)
            {
               this.§&D§[param1] = _loc3_.concat(new <Function>[param2]);
               if(_loc5_ || _loc3_)
               {
                  if(!_loc5_)
                  {
                     addr104:
                     this.§&D§[param1] = new <Function>[param2];
                     addr118:
                  }
                  return;
               }
               §§goto(addr118);
            }
         }
         §§goto(addr104);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var listeners:Vector.<Function> = null;
         loop0:
         while(true)
         {
            var type:String = param1;
            §§push(§§newactivation());
            addr107:
            addr21:
            while(true)
            {
               §§pop().§§slot[2] = param2;
               if(!this.§&D§)
               {
                  break;
               }
               listeners = this.§&D§[type];
               if(!listeners)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            if(_loc2_ || param1)
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
                        §§push(Boolean(this.§&D§));
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr77:
                        if(_loc2_ || _loc3_)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§&D§ = null;
                                 if(_loc2_ || this)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr19:
                                       return;
                                       addr60:
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr19);
                                 addr91:
                              }
                              break;
                              §§goto(addr77);
                           }
                           §§push(delete this.§&D§[param1]);
                           break;
                           addr84:
                        }
                        continue loop2;
                     }
                     §§pop();
                     §§goto(addr91);
                  }
                  addr103:
               }
               §§goto(addr84);
            }
            §§goto(addr103);
         }
         §§goto(addr60);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!(_loc9_ && _loc2_))
         {
            var _loc2_:Vector.<Function> = !!this.§&D§ ? this.§&D§[param1.type] : null;
            if(_loc10_)
            {
               §§push(_loc2_ == null);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr54:
                        §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           addr62:
                           §§push(param1.bubbles);
                           if(!(_loc9_ && _loc2_))
                           {
                              addr72:
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr72);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc9_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    §§pop();
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc9_)
                                          {
                                             addr123:
                                             if(§§pop())
                                             {
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr131:
                                                   param1.§!g§(this);
                                                   addr134:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr147:
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   addr161:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc10_ || param1)
                                                {
                                                   §§goto(addr161);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc10_)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      param1.§1!-§(this);
                                                      if(_loc10_)
                                                      {
                                                         addr191:
                                                         _loc6_ = 0;
                                                      }
                                                   }
                                                   loop0:
                                                   for(; _loc6_ < _loc5_; _loc6_++)
                                                   {
                                                      _loc2_[_loc6_](param1);
                                                      §§push(param1.§^!A§);
                                                      if(!_loc9_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         §§push(true);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            break loop0;
                                                            addr259:
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop();
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(param1.§[!=§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr211:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     addr220:
                                                                     if(!(_loc10_ || _loc3_))
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr302:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              §§push((_loc7_ = this as DisplayObject).parent);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       param1.§1!-§(null);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 addr357:
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc7_.parent);
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       param1.§!g§(_loc3_);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr369);
                                                                              }
                                                                              §§pop().dispatchEvent(param1);
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  addr258:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr259);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr211);
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     §§goto(addr245);
                                                                  }
                                                                  addr369:
                                                                  return;
                                                               }
                                                               §§goto(addr256);
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr276);
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr54);
            }
            §§goto(addr62);
         }
         §§goto(addr32);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&D§ == null);
            if(_loc2_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr51:
                        §§pop();
                        return param1 in this.§&D§;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §!G§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc6_)
         {
            if(this.§&D§)
            {
               addr47:
               var _loc3_:int = 0;
               for(_loc2_ in this.§&D§)
               {
                  if(_loc5_ || _loc3_)
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
