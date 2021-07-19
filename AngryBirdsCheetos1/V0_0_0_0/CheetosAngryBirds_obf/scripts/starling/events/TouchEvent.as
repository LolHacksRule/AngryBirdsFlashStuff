package starling.events
{
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §4F§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §4F§ = "touch";
         }
      }
      
      private var §5!'§:Vector.<§"!D§>;
      
      private var §'r§:Boolean;
      
      private var §3!O§:Boolean;
      
      private var §'X§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§"!D§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(!_loc8_)
               {
                  §§pop().§5!'§ = !!param2 ? param2 : new Vector.<§"!D§>(0);
                  while(true)
                  {
                     this.§'r§ = param3;
                     continue loop0;
                     loop5:
                     while(!(_loc8_ && param3))
                     {
                        this.§'X§ = -1;
                        if(_loc9_)
                        {
                           addr26:
                           if(!(_loc8_ && param1))
                           {
                              addr33:
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§3!O§ = param4;
                                    continue loop5;
                                    §§goto(addr33);
                                 }
                                 addr92:
                                 var _loc6_:int = param2.length;
                                 var _loc7_:int = 0;
                                 addr35:
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                              while(true)
                              {
                                 if(_loc7_ >= _loc6_)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          addr110:
                                          while(true)
                                          {
                                             _loc7_++;
                                          }
                                          addr134:
                                          while(true)
                                          {
                                             this.§'X§ = param2[_loc7_].timestamp;
                                             continue loop8;
                                          }
                                       }
                                    }
                                    while(_loc8_)
                                    {
                                       §§goto(addr134);
                                    }
                                    continue;
                                 }
                                 if(param2[_loc7_].timestamp > this.§'X§)
                                 {
                                    §§goto(addr134);
                                 }
                                 §§goto(addr110);
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr75);
            }
         }
         while(true)
         {
            §§goto(addr35);
         }
      }
      
      public function §<q§(param1:DisplayObject, param2:String = null) : Vector.<§"!D§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§"!D§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§"!D§> = new Vector.<§"!D§>(0);
         var _loc4_:int = this.§5!'§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§5!'§[_loc5_]).target == param1);
            if(_loc9_)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(!(_loc10_ && param2))
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr251:
                              loop26:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr253:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr232:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr252:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    addr234:
                                    loop25:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop13:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop19:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§pop();
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_ && param1)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§push(§§pop() == _loc6_.phase);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ && param2)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr204:
                                                                        while(_loc10_)
                                                                        {
                                                                           §§goto(addr252);
                                                                        }
                                                                        _loc8_ = §§pop();
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 if(_loc10_ && param1)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ && param2)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop5;
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       addr174:
                                                                                    }
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       addr115:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ && param1)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                if(!(_loc10_ && param2))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             _loc3_.push(_loc6_);
                                                                                             addr143:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr116:
                                                                                             addr143:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_++;
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc9_ || this))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      if(_loc10_ && _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      if(_loc10_ && param1)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr116);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr143);
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr204);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr84);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                      }
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
                        §§goto(addr143);
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr234);
               }
               §§goto(addr251);
            }
            §§goto(addr115);
         }
         return _loc3_;
      }
      
      public function §>6§(param1:DisplayObject, param2:String = null) : §"!D§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§"!D§> = this.§<q§(param1,param2);
         if(_loc5_)
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_ || this)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §0w§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§"!D§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            if(this.§>6§(param1) == null)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr40);
               }
            }
            _loc2_ = this.§<q§(param1);
            if(!_loc5_)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(_loc4_ || this)
                  {
                     if(§§pop() < 0)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              §§push(false);
                              if(!(_loc5_ && param1))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr125:
                              return true;
                           }
                           return §§pop();
                        }
                     }
                     else if(_loc2_[_loc3_].phase != §!q§.§#Z§)
                     {
                        break;
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            §§goto(addr125);
         }
         addr40:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§'X§;
      }
      
      public function get §[m§() : Vector.<§"!D§>
      {
         return this.§5!'§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'r§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!O§;
      }
   }
}
