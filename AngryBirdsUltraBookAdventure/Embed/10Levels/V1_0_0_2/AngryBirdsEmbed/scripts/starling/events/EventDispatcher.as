package starling.events
{
   import §9W§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §0e§:Dictionary;
      
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§0e§ == null)
            {
               if(!_loc4_)
               {
                  this.§0e§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§0e§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ == null)
            {
               if(!(_loc4_ && param2))
               {
                  this.§0e§[param1] = new <Function>[param2];
                  addr62:
                  if(_loc4_ && this)
                  {
                  }
               }
            }
            else
            {
               this.§0e§[param1] = _loc3_.concat(new <Function>[param2]);
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var listeners:Vector.<Function> = null;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               var listener:Function = param2;
               if(this.§0e§)
               {
                  §§push(§§newactivation());
                  if(_loc5_ || _loc3_)
                  {
                     §§pop().§§slot[3] = this.§0e§[type];
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && param1))
                        {
                           addr83:
                           if(§§pop().§§slot[3])
                           {
                              if(_loc5_)
                              {
                                 addr88:
                                 listeners = listeners.filter(function(param1:Function, ... rest):Boolean
                                 {
                                    return param1 != listener;
                                 });
                                 if(_loc5_)
                                 {
                                    addr107:
                                    if(listeners.length == 0)
                                    {
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       this.§0e§[type] = listeners;
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              delete this.§0e§[type];
                              if(_loc4_ && param1)
                              {
                              }
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr88);
               }
               addr134:
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr83);
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(param1));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push(Boolean(this.§0e§));
                        if(_loc3_ || this)
                        {
                           addr75:
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr82:
                                 delete this.§0e§[param1];
                                 if(!_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              this.§0e§ = null;
                           }
                        }
                        §§goto(addr82);
                     }
                     return;
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr82);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_ || this)
         {
            var _loc2_:Vector.<Function> = !!this.§0e§ ? this.§0e§[param1.type] : null;
            if(_loc9_ || param1)
            {
               §§push(_loc2_ == null);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && this))
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           addr66:
                           §§push(param1.bubbles);
                           if(_loc9_ || _loc3_)
                           {
                              addr76:
                              if(!§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr76);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(_loc9_ || _loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc9_ || this)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc9_)
                                          {
                                             addr122:
                                             if(§§pop())
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr125:
                                                   param1.§`g§(this);
                                                }
                                             }
                                          }
                                          addr129:
                                          var _loc4_:* = §§pop();
                                          if(_loc9_ || this)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr151:
                                                §§push(0);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   addr165:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(_loc9_)
                                                {
                                                   §§goto(addr165);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      param1.§%$§(this);
                                                      if(_loc9_)
                                                      {
                                                         addr185:
                                                         _loc6_ = 0;
                                                         addr184:
                                                      }
                                                      while(_loc6_ < _loc5_)
                                                      {
                                                         _loc2_[_loc6_](param1);
                                                         if(!_loc10_)
                                                         {
                                                            if(!param1.§ c§)
                                                            {
                                                               _loc6_++;
                                                               continue;
                                                            }
                                                         }
                                                         _loc4_ = true;
                                                         break;
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                addr210:
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§push(!§§pop());
                                                   §§push(!§§pop());
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(Boolean(param1.bubbles));
                                                         if(_loc10_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr237:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(param1.§'q§);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr251);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                addr251:
                                                if(§§pop() && this is DisplayObject)
                                                {
                                                   §§push((_loc7_ = this as DisplayObject).parent);
                                                   if(!_loc10_)
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            param1.§%$§(null);
                                                            if(_loc10_ && _loc3_)
                                                            {
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         §§push(_loc7_.parent);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§pop().dispatchEvent(param1);
                                                }
                                                addr300:
                                                if(_loc3_)
                                                {
                                                   param1.§`g§(_loc3_);
                                                }
                                                return;
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§push(false);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr125);
                     }
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr66);
         }
         §§goto(addr31);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§0e§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc2_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr57);
               }
               §§pop();
               addr53:
               §§push(param1 in this.§0e§);
            }
            addr57:
            return §§pop();
         }
         §§goto(addr53);
      }
      
      public function §&B§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_)
         {
            if(this.§0e§)
            {
               addr47:
               for(_loc2_ in this.§0e§)
               {
                  if(!_loc6_)
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
