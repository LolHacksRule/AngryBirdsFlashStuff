package starling.events
{
   import § N§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §=p§:Dictionary;
      
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
         if(!_loc5_)
         {
            if(this.§=p§ == null)
            {
               if(!(_loc5_ && param2))
               {
                  addr29:
                  this.§=p§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§=p§[param1];
            if(_loc4_ || param1)
            {
               if(_loc3_ != null)
               {
                  this.§=p§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc5_ && param1)
                  {
                     addr117:
                  }
                  return;
               }
               if(!_loc5_)
               {
                  addr103:
                  this.§=p§[param1] = new <Function>[param2];
               }
               §§goto(addr117);
            }
            §§goto(addr103);
         }
         §§goto(addr29);
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
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = param2;
               addr120:
               while(true)
               {
                  if(!this.§=p§)
                  {
                     return;
                  }
                  addr21:
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(§§newactivation());
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
                        §§push(Boolean(this.§=p§));
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§=p§ = null;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr24:
                                    return;
                                    addr51:
                                 }
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc3_ && this))
                              {
                                 addr92:
                                 delete this.§=p§[param1];
                                 break;
                              }
                              continue loop2;
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr92);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr51);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§=p§ ? this.§=p§[param1.type] : null;
            if(!_loc10_)
            {
               §§push(_loc2_ == null);
               if(!(_loc10_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!(_loc10_ && this))
                        {
                           §§push(param1.bubbles);
                           if(!(_loc10_ && param1))
                           {
                              addr71:
                              if(!§§pop())
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§goto(addr79);
                                 }
                              }
                           }
                           §§goto(addr71);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(_loc9_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc9_ || param1)
                                 {
                                    §§pop();
                                    if(!_loc10_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(!§§pop());
                                          if(!_loc10_)
                                          {
                                             addr122:
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                }
                                                addr129:
                                                var _loc4_:Boolean = false;
                                                addr128:
                                                if(_loc9_)
                                                {
                                                   if(_loc2_ == null)
                                                   {
                                                      addr136:
                                                      §§push(0);
                                                      if(!_loc10_)
                                                      {
                                                         addr150:
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(int(_loc2_.length));
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = §§pop());
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(§§pop() != 0)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            param1.§+Z§(this);
                                                            if(_loc9_)
                                                            {
                                                               addr180:
                                                               _loc6_ = 0;
                                                               addr179:
                                                            }
                                                            loop0:
                                                            while(_loc6_ < _loc5_)
                                                            {
                                                               _loc2_[_loc6_](param1);
                                                               if(param1.§0G§)
                                                               {
                                                                  _loc4_ = true;
                                                                  while(true)
                                                                  {
                                                                     break loop0;
                                                                     addr256:
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(param1.§ J§);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(param1.bubbles));
                                                                                                   addr238:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      break loop10;
                                                                                                   }
                                                                                                }
                                                                                                addr234:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr298:
                                                                                                if(this is DisplayObject)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr301:
                                                                                                      §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop() != null)
                                                                                                         {
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               param1.§+Z§(null);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§pop().dispatchEvent(param1);
                                                                                                      addr338:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(_loc7_.parent);
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            param1.§9X§(_loc3_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   addr350:
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       addr248:
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§goto(addr256);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                break loop9;
                                                                                             }
                                                                                             addr281:
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                    addr217:
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(_loc9_ || _loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr248);
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                              §§goto(addr238);
                                                                              §§goto(addr240);
                                                                           }
                                                                           addr240:
                                                                           addr272:
                                                                        }
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc6_++;
                                                                  if(_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr269:
                                                               while(true)
                                                               {
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr128);
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                    param1.§9X§(this);
                                    §§goto(addr129);
                                 }
                              }
                              §§goto(addr122);
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr71);
            }
            addr79:
            return;
         }
         §§goto(addr26);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§=p§ == null);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr72);
               }
               §§pop();
               addr68:
               §§push(param1 in this.§=p§);
            }
            addr72:
            return §§pop();
         }
         §§goto(addr68);
      }
      
      public function §&O§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_ || this)
         {
            if(this.§=p§)
            {
               addr53:
               for(_loc2_ in this.§=p§)
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr53);
      }
   }
}
