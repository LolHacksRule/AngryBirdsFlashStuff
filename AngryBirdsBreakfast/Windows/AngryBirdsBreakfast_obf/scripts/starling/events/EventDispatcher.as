package starling.events
{
   import §6![§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §4"&§:Dictionary;
      
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
         if(_loc4_ || _loc3_)
         {
            if(this.§4"&§ == null)
            {
               if(_loc4_)
               {
                  addr29:
                  this.§4"&§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§4"&§[param1];
            if(_loc4_ || param2)
            {
               if(_loc3_ != null)
               {
                  this.§4"&§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc5_ && _loc3_)
                  {
                     addr117:
                  }
                  return;
               }
               if(!_loc5_)
               {
                  this.§4"&§[param1] = new <Function>[param2];
                  addr93:
               }
               §§goto(addr117);
            }
            §§goto(addr93);
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
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           if(this.§4"&§)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(!_loc4_)
                                 {
                                    §§pop().§§slot[3] = this.§4"&§[type];
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop9:
                                       while(true)
                                       {
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop().§§slot[3])
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                             {
                                                return param1 != listener;
                                             });
                                             §§push(§§newactivation());
                                             addr129:
                                             continue loop6;
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop().§§slot[3].length == 0)
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            delete this.§4"&§[type];
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§4"&§[type] = listeners;
                                                         if(_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      break loop9;
                                                      addr99:
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           return;
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
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§4"&§));
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§4"&§ = null;
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    break loop0;
                                 }
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(delete this.§4"&§[param1]);
                                 break loop2;
                              }
                           }
                           addr20:
                           return;
                           addr51:
                           addr79:
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr51);
            }
            §§goto(addr20);
         }
         §§goto(addr55);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc10_)
         {
            var _loc2_:Vector.<Function> = !!this.§4"&§ ? this.§4"&§[param1.type] : null;
            if(_loc10_ || this)
            {
               §§push(_loc2_ == null);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(param1.bubbles);
                           if(!(_loc9_ && this))
                           {
                              addr72:
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§goto(addr75);
                                 }
                              }
                           }
                           §§goto(addr72);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc9_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       addr104:
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_)
                                       {
                                          addr110:
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             addr113:
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr116:
                                                   param1.§5",§(this);
                                                }
                                             }
                                             §§push(false);
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc10_)
                                       {
                                          if(_loc2_ == null)
                                          {
                                             addr127:
                                             §§push(0);
                                             if(_loc9_ && param1)
                                             {
                                             }
                                             addr146:
                                             §§push(int(§§pop()));
                                          }
                                          else
                                          {
                                             §§push(int(_loc2_.length));
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§goto(addr146);
                                             }
                                          }
                                          var _loc5_:*;
                                          §§push(_loc5_ = §§pop());
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(§§pop() != 0)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   param1.§=!^§(this);
                                                   if(!_loc9_)
                                                   {
                                                      addr181:
                                                      _loc6_ = 0;
                                                      addr170:
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
                                                         §§push(param1.§4n§);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               _loc6_++;
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop0;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               §§push(true);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        addr288:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc10_ || _loc2_)
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
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                addr231:
                                                                                                if(_loc9_ && param1)
                                                                                                {
                                                                                                   addr270:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(param1.§,G§);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr231);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr285:
                                                                                                         }
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                   addr270:
                                                                                                }
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   addr245:
                                                                                                   §§pop();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(this is DisplayObject);
                                                                                                            break loop8;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr302:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr302:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.bubbles);
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr302);
                                                                                                   }
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                                continue loop2;
                                                                                                addr219:
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                       }
                                                                                       addr265:
                                                                                    }
                                                                                    §§goto(addr302);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break loop1;
                                                                              }
                                                                              §§goto(addr365);
                                                                           }
                                                                           addr361:
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr365:
                                                                                 param1.§5",§(_loc3_);
                                                                                 addr368:
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§push((_loc7_ = this as DisplayObject).parent);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  param1.§=!^§(null);
                                                                  if(_loc9_ && _loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               _loc7_.parent.dispatchEvent(param1);
                                                               addr349:
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr104);
                     }
                  }
               }
               §§goto(addr72);
            }
            addr75:
            return;
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§4"&§ == null);
            if(!(_loc3_ && _loc2_))
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
                        return param1 in this.§4"&§;
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §set §() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc6_ || this)
         {
            if(this.§4"&§)
            {
               addr43:
               for(_loc2_ in this.§4"&§)
               {
                  if(!(_loc5_ && this))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr43);
      }
   }
}
