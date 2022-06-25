package starling.events
{
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §7!L§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7!L§ = "touch";
         }
      }
      
      private var §4!z§:Vector.<§;K§>;
      
      private var §+!Q§:Boolean;
      
      private var §2-§:Boolean;
      
      private var §>]§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;K§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(!(_loc8_ && param1))
               {
                  §§pop().§4!z§ = !!param2 ? param2 : new Vector.<§;K§>(0);
                  loop1:
                  while(true)
                  {
                     this.§+!Q§ = param3;
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           this.§2-§ = param4;
                           loop4:
                           while(_loc9_)
                           {
                              while(true)
                              {
                                 this.§>]§ = -1;
                                 if(_loc9_ || param3)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              var _loc6_:int = param2.length;
                              var _loc7_:int = 0;
                              while(true)
                              {
                                 if(_loc7_ >= _loc6_)
                                 {
                                    if(_loc8_ && param2)
                                    {
                                       continue;
                                    }
                                    if(_loc9_ || param1)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          break;
                                       }
                                       addr149:
                                       this.§>]§ = param2[_loc7_].timestamp;
                                    }
                                 }
                                 else if(param2[_loc7_].timestamp > this.§>]§)
                                 {
                                    §§goto(addr149);
                                 }
                                 _loc7_++;
                              }
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr48);
      }
      
      public function §@!s§(param1:DisplayObject, param2:String = null) : Vector.<§;K§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§;K§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§;K§> = new Vector.<§;K§>(0);
         var _loc4_:int = this.§4!z§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§4!z§[_loc5_]).target == param1);
            if(_loc10_ || param1)
            {
               §§push(§§pop());
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ && this))
                     {
                        §§pop();
                        if(_loc10_ || this)
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
                                    while(true)
                                    {
                                       §§pop();
                                       addr244:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr231:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr243:
                                 }
                                 while(true)
                                 {
                                    addr235:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                addr220:
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr221:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc9_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == _loc6_.phase);
                                                               loop15:
                                                               while(!(_loc9_ && param1))
                                                               {
                                                                  addr148:
                                                                  if(!(_loc10_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr177:
                                                                                    §§pop();
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   break loop20;
                                                                                                }
                                                                                             }
                                                                                             break loop20;
                                                                                          }
                                                                                          addr101:
                                                                                       }
                                                                                       §§goto(addr244);
                                                                                       §§goto(addr177);
                                                                                    }
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                _loc3_.push(_loc6_);
                                                                                                loop21:
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      if(!(_loc10_ || param2))
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      addr92:
                                                                                                      if(_loc9_ && _loc3_)
                                                                                                      {
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            addr141:
                                                                                                            if(!(_loc10_ || this))
                                                                                                            {
                                                                                                               while(_loc10_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  continue loop18;
                                                                                                                  §§goto(addr141);
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                               addr202:
                                                                                                            }
                                                                                                            §§goto(addr148);
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break loop19;
                                                                                                      }
                                                                                                      §§goto(addr101);
                                                                                                   }
                                                                                                }
                                                                                                continue loop10;
                                                                                                addr134:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr178);
                                                                                             }
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                          §§goto(addr134);
                                                                                       }
                                                                                       §§goto(addr83);
                                                                                    }
                                                                                    addr178:
                                                                                    continue loop0;
                                                                                    addr119:
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              addr175:
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr202);
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
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr235);
               }
               §§goto(addr221);
            }
            §§goto(addr107);
         }
         return _loc3_;
      }
      
      public function §9=§(param1:DisplayObject, param2:String = null) : §;K§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§;K§> = this.§@!s§(param1,param2);
         if(_loc5_ || param1)
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_ || _loc3_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §6!c§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§;K§> = null;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(this.§9=§(param1) == null)
            {
               if(_loc4_)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§@!s§(param1);
         if(!_loc5_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         do
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     §§push(false);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     addr116:
                     return §§pop();
                  }
               }
               else if(_loc2_[_loc3_].phase != §<A§.§2!R§)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc3_ = §§pop();
         }
         while(!(_loc5_ && _loc2_));
         
         §§goto(addr116);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§>]§;
      }
      
      public function get §&!j§() : Vector.<§;K§>
      {
         return this.§4!z§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!Q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2-§;
      }
   }
}
