package starling.events
{
   import §_-LP§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §_-de§:Dictionary;
      
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
         if(!_loc4_)
         {
            if(this.§_-de§ == null)
            {
               if(_loc5_ || this)
               {
                  this.§_-de§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§_-de§[param1];
         if(!_loc4_)
         {
            if(_loc3_ == null)
            {
               if(_loc5_)
               {
                  addr51:
                  this.§_-de§[param1] = new <Function>[param2];
                  if(_loc4_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               this.§_-de§[param1] = _loc3_.concat(new <Function>[param2]);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || param2)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(!_loc4_)
            {
               §§pop().§§slot[2] = param2;
               if(this.§_-de§ == null)
               {
                  return;
               }
               §§push(§§newactivation());
               if(!(_loc4_ && param1))
               {
                  §§pop().§§slot[3] = this.§_-de§[type];
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop().§§slot[3])
                     {
                        if(_loc5_)
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || param2)
                           {
                              addr80:
                              §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                              {
                                 return param1 != listener;
                              });
                              §§goto(addr87);
                           }
                           addr87:
                           if(listeners.length == 0)
                           {
                              if(_loc4_ && param2)
                              {
                              }
                           }
                           else
                           {
                              this.§_-de§[type] = listeners;
                           }
                           §§goto(addr126);
                        }
                        delete this.§_-de§[type];
                        if(_loc4_ && param2)
                        {
                        }
                     }
                     addr126:
                     return;
                  }
               }
            }
            §§goto(addr87);
         }
         §§goto(addr80);
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§_-de§ == null)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr38);
               }
            }
            if(param1)
            {
               if(!_loc3_)
               {
                  delete this.§_-de§[param1];
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr68);
               }
            }
            else
            {
               this.§_-de§ = null;
            }
            addr68:
            return;
         }
         addr38:
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Function = null;
         var _loc6_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§_-de§ ? this.§_-de§[param1.type] : null;
            if(_loc10_)
            {
               §§push(_loc2_ == null);
               if(_loc10_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && this))
                     {
                        §§pop();
                        addr79:
                        if(!_loc9_)
                        {
                           §§push(param1.bubbles);
                           if(_loc10_ || _loc2_)
                           {
                              addr69:
                              §§push(!§§pop());
                           }
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc9_ && this))
                        {
                           §§push(_loc3_ == null);
                           if(!_loc9_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr118:
                                          §§push(!§§pop());
                                          if(!(_loc9_ && param1))
                                          {
                                             addr126:
                                             if(§§pop())
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   param1.§_-Lb§(this);
                                                   addr137:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr137);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(_loc2_ == null);
                                    if(!_loc9_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                addr153:
                                                §§pop();
                                                addr176:
                                                if(_loc10_)
                                                {
                                                   §§push(_loc2_.length == 0);
                                                   if(_loc10_)
                                                   {
                                                      addr169:
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                for each(_loc5_ in _loc2_)
                                                {
                                                   _loc5_(param1);
                                                   if(_loc10_)
                                                   {
                                                      §§push(param1.§_-MZ§);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               addr213:
                                                               _loc4_ = true;
                                                            }
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§push(!_loc4_);
                                                §§push(!_loc4_);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§pop();
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(Boolean(param1.bubbles));
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr245:
                                                               §§push(§§pop());
                                                               if(_loc10_ || this)
                                                               {
                                                                  addr253:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§push(§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         addr270:
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(!param1.§_-eJ§);
                                                         }
                                                         if(this is DisplayObject)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr276:
                                                               §§push((_loc6_ = this as DisplayObject).parent);
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(§§pop() != null)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        param1.§_-6Y§(null);
                                                                     }
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               §§pop().dispatchEvent(param1);
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         addr303:
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc6_.parent);
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr319:
                                                               param1.§_-Lb§(_loc3_);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr253);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                param1.§_-6Y§(this);
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr69);
                  }
                  if(§§pop())
                  {
                     if(_loc10_ || _loc3_)
                     {
                        return;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr79);
               }
               §§goto(addr69);
            }
            §§goto(addr79);
         }
         §§goto(addr25);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§_-de§ == null);
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr45:
                        §§pop();
                        §§push(this.§_-de§[param1] == null);
                        if(_loc2_)
                        {
                           addr61:
                           §§push(!§§pop());
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
         }
         §§goto(addr45);
      }
      
      public function §_-Gg§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc6_)
         {
            if(this.§_-de§)
            {
               for(_loc2_ in this.§_-de§)
               {
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
               addr24:
            }
            return _loc1_;
         }
         §§goto(addr24);
      }
   }
}
