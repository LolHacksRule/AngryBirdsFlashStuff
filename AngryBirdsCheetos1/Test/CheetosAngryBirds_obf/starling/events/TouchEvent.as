package starling.events
{
   import §^a§.DisplayObject;
   import §^a§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §5a§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5a§ = "touch";
         }
      }
      
      private var §@!G§:Vector.<§#v§>;
      
      private var §-!d§:Boolean;
      
      private var §]!M§:Boolean;
      
      private var §%p§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§#v§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(_loc9_ || param1)
               {
                  §§pop().§@!G§ = !!param2 ? param2 : new Vector.<§#v§>(0);
                  while(true)
                  {
                     this.§-!d§ = param3;
                     addr58:
                     loop2:
                     while(true)
                     {
                        addr42:
                        addr97:
                        while(true)
                        {
                           this.§]!M§ = param4;
                           continue loop2;
                        }
                        addr130:
                        var _loc6_:int = param2.length;
                        var _loc7_:int = 0;
                        loop5:
                        while(true)
                        {
                           if(_loc7_ >= _loc6_)
                           {
                              if(_loc9_ || param3)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    addr120:
                                    while(true)
                                    {
                                       _loc7_++;
                                    }
                                    addr149:
                                    loop6:
                                    while(true)
                                    {
                                       this.§%p§ = param2[_loc7_].timestamp;
                                       continue loop7;
                                       addr122:
                                       while(!(_loc9_ || param1))
                                       {
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr122);
                           }
                           else if(param2[_loc7_].timestamp > this.§%p§)
                           {
                              §§goto(addr149);
                           }
                           §§goto(addr120);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr58);
      }
      
      public function §=P§(param1:DisplayObject, param2:String = null) : Vector.<§#v§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§#v§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§#v§> = new Vector.<§#v§>(0);
         var _loc4_:int = this.§@!G§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§@!G§[_loc5_]).target == param1);
            if(!(_loc10_ && _loc3_))
            {
               §§push(§§pop());
               if(_loc9_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc10_ && this))
                     {
                        §§pop();
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr251:
                              loop22:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop23:
                                    while(true)
                                    {
                                       §§pop();
                                       addr253:
                                       loop24:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr230:
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                continue loop23;
                                             }
                                             §§push(Boolean(§§pop()));
                                             continue loop24;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    addr234:
                                    loop21:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr235:
                                       loop20:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop19:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr218:
                                                   addr211:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr220:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               §§push(param2);
                                                               if(_loc10_ && param2)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               §§push(§§pop() == _loc6_.phase);
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop8;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                      continue loop12;
                                                   }
                                                   _loc8_ = §§pop();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  if(!(_loc9_ || param2))
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     addr129:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc3_.push(_loc6_);
                                                                                    addr149:
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       addr82:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_++;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr190:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr220);
                                                                                          }
                                                                                          §§goto(addr209);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr149:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr253);
                                                                                 }
                                                                              }
                                                                              while(_loc10_ && param2)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr190);
                                                                              addr183:
                                                                           }
                                                                           §§goto(addr149);
                                                                        }
                                                                        §§goto(addr82);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr183);
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
                        §§goto(addr149);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr234);
               }
               §§goto(addr251);
            }
            §§goto(addr129);
         }
         return _loc3_;
      }
      
      public function §`C§(param1:DisplayObject, param2:String = null) : §#v§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§#v§> = this.§=P§(param1,param2);
         if(!(_loc5_ && this))
         {
            if(_loc3_.length > 0)
            {
               if(_loc4_)
               {
                  §§goto(addr55);
               }
            }
            return null;
         }
         addr55:
         return _loc3_[0];
      }
      
      public function §=a§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§#v§> = null;
         var _loc3_:* = 0;
         if(_loc5_ || param1)
         {
            if(this.§`C§(param1) == null)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr41);
               }
            }
            _loc2_ = this.§=P§(param1);
            if(_loc5_)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(false);
                           if(_loc5_ || _loc3_)
                           {
                              return §§pop();
                           }
                           addr122:
                           return §§pop();
                        }
                        while(_loc4_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr96:
                     }
                     else if(_loc2_[_loc3_].phase != §?!E§.§'s§)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr123);
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
                  _loc3_ = §§pop();
                  §§goto(addr96);
               }
            }
            §§goto(addr122);
            §§push(true);
         }
         addr41:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§%p§;
      }
      
      public function get §^!E§() : Vector.<§#v§>
      {
         return this.§@!G§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!d§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]!M§;
      }
   }
}
