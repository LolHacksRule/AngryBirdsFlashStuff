package starling.events
{
   import §'!9§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §!!2§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(this.§!!2§ == null)
            {
               if(!_loc4_)
               {
                  this.§!!2§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§!!2§[param1];
         if(_loc5_)
         {
            if(_loc3_ != null)
            {
               this.§!!2§[param1] = _loc3_.concat(new <Function>[param2]);
               if(_loc4_ && param1)
               {
                  addr113:
               }
               return;
            }
            if(_loc5_)
            {
               this.§!!2§[param1] = new <Function>[param2];
            }
         }
         §§goto(addr113);
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
            addr178:
            while(true)
            {
               §§push(§§newactivation());
               addr171:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr173:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(Boolean(param1));
            if(!(_loc3_ && param1))
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
                        §§push(Boolean(this.§!!2§));
                        if(!(_loc2_ || _loc3_))
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           while(!§§pop())
                           {
                              this.§!!2§ = null;
                              if(_loc2_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    addr24:
                                    return;
                                    addr55:
                                 }
                                 continue loop1;
                              }
                              §§goto(addr24);
                           }
                           §§push(delete this.§!!2§[param1]);
                           break;
                           addr79:
                        }
                        continue loop2;
                     }
                     §§pop();
                     §§goto(addr86);
                  }
                  addr98:
               }
               §§goto(addr79);
            }
            §§goto(addr98);
         }
         §§goto(addr55);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§!!2§ ? this.§!!2§[param1.type] : null;
            if(_loc10_)
            {
               §§push(_loc2_ == null);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           addr57:
                           §§push(param1.bubbles);
                           if(_loc10_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    return;
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc9_ && this))
                        {
                           §§push(_loc3_ == null);
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          addr105:
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             addr108:
                                             if(§§pop())
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   addr116:
                                                   param1.§`"§(this);
                                                }
                                             }
                                             §§push(false);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!_loc9_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr127:
                                                §§push(0);
                                                if(_loc10_ || this)
                                                {
                                                   addr146:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§goto(addr146);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(!(_loc9_ && param1))
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      param1.§%!u§(this);
                                                      if(!_loc9_)
                                                      {
                                                         addr171:
                                                         _loc6_ = 0;
                                                         addr170:
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         if(_loc6_ < _loc5_)
                                                         {
                                                            _loc2_[_loc6_](param1);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(param1.§&c§);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     _loc6_++;
                                                                     if(!(_loc10_ || _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr261:
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop14:
                                                                              for(; _loc10_ || _loc3_; if(!(_loc10_ || param1))
                                                                              {
                                                                                 continue;
                                                                              },if(_loc10_ || this)
                                                                              {
                                                                                 addr229:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.bubbles);
                                                                                                      addr258:
                                                                                                      addr333:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr346);
                                                                                                         }
                                                                                                      }
                                                                                                      addr333:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                      }
                                                                                                   }
                                                                                                   addr255:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr346);
                                                                                                   §§push(this is DisplayObject);
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                             return;
                                                                                             addr334:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                          addr303:
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              },§§goto(addr258))
                                                                              {
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(param1.§;r§);
                                                                                          if(_loc9_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(!§§pop());
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr391:
                                                                                          addr346:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                break loop1;
                                                                                             }
                                                                                             §§goto(addr400);
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          break loop14;
                                                                                       }
                                                                                       addr304:
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              break;
                                                                              while(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                  }
                                                               }
                                                               §§push((_loc7_ = this as DisplayObject).parent);
                                                               if(_loc10_ || this)
                                                               {
                                                                  if(§§pop() != null)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        param1.§%!u§(null);
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                        §§goto(addr391);
                                                                     }
                                                                     addr389:
                                                                     _loc7_.parent.dispatchEvent(param1);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr116);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr57);
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§!!2§ == null);
            if(_loc2_ || this)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        addr52:
                        return param1 in this.§!!2§;
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §#!a§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc6_)
         {
            if(this.§!!2§)
            {
               addr47:
               for(_loc2_ in this.§!!2§)
               {
                  if(!(_loc6_ && _loc2_))
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
