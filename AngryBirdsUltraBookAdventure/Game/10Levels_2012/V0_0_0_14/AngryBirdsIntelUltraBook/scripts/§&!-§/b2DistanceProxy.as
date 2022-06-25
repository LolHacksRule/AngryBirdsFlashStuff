package §&!-§
{
   import §0!'§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §%§:Vector.<b2Vec2>;
      
      public var §8Q§:int;
      
      public var §6q§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§0!@§());
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(b2Shape.§8&§);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ || _loc3_))
                           {
                              addr199:
                              if(§§pop() === _loc4_)
                              {
                                 addr201:
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr201);
                     }
                     else
                     {
                        §§push(b2Shape.§8y§);
                        if(_loc5_)
                        {
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr210);
                  }
               }
               §§goto(addr199);
            }
            §§goto(addr201);
         }
         addr210:
         loop8:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(!(_loc6_ && param1))
               {
                  this.§%§ = new Vector.<b2Vec2>(1,true);
               }
               loop3:
               while(true)
               {
                  this.§%§[0] = _loc2_.§#!j§;
                  while(true)
                  {
                     addr53:
                     addr44:
                     while(true)
                     {
                        this.§8Q§ = 1;
                        continue loop3;
                     }
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     if(true)
                     {
                        break loop8;
                     }
                     §§goto(addr53);
                  }
               }
               break;
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc5_ || this)
               {
                  this.§%§ = _loc3_.§%§;
                  loop7:
                  while(true)
                  {
                     this.§8Q§ = _loc3_.§']§;
                     addr135:
                     addr137:
                     while(!_loc5_)
                     {
                        continue loop7;
                     }
                     loop0:
                     while(true)
                     {
                        this.§6q§ = _loc3_.§6q§;
                        addr122:
                        while(!(_loc5_ || _loc3_))
                        {
                           §§goto(addr135);
                           continue loop0;
                        }
                     }
                  }
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr137);
               }
               §§goto(addr122);
         }
      }
      
      public function §3a§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%§[0].x * param1.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + this.§%§[0].y * param1.y);
            if(!(_loc6_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && param1))
            {
               if(_loc7_)
               {
                  if(§§pop() >= this.§8Q§)
                  {
                     if(!(_loc6_ && this))
                     {
                        if(!_loc6_)
                        {
                           addr91:
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           loop11:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr168:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr169:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || _loc2_)
                                       {
                                          addr113:
                                          §§push(Number(§§pop()));
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr117:
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§goto(addr117);
                                                }
                                                addr118:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr164:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr165:
                                                            while(true)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  break loop5;
                                                               }
                                                            }
                                                         }
                                                         addr164:
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                addr152:
                                             }
                                             while(true)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§%§[_loc4_].y * param1.y);
                                             if(_loc7_)
                                             {
                                                §§goto(addr152);
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          addr141:
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr113);
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr98:
                                    while(_loc6_)
                                    {
                                       §§goto(addr169);
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(this.§%§[_loc4_].x * param1.x);
                  }
                  §§goto(addr141);
               }
               §§goto(addr168);
            }
            §§goto(addr91);
         }
         return §§pop();
      }
      
      public function §55§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§%§[0].y * param1.y);
            if(_loc6_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  if(§§pop() >= this.§8Q§)
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr173:
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr174:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr113:
                                             §§push(Number(§§pop()));
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr119:
                                                      _loc3_ = §§pop();
                                                      while(true)
                                                      {
                                                         break loop5;
                                                         §§goto(addr119);
                                                      }
                                                      addr120:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      addr157:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      _loc5_ = §§pop();
                                                   }
                                                   addr163:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§%§[_loc4_].y * param1.y);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§goto(addr157);
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             addr131:
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr113);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       _loc4_++;
                                       addr93:
                                       while(!_loc6_)
                                       {
                                          §§goto(addr174);
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr173:
                              }
                              §§goto(addr173);
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     §§push(this.§%§[_loc4_].x * param1.x);
                  }
                  §§goto(addr131);
               }
               §§goto(addr173);
            }
            return this.§%§[_loc2_];
         }
         §§goto(addr41);
      }
      
      public function §;![§() : int
      {
         return this.§8Q§;
      }
      
      public function §#I§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr69:
                              §§pop();
                              §§push(param1 < this.§8Q§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr75);
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         addr75:
         return this.§%§[param1];
      }
   }
}
