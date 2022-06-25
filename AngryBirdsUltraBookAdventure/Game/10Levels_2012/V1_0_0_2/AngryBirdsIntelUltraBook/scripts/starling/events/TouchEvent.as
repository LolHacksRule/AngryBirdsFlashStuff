package starling.events
{
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2!6§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2!6§ = "touch";
         }
      }
      
      private var §5!A§:Vector.<§`i§>;
      
      private var §"s§:Boolean;
      
      private var §%!P§:Boolean;
      
      private var §#5§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§`i§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
         }
         while(true)
         {
            §§push(this);
            if(_loc9_)
            {
               §§pop().§5!A§ = !!param2 ? param2 : new Vector.<§`i§>(0);
               loop1:
               for(; _loc9_; if(_loc8_ && param2)
               {
                  continue;
               },if(false)
               {
                  §§goto(addr35);
               },var _loc6_:int = param2.length,var _loc7_:int = 0,addr89:,if(_loc7_ >= _loc6_)
               {
                  if(!_loc8_)
                  {
                     if(!(_loc9_ || param1))
                     {
                        addr134:
                        this.§#5§ = param2[_loc7_].timestamp;
                        addr115:
                        _loc7_++;
                        addr117:
                        if(_loc9_ || param1)
                        {
                           §§goto(addr89);
                        }
                        addr140:
                        §§goto(addr140);
                     }
                     return;
                  }
                  §§goto(addr117);
               },if(param2[_loc7_].timestamp > this.§#5§)
               {
                  §§goto(addr134);
               },§§goto(addr115))
               {
                  this.§"s§ = param3;
                  loop2:
                  while(true)
                  {
                     addr35:
                     while(true)
                     {
                        this.§%!P§ = param4;
                        while(_loc9_)
                        {
                           this.§#5§ = -1;
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr53);
         }
      }
      
      public function §=!R§(param1:DisplayObject, param2:String = null) : Vector.<§`i§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§`i§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§`i§> = new Vector.<§`i§>(0);
         var _loc4_:int = this.§5!A§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§5!A§[_loc5_]).target == param1);
            if(_loc10_)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        if(!(_loc9_ && param2))
                        {
                           §§push(param1 is DisplayObjectContainer);
                           while(true)
                           {
                              §§push(§§pop());
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr258:
                                    while(true)
                                    {
                                       §§pop();
                                       addr259:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr248:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr258:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    addr250:
                                    loop22:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop23:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop24:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop17:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop23;
                                                            }
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc10_ || this))
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§push(§§pop() == _loc6_.phase);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop7:
                                                                     while(_loc10_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc10_ || this))
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                _loc3_.push(_loc6_);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr184:
                                                                                                while(!(_loc9_ && this))
                                                                                                {
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         addr97:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || param2)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr162:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                   }
                                                                                                   while(false);
                                                                                                   
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             continue loop24;
                                                                                             addr129:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_++;
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  addr208:
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         addr220:
                                                         addr240:
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc9_ && param1)
                              {
                                 continue;
                              }
                              §§pop();
                              §§goto(addr184);
                           }
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr250);
               }
               §§goto(addr161);
            }
            §§goto(addr97);
         }
         return _loc3_;
      }
      
      public function §8!p§(param1:DisplayObject, param2:String = null) : §`i§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§`i§> = this.§=!R§(param1,param2);
         if(_loc4_ || _loc3_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §9[§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§`i§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§8!p§(param1) == null)
            {
               if(_loc4_ || _loc3_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§=!R§(param1);
         if(!_loc5_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc5_)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        addr111:
                        return §§pop();
                     }
                     break;
                  }
               }
               else if(_loc2_[_loc3_].phase != §;@§.§>!q§)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc3_ = §§pop();
         }
         §§goto(addr111);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§#5§;
      }
      
      public function get §2!u§() : Vector.<§`i§>
      {
         return this.§5!A§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"s§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!P§;
      }
   }
}
