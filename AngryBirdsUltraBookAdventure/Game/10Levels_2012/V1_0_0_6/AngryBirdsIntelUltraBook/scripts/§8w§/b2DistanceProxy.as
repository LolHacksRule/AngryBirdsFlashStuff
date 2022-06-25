package §8w§
{
   import §,C§.*;
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §%!]§:Vector.<b2Vec2>;
      
      public var §1!Y§:int;
      
      public var §?!X§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§'!_§());
         if(!(_loc5_ && this))
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || param1)
            {
               §§push(b2Shape.§1"§);
               if(_loc6_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc6_ || _loc3_)
                           {
                              addr196:
                              loop9:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(!_loc5_)
                                    {
                                       this.§%!]§ = new Vector.<b2Vec2>(1,true);
                                       loop3:
                                       while(true)
                                       {
                                          this.§%!]§[0] = _loc2_.§^!I§;
                                          loop4:
                                          while(true)
                                          {
                                             addr42:
                                             while(true)
                                             {
                                                this.§1!Y§ = 1;
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         this.§?!X§ = _loc2_.§?!X§;
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr42);
                                    }
                                    break;
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(!_loc5_)
                                    {
                                       this.§%!]§ = _loc3_.§%!]§;
                                       while(true)
                                       {
                                          this.§1!Y§ = _loc3_.§!!=§;
                                       }
                                       addr123:
                                    }
                                    while(true)
                                    {
                                       addr100:
                                       while(true)
                                       {
                                          this.§?!X§ = _loc3_.§?!X§;
                                          addr105:
                                          while(_loc5_ && _loc3_)
                                          {
                                             §§goto(addr123);
                                          }
                                          break loop9;
                                       }
                                    }
                                    break;
                                    addr118:
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr105);
                              }
                              return;
                              addr195:
                           }
                        }
                        else
                        {
                           addr187:
                           §§push(1);
                           if(!_loc6_)
                           {
                           }
                        }
                        §§goto(addr195);
                     }
                     else
                     {
                        §§push(b2Shape.§+!N§);
                        if(_loc6_)
                        {
                           addr186:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr187);
                           }
                           else
                           {
                              §§goto(addr195);
                              §§push(2);
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr186);
               }
               §§goto(addr195);
            }
            §§goto(addr187);
         }
         §§goto(addr196);
      }
      
      public function §#!2§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%!]§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§%!]§[0].y * param1.y);
            if(_loc7_)
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
            if(_loc7_ || param1)
            {
               if(_loc7_)
               {
                  if(§§pop() >= this.§1!Y§)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc7_ || param1)
                        {
                           addr88:
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr168:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           addr167:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || param1)
                           {
                              if(!_loc6_)
                              {
                                 addr108:
                                 _loc3_ = Number(§§pop());
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       addr93:
                                       _loc4_++;
                                       continue loop0;
                                    }
                                 }
                                 addr109:
                              }
                              else
                              {
                                 addr164:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr165:
                                    while(§§pop() > §§pop())
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr93);
                                 }
                                 addr164:
                              }
                              while(true)
                              {
                                 §§goto(addr167);
                              }
                           }
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(this.§%!]§[_loc4_].x * param1.x);
                     if(!_loc6_)
                     {
                        §§push(this.§%!]§[_loc4_].y * param1.y);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr164);
                                 }
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr168);
            }
            §§goto(addr88);
         }
         return §§pop();
      }
      
      public function §<!,§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%!]§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§%!]§[0].y * param1.y);
            if(!(_loc7_ && this))
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
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= this.§1!Y§)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc7_ && this))
                        {
                           if(!_loc7_)
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr167:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr168:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                              addr166:
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || this)
                              {
                                 addr164:
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr165:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 addr164:
                              }
                              addr115:
                              if(_loc6_ || param1)
                              {
                                 break;
                              }
                              addr160:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr164);
                                 }
                                 §§goto(addr165);
                                 §§goto(addr115);
                              }
                           }
                           _loc3_ = §§pop();
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§%!]§[_loc4_].x * param1.x);
                     if(_loc6_)
                     {
                        §§push(this.§%!]§[_loc4_].y * param1.y);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              §§goto(addr160);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr167);
            }
            §§goto(addr168);
         }
         return this.§%!]§[_loc2_];
      }
      
      public function §5B§() : int
      {
         return this.§1!Y§;
      }
      
      public function §1!9§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(b2Settings);
            if(!_loc2_)
            {
               §§push(0);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              addr75:
                              §§pop();
                              §§push(param1 < this.§1!Y§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr81);
                     }
                  }
               }
            }
            §§goto(addr75);
         }
         addr81:
         return this.§%!]§[param1];
      }
   }
}
