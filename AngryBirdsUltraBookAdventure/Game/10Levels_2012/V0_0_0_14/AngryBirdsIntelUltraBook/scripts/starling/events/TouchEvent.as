package starling.events
{
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §`!t§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!t§ = "touch";
         }
      }
      
      private var §?!0§:Vector.<§<Q§>;
      
      private var §-!I§:Boolean;
      
      private var §42§:Boolean;
      
      private var §3!k§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§<Q§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param5);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(_loc8_ || param3)
            {
               §§pop().§?!0§ = !!param2 ? param2 : new Vector.<§<Q§>(0);
               while(true)
               {
                  this.§-!I§ = param3;
                  loop2:
                  while(true)
                  {
                     addr46:
                     while(true)
                     {
                        this.§42§ = param4;
                        while(_loc8_)
                        {
                           this.§3!k§ = -1;
                           if(!(_loc9_ && param2))
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
                  if(_loc9_ && param2)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr46);
                  }
                  var _loc6_:int = param2.length;
                  var _loc7_:int = 0;
                  addr103:
                  if(_loc7_ >= _loc6_)
                  {
                     if(_loc9_ && param1)
                     {
                        addr129:
                        if(!(_loc9_ && this))
                        {
                           if(_loc8_)
                           {
                              §§goto(addr103);
                           }
                           addr148:
                           this.§3!k§ = param2[_loc7_].timestamp;
                        }
                        _loc7_++;
                        §§goto(addr129);
                     }
                     return;
                  }
                  if(param2[_loc7_].timestamp > this.§3!k§)
                  {
                     §§goto(addr148);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr79);
         }
      }
      
      public function §0q§(param1:DisplayObject, param2:String = null) : Vector.<§<Q§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§<Q§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§<Q§> = new Vector.<§<Q§>(0);
         var _loc4_:int = this.§?!0§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§?!0§[_loc5_]).target == param1);
            if(_loc10_ || this)
            {
               §§push(§§pop());
               if(_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              loop2:
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
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop27:
                                             while(true)
                                             {
                                                if(_loc9_ && param2)
                                                {
                                                   continue loop5;
                                                }
                                                §§pop();
                                                loop28:
                                                while(_loc10_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == null);
                                                            if(_loc10_ || param1)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr227);
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr271);
                                                                  }
                                                                  addr270:
                                                               }
                                                               break loop28;
                                                            }
                                                            continue loop27;
                                                         }
                                                         continue;
                                                         addr215:
                                                      }
                                                      §§push(§§pop() == _loc6_.phase);
                                                      while(true)
                                                      {
                                                         if(_loc9_ && _loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         loop15:
                                                         for(; !(_loc9_ && _loc3_); if(_loc9_ && this)
                                                         {
                                                            continue;
                                                         },if(!_loc9_)
                                                         {
                                                            §§goto(addr107);
                                                            §§push(Boolean(§§pop()));
                                                         },§§goto(addr271))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr175:
                                                                     while(true)
                                                                     {
                                                                        addr93:
                                                                        addr271:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr107:
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           if(!(_loc10_ || param1))
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           break loop28;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc3_.push(_loc6_);
                                                                        addr138:
                                                                        while(!_loc9_)
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop28;
                                                                        }
                                                                        §§goto(addr175);
                                                                        addr77:
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr84:
                                                                        if(!(_loc10_ || this))
                                                                        {
                                                                           while(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§goto(addr84);
                                                                           }
                                                                           continue loop4;
                                                                           addr205:
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        §§goto(addr93);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§goto(addr77);
                                                                     }
                                                                     §§goto(addr138);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr227:
                                                            while(_loc10_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop27;
                                                                  }
                                                                  addr195:
                                                                  while(true)
                                                                  {
                                                                     addr196:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr215);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr270);
                                 }
                              }
                           }
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr270);
               }
               §§goto(addr234);
            }
            §§goto(addr157);
         }
         return _loc3_;
      }
      
      public function §+?§(param1:DisplayObject, param2:String = null) : §<Q§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§<Q§> = this.§0q§(param1,param2);
         if(_loc5_ || _loc3_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §9!<§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§<Q§> = null;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(this.§+?§(param1) == null)
            {
               if(!_loc4_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§0q§(param1);
         if(_loc5_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(false);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     addr107:
                     return §§pop();
                  }
                  loop2:
                  while(!(_loc5_ || _loc2_))
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  addr86:
               }
               else if(_loc2_[_loc3_].phase != §=<§.§<%§)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr108);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            while(true)
            {
               _loc3_ = §§pop();
               §§goto(addr86);
            }
         }
         §§goto(addr107);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§3!k§;
      }
      
      public function get §;z§() : Vector.<§<Q§>
      {
         return this.§?!0§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!I§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§42§;
      }
   }
}
