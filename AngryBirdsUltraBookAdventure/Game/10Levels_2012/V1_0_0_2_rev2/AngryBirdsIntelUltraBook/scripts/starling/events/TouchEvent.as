package starling.events
{
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2!6§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && TouchEvent))
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
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(!(_loc9_ && this))
               {
                  §§pop().§5!A§ = !!param2 ? param2 : new Vector.<§`i§>(0);
                  continue;
               }
               §§goto(addr72);
            }
         }
         while(true)
         {
            loop4:
            do
            {
               this.§%!P§ = param4;
               while(!_loc9_)
               {
                  this.§#5§ = -1;
                  if(_loc8_ || this)
                  {
                     continue loop4;
                  }
               }
               §§goto(addr48);
            }
            while(false);
            
            var _loc6_:int = param2.length;
            var _loc7_:int = 0;
            while(true)
            {
               if(_loc7_ >= _loc6_)
               {
                  if(_loc9_)
                  {
                     continue;
                  }
                  if(_loc8_ || param1)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     addr143:
                     this.§#5§ = param2[_loc7_].timestamp;
                  }
               }
               else if(param2[_loc7_].timestamp > this.§#5§)
               {
                  §§goto(addr143);
               }
               _loc7_++;
            }
            return;
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
            if(_loc10_ || param1)
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
                                          if(!(_loc9_ && param2))
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                addr238:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             addr237:
                                          }
                                          loop5:
                                          while(_loc10_)
                                          {
                                             _loc7_ = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop() == null);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               addr180:
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr181:
                                                                  addr203:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc10_ || this))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     while(!(_loc9_ && this))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(!_loc9_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr166:
                                                                                    while(true)
                                                                                    {
                                                                                       addr84:
                                                                                       do
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          addr107:
                                                                                       }
                                                                                       while(!(_loc9_ && _loc3_));
                                                                                       
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr125:
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ || param2))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             _loc3_.push(_loc6_);
                                                                                             loop27:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   if(_loc9_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   §§goto(addr84);
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                             addr142:
                                                                                          }
                                                                                          §§goto(addr166);
                                                                                       }
                                                                                       §§goto(addr142);
                                                                                    }
                                                                                    §§goto(addr73);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr181);
                                                                        if(_loc9_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr107);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                            addr179:
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr237);
                              }
                           }
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr238);
               }
               §§goto(addr164);
            }
            §§goto(addr125);
         }
         return _loc3_;
      }
      
      public function §8!p§(param1:DisplayObject, param2:String = null) : §`i§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§`i§> = this.§=!R§(param1,param2);
         if(!(_loc4_ && param1))
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc4_ && param1))
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
         if(_loc4_ || this)
         {
            if(this.§8!p§(param1) == null)
            {
               if(_loc4_ || param1)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§=!R§(param1);
         if(_loc4_ || this)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         do
         {
            §§push(_loc3_);
            if(_loc4_ || this)
            {
               if(!(_loc5_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        addr131:
                        return §§pop();
                     }
                     loop1:
                     while(_loc5_ && param1)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(_loc2_[_loc3_].phase != §;@§.§>!q§)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr109);
         }
         while(!_loc5_);
         
         §§goto(addr131);
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
