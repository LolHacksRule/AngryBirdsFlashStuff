package starling.events
{
   import §]@§.DisplayObject;
   import §]@§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §"M§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §"M§ = "touch";
         }
      }
      
      private var §`!<§:Vector.<§5v§>;
      
      private var §null§:Boolean;
      
      private var §=>§:Boolean;
      
      private var §9z§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§5v§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(!_loc9_)
               {
                  §§pop().§`!<§ = !!param2 ? param2 : new Vector.<§5v§>(0);
                  loop1:
                  while(_loc8_)
                  {
                     this.§null§ = param3;
                     while(true)
                     {
                        while(true)
                        {
                           this.§=>§ = param4;
                           do
                           {
                              this.§9z§ = -1;
                           }
                           while(_loc9_ && param2);
                           
                           if(_loc9_ && this)
                           {
                              break;
                           }
                           if(!_loc9_)
                           {
                              if(true)
                              {
                                 var _loc6_:int = param2.length;
                                 var _loc7_:int = 0;
                              }
                              continue;
                              while(true)
                              {
                                 if(_loc7_ >= _loc6_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          break;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          addr109:
                                          while(true)
                                          {
                                             _loc7_++;
                                          }
                                          addr133:
                                          while(true)
                                          {
                                             this.§9z§ = param2[_loc7_].timestamp;
                                             continue loop7;
                                          }
                                       }
                                    }
                                    while(!_loc8_)
                                    {
                                       §§goto(addr133);
                                    }
                                    continue;
                                 }
                                 if(param2[_loc7_].timestamp > this.§9z§)
                                 {
                                    §§goto(addr133);
                                 }
                                 §§goto(addr109);
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr50);
      }
      
      public function §7S§(param1:DisplayObject, param2:String = null) : Vector.<§5v§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§5v§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§5v§> = new Vector.<§5v§>(0);
         var _loc4_:int = this.§`!<§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§`!<§[_loc5_]).target == param1);
            if(!_loc10_)
            {
               §§push(§§pop());
               if(_loc9_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc9_ || _loc3_)
                     {
                        §§pop();
                        if(_loc9_)
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
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop15:
                                             while(_loc9_ || param2)
                                             {
                                                §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc9_ || param2)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            addr104:
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               addr113:
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           _loc3_.push(_loc6_);
                                                                        }
                                                                        while(!_loc10_)
                                                                        {
                                                                        }
                                                                        continue loop16;
                                                                        addr142:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc5_++;
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr142);
                                                                     }
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop17;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        loop12:
                                                                        while(_loc9_ || this)
                                                                        {
                                                                           addr239:
                                                                           §§push(param2);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop() == _loc6_.phase);
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          addr194:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr195:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                addr196:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(!(_loc10_ && param2))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                                  addr224:
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            addr223:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr251:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         addr206:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == null);
                                                                                                            addr208:
                                                                                                            addr249:
                                                                                                            while(!(_loc10_ && param2))
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr239);
                                                                                                         }
                                                                                                      }
                                                                                                      addr251:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr113);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr195);
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr249);
                                 }
                              }
                           }
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr249);
               }
               §§goto(addr160);
            }
            §§goto(addr194);
         }
         return _loc3_;
      }
      
      public function §<!8§(param1:DisplayObject, param2:String = null) : §5v§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§5v§> = this.§7S§(param1,param2);
         if(_loc5_ || _loc3_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr56);
               }
            }
            return null;
         }
         addr56:
         return _loc3_[0];
      }
      
      public function §4=§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§5v§> = null;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            if(this.§<!8§(param1) == null)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr36);
               }
            }
            _loc2_ = this.§7S§(param1);
            if(!_loc4_)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || _loc2_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(false);
                              if(!(_loc4_ && _loc3_))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr126:
                              return true;
                           }
                           return §§pop();
                        }
                     }
                     else if(_loc2_[_loc3_].phase != §3M§.§"!,§)
                     {
                        break;
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            §§goto(addr126);
         }
         addr36:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§9z§;
      }
      
      public function get §[!V§() : Vector.<§5v§>
      {
         return this.§`!<§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§null§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§=>§;
      }
   }
}
