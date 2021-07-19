package starling.events
{
   import §2Y§.DisplayObject;
   import §2Y§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §]!-§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]!-§ = "touch";
         }
      }
      
      private var §'Z§:Vector.<§?X§>;
      
      private var §`=§:Boolean;
      
      private var §6!V§:Boolean;
      
      private var §8Z§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§?X§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(!(_loc9_ && this))
               {
                  §§pop().§'Z§ = !!param2 ? param2 : new Vector.<§?X§>(0);
                  while(true)
                  {
                     this.§`=§ = param3;
                     continue loop0;
                     addr43:
                     if(!(_loc9_ && param2))
                     {
                        while(true)
                        {
                           this.§8Z§ = -1;
                           if(_loc8_ || this)
                           {
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.§6!V§ = param4;
                              }
                           }
                           while(_loc8_)
                           {
                              §§goto(addr43);
                           }
                           continue loop0;
                        }
                        var _loc6_:int = param2.length;
                        var _loc7_:int = 0;
                        while(true)
                        {
                           if(_loc7_ >= _loc6_)
                           {
                              if(!(_loc9_ && param2))
                              {
                                 break;
                              }
                              while(_loc9_)
                              {
                                 while(true)
                                 {
                                 }
                              }
                              continue;
                              addr124:
                           }
                           else if(param2[_loc7_].timestamp > this.§8Z§)
                           {
                              if(_loc8_ || param2)
                              {
                                 this.§8Z§ = param2[_loc7_].timestamp;
                              }
                              §§goto(addr159);
                           }
                           while(true)
                           {
                              _loc7_++;
                              §§goto(addr124);
                           }
                        }
                        return;
                        addr50:
                     }
                  }
               }
               §§goto(addr84);
            }
         }
         §§goto(addr50);
      }
      
      public function §?0§(param1:DisplayObject, param2:String = null) : Vector.<§?X§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§?X§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§?X§> = new Vector.<§?X§>(0);
         var _loc4_:int = this.§'Z§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§'Z§[_loc5_]).target == param1);
            if(!_loc10_)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr251:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr201:
                                             if(!(_loc9_ || param1))
                                             {
                                                continue;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                _loc8_ = §§pop();
                                                loop11:
                                                while(_loc9_ || param1)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr224:
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc10_)
                                                               {
                                                                  addr181:
                                                                  break;
                                                                  addr181:
                                                               }
                                                               §§push(§§pop() == _loc6_.phase);
                                                               while(_loc9_)
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr185:
                                                                     while(_loc9_ || param2)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           addr234:
                                                                           addr234:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr236:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              break loop22;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr221:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr222:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr221);
                                                               §§goto(addr224);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr170:
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop13:
                                                            while(!_loc10_)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr101:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_.push(_loc6_);
                                                                                    addr108:
                                                                                    while(!(_loc10_ && param2))
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr71:
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       addr78:
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc5_++;
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr71);
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              §§goto(addr78);
                                                                           }
                                                                           addr103:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  §§goto(addr101);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         addr170:
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr233:
                                 while(true)
                                 {
                                    §§goto(addr234);
                                 }
                              }
                           }
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr234);
               }
               §§goto(addr222);
            }
            §§goto(addr154);
         }
         return _loc3_;
      }
      
      public function §>!P§(param1:DisplayObject, param2:String = null) : §?X§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§?X§> = this.§?0§(param1,param2);
         if(!(_loc5_ && param1))
         {
            if(_loc3_.length > 0)
            {
               if(!_loc5_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §[t§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§?X§> = null;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            if(this.§>!P§(param1) == null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§?0§(param1);
         if(!(_loc5_ && this))
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         do
         {
            §§push(_loc3_);
            if(!(_loc5_ && param1))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(false);
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                     addr131:
                     return §§pop();
                  }
               }
               else if(_loc2_[_loc3_].phase != §9i§.§9a§)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc3_ = §§pop();
         }
         while(_loc4_);
         
         §§goto(addr131);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§8Z§;
      }
      
      public function get §5!d§() : Vector.<§?X§>
      {
         return this.§'Z§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`=§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§6!V§;
      }
   }
}
