package starling.events
{
   import §2Y§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §%!O§:Dictionary;
      
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
         if(_loc4_ || _loc3_)
         {
            if(this.§%!O§ == null)
            {
               if(!_loc5_)
               {
                  this.§%!O§ = new Dictionary();
               }
            }
         }
         var _loc3_:Vector.<Function> = this.§%!O§[param1];
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_ != null)
            {
               this.§%!O§[param1] = _loc3_.concat(new <Function>[param2]);
               if(_loc4_)
               {
                  addr82:
               }
               else
               {
                  addr112:
               }
               return;
            }
            if(_loc4_)
            {
               this.§%!O§[param1] = new <Function>[param2];
            }
            §§goto(addr112);
         }
         §§goto(addr82);
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
                  while(!_loc4_)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(_loc5_)
                        {
                           if(this.§%!O§)
                           {
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(!_loc4_)
                                 {
                                    §§pop().§§slot[3] = this.§%!O§[type];
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       while(§§pop().§§slot[3])
                                       {
                                          while(!_loc4_)
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[3] = listeners.filter(function(param1:Function, ... rest):Boolean
                                                   {
                                                      return param1 != listener;
                                                   });
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                          continue loop5;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr22);
                                 }
                              }
                           }
                           addr22:
                           return;
                        }
                        continue loop3;
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
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §§push(delete this.§%!O§[param1]);
                              loop5:
                              while(true)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr99:
                                       while(true)
                                       {
                                          §§push(Boolean(this.§%!O§));
                                          if(!(_loc3_ && param1))
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                       continue loop5;
                                    }
                                    addr98:
                                 }
                                 §§pop();
                                 break loop3;
                              }
                           }
                           addr71:
                        }
                        break;
                     }
                     this.§%!O§ = null;
                     if(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           break loop0;
                        }
                        §§goto(addr99);
                     }
                     break;
                     §§goto(addr99);
                  }
                  addr19:
                  return;
                  addr67:
               }
               §§goto(addr98);
            }
            §§goto(addr19);
         }
         §§goto(addr71);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(!_loc10_)
         {
            var _loc2_:Vector.<Function> = !!this.§%!O§ ? this.§%!O§[param1.type] : null;
            if(!_loc10_)
            {
               §§push(_loc2_ == null);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || _loc3_)
                     {
                        §§pop();
                        if(_loc9_ || _loc2_)
                        {
                           addr61:
                           §§push(param1.bubbles);
                           if(!(_loc10_ && _loc2_))
                           {
                              addr71:
                              addr70:
                              if(!§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§goto(addr74);
                                 }
                              }
                              var _loc3_:EventDispatcher = param1.target;
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(_loc3_ == null);
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§pop();
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(param1.currentTarget == null);
                                             if(_loc9_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc10_)
                                                {
                                                }
                                                addr124:
                                                var _loc4_:* = §§pop();
                                                if(_loc9_ || _loc2_)
                                                {
                                                   if(_loc2_ == null)
                                                   {
                                                      addr136:
                                                      §§push(0);
                                                      if(!_loc9_)
                                                      {
                                                      }
                                                      addr150:
                                                      §§push(int(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      §§push(int(_loc2_.length));
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = §§pop());
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(§§pop() != 0)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            param1.§1!+§(this);
                                                            if(_loc9_)
                                                            {
                                                               addr170:
                                                               _loc6_ = 0;
                                                               addr169:
                                                            }
                                                            loop0:
                                                            while(true)
                                                            {
                                                               if(_loc6_ >= _loc5_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        addr297:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr303:
                                                                                             §§pop();
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.bubbles);
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc9_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_ && param1)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(param1.§<U§);
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 addr208:
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                          {
                                                                                                                                             addr227:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop9;
                                                                                                                                                }
                                                                                                                                                if(!(_loc9_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   break loop9;
                                                                                                                                                }
                                                                                                                                                addr244:
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this is DisplayObject);
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                         break loop9;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(true);
                                                                                                                                                         addr328:
                                                                                                                                                         addr348:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            if(_loc10_ && param1)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         addr348:
                                                                                                                                                         §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != null)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  param1.§1!+§(null);
                                                                                                                                                                  if(_loc10_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr390:
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr394:
                                                                                                                                                                        param1.§&z§(_loc3_);
                                                                                                                                                                        break loop13;
                                                                                                                                                                     }
                                                                                                                                                                     break loop13;
                                                                                                                                                                  }
                                                                                                                                                                  break loop13;
                                                                                                                                                               }
                                                                                                                                                               _loc7_.parent.dispatchEvent(param1);
                                                                                                                                                               addr378:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr390);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr378);
                                                                                                                                                      }
                                                                                                                                                      addr327:
                                                                                                                                                   }
                                                                                                                                                   break loop13;
                                                                                                                                                }
                                                                                                                                                continue loop9;
                                                                                                                                             }
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr244);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          _loc6_++;
                                                                                                                                          if(!(_loc10_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr348);
                                                                                                                                       §§goto(addr208);
                                                                                                                                    }
                                                                                                                                    addr326:
                                                                                                                                 }
                                                                                                                                 §§goto(addr327);
                                                                                                                              }
                                                                                                                              §§goto(addr244);
                                                                                                                           }
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr227);
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                               §§goto(addr394);
                                                                                                            }
                                                                                                            §§goto(addr390);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr303);
                                                                                                }
                                                                                                addr311:
                                                                                             }
                                                                                             break loop13;
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               else
                                                               {
                                                                  _loc2_[_loc6_](param1);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr326);
                                                                     §§push(param1.§&!R§);
                                                                  }
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr124);
                                          }
                                          addr120:
                                          param1.§&z§(this);
                                          §§goto(addr124);
                                          §§push(false);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§goto(addr120);
                                       }
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr71);
                        }
                        addr74:
                        return;
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr61);
         }
         §§goto(addr26);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%!O§ == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr57);
               }
               §§pop();
               addr53:
               §§push(param1 in this.§%!O§);
            }
            addr57:
            return §§pop();
         }
         §§goto(addr53);
      }
      
      public function §2!I§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(!_loc5_)
         {
            if(this.§%!O§)
            {
               addr38:
               for(_loc2_ in this.§%!O§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr38);
      }
   }
}
