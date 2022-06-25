package starling.events
{
   import §#!,§.DisplayObject;
   import §#!,§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §1!P§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!P§ = "touch";
         }
      }
      
      private var §]a§:Vector.<§]!B§>;
      
      private var §!z§:Boolean;
      
      private var §!9§:Boolean;
      
      private var §[i§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§]!B§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(_loc8_ || param1)
               {
                  §§pop().§]a§ = Boolean(param2) ? param2 : new Vector.<§]!B§>(0);
                  while(true)
                  {
                     this.§!z§ = param3;
                     loop2:
                     while(true)
                     {
                        addr38:
                        while(true)
                        {
                           this.§!9§ = param4;
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr60);
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr38);
               }
               §§goto(addr88);
            }
         }
         §§goto(addr42);
      }
      
      public function §8b§(param1:DisplayObject, param2:String = null) : Vector.<§]!B§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§]!B§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§]!B§> = new Vector.<§]!B§>(0);
         var _loc4_:int = this.§]a§.length;
         §§push(0);
         if(!(_loc10_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.§]a§[_loc5_];
            if(_loc9_)
            {
               §§push(_loc6_.target == param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr335:
                                 while(true)
                                 {
                                    §§push(param1 is DisplayObjectContainer);
                                    addr294:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr295:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(_loc10_ && this)
                                             {
                                                continue loop4;
                                             }
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(_loc10_ && _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr325:
                                                      while(true)
                                                      {
                                                         §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                                         addr284:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   addr324:
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr334:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    _loc7_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param2);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop() == null);
                                          loop11:
                                          while(_loc9_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr271:
                                                      while(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               addr233:
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr199:
                                                                                          loop20:
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             if(_loc10_ && param2)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§pop();
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(_loc10_ && param1)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        _loc3_.push(_loc6_);
                                                                                                                        loop24:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc10_ && this)
                                                                                                                              {
                                                                                                                                 addr81:
                                                                                                                                 break;
                                                                                                                                 addr58:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        §§goto(addr335);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            §§goto(addr325);
                                                                                                         }
                                                                                                         §§goto(addr58);
                                                                                                      }
                                                                                                      addr101:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr274:
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr232:
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      addr189:
                                                      §§goto(addr316);
                                                      addr189:
                                                      if(_loc10_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr101);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                }
                                                break;
                                                addr224:
                                                if(!(_loc9_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr232);
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr284);
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr335);
         }
         return _loc3_;
      }
      
      public function §%!C§(param1:DisplayObject, param2:String = null) : §]!B§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§]!B§> = this.§8b§(param1,param2);
         if(_loc5_)
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc4_ && this))
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §7q§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§]!B§> = null;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            if(this.§%!C§(param1) == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr35);
               }
            }
            _loc2_ = this.§8b§(param1);
            if(!(_loc5_ && this))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_ || param1)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_ || this)
                     {
                        if(§§pop() < 0)
                        {
                           if(!(_loc5_ && this))
                           {
                              break;
                           }
                           loop1:
                           while(!(_loc4_ || _loc3_))
                           {
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        if(_loc2_[_loc3_].phase != §?'§.§&>§)
                        {
                           addr135:
                           return true;
                           addr134:
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() - 1);
                     }
                  }
                  while(true)
                  {
                  }
               }
               §§goto(addr114);
            }
            if(_loc4_)
            {
               §§push(false);
               if(_loc4_ || param1)
               {
                  return §§pop();
               }
            }
            else
            {
               §§goto(addr134);
            }
            §§goto(addr135);
         }
         addr35:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§[i§;
      }
      
      public function get §-A§() : Vector.<§]!B§>
      {
         return this.§]a§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§!z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§!9§;
      }
   }
}
