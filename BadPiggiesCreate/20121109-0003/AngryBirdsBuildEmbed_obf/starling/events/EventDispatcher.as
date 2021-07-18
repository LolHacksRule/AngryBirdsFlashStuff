package starling.events
{
   import §-!`§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §'z§:Dictionary;
      
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
         if(_loc4_ || param2)
         {
            if(this.§'z§ == null)
            {
               if(_loc4_)
               {
                  this.§'z§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§'z§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc5_ && param1))
               {
                  this.§'z§[param1] = new <Function>[param2];
                  if(!(_loc5_ && _loc3_))
                  {
                     addr92:
                  }
               }
            }
            else
            {
               this.§'z§[param1] = _loc3_.concat(new <Function>[param2]);
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§pop().§§slot[3] = null;
            if(_loc4_)
            {
               §§push(§§newactivation());
               if(!(_loc5_ && param1))
               {
                  §§pop().§§slot[1] = param1;
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§pop().§§slot[2] = param2;
                     §§goto(addr126);
                  }
                  if(§§pop().§§slot[3])
                  {
                     §§push(§§newactivation());
                     if(_loc4_ || param1)
                     {
                        addr97:
                        §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                        {
                           return param1 != listener;
                        });
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr126);
               }
               if(§§pop().§§slot[3].length == 0)
               {
                  if(!_loc5_)
                  {
                     delete this.§'z§[type];
                  }
               }
               else
               {
                  this.§'z§[type] = listeners;
               }
            }
            addr126:
            if(this.§'z§)
            {
               §§push(§§newactivation());
               if(_loc4_ || this)
               {
                  §§pop().§§slot[3] = this.§'z§[type];
                  §§push(§§newactivation());
               }
            }
            return;
         }
         §§goto(addr97);
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(Boolean(this.§'z§));
                        if(_loc3_ || this)
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr73);
                  }
               }
            }
            addr65:
            if(§§pop())
            {
               if(_loc3_ || this)
               {
                  addr77:
                  delete this.§'z§[param1];
                  addr73:
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               this.§'z§ = null;
            }
            §§goto(addr84);
         }
         §§goto(addr77);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_ || param1)
         {
            var _loc2_:Vector.<Function> = !!this.§'z§ ? this.§'z§[param1.type] : null;
            if(!(_loc10_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(param1.bubbles);
                           if(!_loc10_)
                           {
                              addr66:
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    addr70:
                                    var _loc3_:EventDispatcher = param1.target;
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(_loc3_ == null);
                                       if(!_loc10_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(param1.currentTarget == null);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc10_ && this))
                                                      {
                                                         addr112:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               addr120:
                                                               param1.§#!0§(this);
                                                            }
                                                         }
                                                      }
                                                      addr124:
                                                      var _loc4_:* = §§pop();
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(_loc2_ == null)
                                                         {
                                                            addr136:
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                            }
                                                            addr145:
                                                            §§push(int(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            §§push(int(_loc2_.length));
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr145);
                                                            }
                                                         }
                                                         var _loc5_:*;
                                                         §§push(_loc5_ = §§pop());
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            if(§§pop() != 0)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  param1.§0!q§(this);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr175:
                                                                     _loc6_ = 0;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_ < _loc5_)
                                                                  {
                                                                     _loc2_[_loc6_](param1);
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        if(!param1.§%A§)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(true);
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr219);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr219:
                                                                     §§push(!_loc4_);
                                                                     §§push(!_loc4_);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(param1.bubbles);
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    addr249:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       addr257:
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr261:
                                                                                             §§pop();
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                addr269:
                                                                                                §§push(param1.§6!u§);
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   addr279:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr283:
                                                                                                         §§pop();
                                                                                                         addr284:
                                                                                                         §§push(this is DisplayObject);
                                                                                                      }
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr298:
                                                                                                      §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop() != null)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               param1.§0!q§(null);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr320:
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  param1.§#!0§(_loc3_);
                                                                                                                  break;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc7_.parent);
                                                                                                         }
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                      §§pop().dispatchEvent(param1);
                                                                                                   }
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr298);
                                                                  §§goto(addr279);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                }
                                                §§goto(addr124);
                                                §§push(false);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr112);
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr66);
                        }
                        return;
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr70);
         }
         §§goto(addr31);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§'z§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr42);
               }
               §§goto(addr51);
            }
            addr42:
            if(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr51:
                  §§pop();
                  §§push(param1 in this.§'z§);
               }
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function §%]§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_)
         {
            if(this.§'z§)
            {
               addr48:
               for(_loc2_ in this.§'z§)
               {
                  if(!(_loc5_ && _loc2_))
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
