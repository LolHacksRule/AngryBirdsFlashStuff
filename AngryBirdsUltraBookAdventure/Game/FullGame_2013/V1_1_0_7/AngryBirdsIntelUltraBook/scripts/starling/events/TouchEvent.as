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
         if(_loc2_ || _loc1_)
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
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            super(param1,param5);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(_loc8_)
            {
               §§pop().§4!z§ = !!param2 ? param2 : new Vector.<§;K§>(0);
               while(true)
               {
                  this.§+!Q§ = param3;
                  while(!_loc9_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§2-§ = param4;
                        while(_loc8_)
                        {
                           this.§>]§ = -1;
                           if(_loc8_ || param2)
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr69);
         }
      }
      
      public function §@!s§(param1:DisplayObject, param2:String = null) : Vector.<§;K§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
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
            if(!_loc10_)
            {
               §§push(§§pop());
               if(_loc9_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!(_loc10_ && param1))
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr226:
                              loop26:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§pop();
                                       loop18:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr213:
                                          loop28:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc9_)
                                             {
                                                while(true)
                                                {
                                                   addr217:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                addr216:
                                             }
                                             addr218:
                                             while(_loc10_)
                                             {
                                                continue loop1;
                                             }
                                             _loc7_ = §§pop();
                                             loop20:
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop() == null);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr205:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_ && param2)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§push(§§pop() == _loc6_.phase);
                                                               }
                                                            }
                                                            addr204:
                                                         }
                                                         while(true)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc10_ && param2)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr171:
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       addr82:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             if(!(_loc9_ || param1))
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr170:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_.push(_loc6_);
                                                                                       }
                                                                                    }
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr82);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr205);
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr72:
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr171);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr72);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr218);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr204);
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
                                 §§goto(addr216);
                              }
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr217);
               }
               §§goto(addr226);
            }
            §§goto(addr213);
         }
         return _loc3_;
      }
      
      public function §9=§(param1:DisplayObject, param2:String = null) : §;K§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§;K§> = this.§@!s§(param1,param2);
         if(_loc4_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr40);
               }
            }
            return null;
         }
         addr40:
         return _loc3_[0];
      }
      
      public function §6!c§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§;K§> = null;
         var _loc3_:* = 0;
         if(!(_loc4_ && this))
         {
            if(this.§9=§(param1) == null)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr41);
               }
            }
            _loc2_ = this.§@!s§(param1);
            if(!(_loc4_ && _loc2_))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || this)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        if(_loc5_)
                        {
                           §§push(false);
                           if(_loc5_ || this)
                           {
                              return §§pop();
                           }
                           addr137:
                           return §§pop();
                        }
                        break;
                     }
                  }
                  else if(_loc2_[_loc3_].phase != §<A§.§2!R§)
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
               }
               _loc3_ = §§pop();
            }
            §§goto(addr137);
            §§push(true);
         }
         addr41:
         return false;
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
