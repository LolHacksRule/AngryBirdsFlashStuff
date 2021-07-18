package starling.events
{
   import §3!J§.DisplayObject;
   import §3!J§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §>P§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §>P§ = "touch";
         }
      }
      
      private var §2!<§:Vector.<§4&§>;
      
      private var §3!^§:Boolean;
      
      private var §5!]§:Boolean;
      
      private var §3!&§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4&§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(!(_loc9_ && param1))
               {
                  §§pop().§2!<§ = !!param2 ? param2 : new Vector.<§4&§>(0);
                  continue;
               }
               §§goto(addr57);
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               this.§5!]§ = param4;
               while(_loc8_)
               {
                  if(_loc8_)
                  {
                     this.§3!&§ = -1;
                     if(_loc8_ || this)
                     {
                        if(true)
                        {
                           break loop3;
                        }
                        continue loop3;
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               continue loop2;
            }
            var _loc6_:int = param2.length;
            var _loc7_:int = 0;
            while(true)
            {
               if(_loc7_ >= _loc6_)
               {
                  if(!(_loc9_ && param1))
                  {
                     break;
                  }
                  while(true)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_)
                        {
                           break;
                        }
                        addr138:
                        while(true)
                        {
                           this.§3!&§ = param2[_loc7_].timestamp;
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr114:
               }
               else if(param2[_loc7_].timestamp > this.§3!&§)
               {
                  §§goto(addr138);
               }
               while(true)
               {
                  _loc7_++;
                  §§goto(addr114);
               }
            }
            return;
         }
      }
      
      public function §!q§(param1:DisplayObject, param2:String = null) : Vector.<§4&§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§4&§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§4&§> = new Vector.<§4&§>(0);
         var _loc4_:int = this.§2!<§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§2!<§[_loc5_]).target == param1);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop());
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(!(_loc9_ && param1))
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr242:
                              loop30:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr244:
                                       loop24:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr219:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr220:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             continue loop24;
                                          }
                                       }
                                    }
                                    addr243:
                                 }
                                 while(true)
                                 {
                                    addr223:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop13:
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop30;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(!(_loc10_ || param2))
                                                               {
                                                                  §§goto(addr220);
                                                               }
                                                               addr210:
                                                               §§pop();
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§push(§§pop() == _loc6_.phase);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr141:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr244);
                                                                                 }
                                                                              }
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr163:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr187);
                                                                                 }
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       if(!(_loc10_ || _loc3_))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr110:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_.push(_loc6_);
                                                                                                               addr134:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr163);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                               addr82:
                                                                                                               if(!(_loc10_ || param2))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               while(false)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                                  §§goto(addr82);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr89:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_++;
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr82);
                                                                                                            }
                                                                                                            §§goto(addr134);
                                                                                                         }
                                                                                                         §§goto(addr89);
                                                                                                      }
                                                                                                      addr129:
                                                                                                   }
                                                                                                   §§goto(addr141);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   addr158:
                                                                                                }
                                                                                                §§goto(addr129);
                                                                                             }
                                                                                          }
                                                                                          addr109:
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    §§goto(addr110);
                                                                                 }
                                                                              }
                                                                              addr187:
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr177:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr203);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                               }
                                                               addr203:
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         continue loop30;
                                                      }
                                                   }
                                                }
                                             }
                                             addr226:
                                          }
                                          else
                                          {
                                             §§goto(addr243);
                                          }
                                          §§goto(addr244);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr223);
               }
               §§goto(addr242);
            }
            §§goto(addr109);
         }
         return _loc3_;
      }
      
      public function §,!7§(param1:DisplayObject, param2:String = null) : §4&§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§4&§> = this.§!q§(param1,param2);
         if(_loc4_)
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
      
      public function §0!k§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§4&§> = null;
         var _loc3_:* = 0;
         if(_loc5_ || param1)
         {
            if(this.§,!7§(param1) == null)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr41);
               }
            }
            _loc2_ = this.§!q§(param1);
            if(!(_loc4_ && param1))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            do
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        addr122:
                        return §§pop();
                     }
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(_loc2_[_loc3_].phase != §,g§.§&!]§)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() - 1);
                     }
                  }
               }
               §§goto(addr95);
            }
            while(!_loc4_);
            
            §§goto(addr122);
            §§push(true);
         }
         addr41:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!&§;
      }
      
      public function get §4v§() : Vector.<§4&§>
      {
         return this.§2!<§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3!^§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§5!]§;
      }
   }
}
