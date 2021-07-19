package starling.events
{
   import §!!U§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §]%§:Dictionary;
      
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
            if(this.§]%§ == null)
            {
               if(!_loc5_)
               {
                  addr24:
                  this.§]%§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§]%§[param1];
            if(_loc4_ || this)
            {
               if(_loc3_ != null)
               {
                  this.§]%§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc4_ || this)
                  {
                     addr82:
                  }
                  else
                  {
                     addr117:
                  }
                  return;
               }
               if(_loc4_ || this)
               {
                  this.§]%§[param1] = new <Function>[param2];
               }
               §§goto(addr117);
            }
            §§goto(addr82);
         }
         §§goto(addr24);
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
            loop1:
            while(true)
            {
               §§push(§§newactivation());
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
                           if(!this.§]%§)
                           {
                              return;
                           }
                           loop6:
                           for(; _loc4_ || param1; while(true)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop6;
                              }
                              §§goto(addr109);
                              §§push(§§newactivation());
                           },§§goto(addr73))
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[3] = this.§]%§[type];
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(§§pop().§§slot[3])
                                    {
                                       continue loop6;
                                       addr56:
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop().§§slot[3].length == 0)
                                       {
                                          addr69:
                                          if(_loc5_)
                                          {
                                             addr136:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr56);
                                                §§goto(addr69);
                                             }
                                             addr136:
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          if(!(_loc4_ || this))
                                          {
                                             continue loop8;
                                          }
                                          delete this.§]%§[type];
                                          break;
                                          addr96:
                                       }
                                       this.§]%§[type] = listeners;
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc5_ && _loc3_)
                                          {
                                             §§goto(addr69);
                                          }
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr96);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc4_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
                        §§push(Boolean(this.§]%§));
                        if(_loc3_)
                        {
                           if(_loc2_ && this)
                           {
                              continue loop1;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§]%§ = null;
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 addr25:
                                 return;
                                 addr99:
                              }
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(delete this.§]%§[param1]);
                           }
                        }
                        §§pop();
                        §§goto(addr99);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr25);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc9_)
         {
            var _loc2_:Vector.<Function> = !!this.§]%§ ? this.§]%§[param1.type] : null;
            if(_loc10_ || param1)
            {
               §§push(_loc2_ == null);
               if(!(_loc9_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr59:
                        §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(param1.bubbles);
                           if(!(_loc9_ && this))
                           {
                              addr77:
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                           }
                           §§goto(addr77);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(_loc3_ == null);
                           if(_loc10_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_ || this)
                                       {
                                          addr120:
                                          §§push(!§§pop());
                                          if(_loc10_ || this)
                                          {
                                             addr128:
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   param1.§2!`§(this);
                                                   addr134:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(_loc10_)
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr142:
                                                §§push(0);
                                                if(_loc10_ || _loc3_)
                                                {
                                                }
                                                addr161:
                                                §§push(int(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§goto(addr161);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(!(_loc9_ && this))
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      param1.§#!s§(this);
                                                      if(!_loc9_)
                                                      {
                                                         addr186:
                                                         _loc6_ = 0;
                                                      }
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      if(_loc6_ < _loc5_)
                                                      {
                                                         _loc2_[_loc6_](param1);
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(param1.§4!!§);
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
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§pop();
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(param1.§4'§);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr346:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              addr349:
                                                                              §§push((_loc7_ = this as DisplayObject).parent);
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 if(§§pop() != null)
                                                                                 {
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       param1.§#!s§(null);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                    §§push(_loc7_.parent);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§pop().dispatchEvent(param1);
                                                                              addr381:
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     addr304:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!(_loc9_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.bubbles);
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr271:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         continue loop6;
                                                                                                         addr234:
                                                                                                         if(!(_loc10_ || _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           §§goto(addr346);
                                                                                                                           §§push(this is DisplayObject);
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                               addr248:
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§goto(addr346);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   break loop14;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                             addr338:
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr271);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr346);
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr303:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr304);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            param1.§2!`§(_loc3_);
                                                            addr403:
                                                            return;
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr59);
            }
            addr80:
            return;
         }
         §§goto(addr27);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§]%§ == null);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        addr63:
                        return param1 in this.§]%§;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §-"j§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_ || _loc1_)
         {
            if(this.§]%§)
            {
               addr42:
               for(_loc2_ in this.§]%§)
               {
                  if(_loc5_ || _loc2_)
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
