package §^9§
{
   import §"y§.*;
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §-!L§:Vector.<b2Vec2>;
      
      public var §=r§:int;
      
      public var §,!;§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         §§push(param1.§<!A§());
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(b2Shape.§9_§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           addr157:
                           §§push(0);
                           if(!(_loc6_ || param1))
                           {
                              addr190:
                           }
                        }
                        else
                        {
                           addr172:
                           §§push(1);
                           if(_loc6_ || param1)
                           {
                              §§goto(addr190);
                           }
                        }
                        addr196:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(!_loc5_)
                              {
                                 this.§-!L§ = new Vector.<b2Vec2>(1,true);
                                 while(true)
                                 {
                                    this.§-!L§[0] = _loc2_.§4b§;
                                    addr63:
                                    loop3:
                                    while(true)
                                    {
                                       addr51:
                                       while(true)
                                       {
                                          this.§=r§ = 1;
                                          continue loop3;
                                       }
                                    }
                                    addr42:
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr51);
                                       }
                                       addr73:
                                       break loop8;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§,!;§ = _loc2_.§,!;§;
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    §§goto(addr42);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr73);
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(_loc6_)
                              {
                                 this.§-!L§ = _loc3_.§-!L§;
                                 while(true)
                                 {
                                    this.§=r§ = _loc3_.§!1§;
                                    addr123:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr128:
                              }
                              else
                              {
                                 addr101:
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              loop0:
                              while(true)
                              {
                                 this.§,!;§ = _loc3_.§,!;§;
                                 addr108:
                                 while(true)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr128);
                                    continue loop0;
                                 }
                                 break loop8;
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc6_)
                              {
                                 §§goto(addr101);
                              }
                              §§goto(addr108);
                        }
                        return;
                        addr195:
                     }
                     else
                     {
                        §§push(b2Shape.§2e§);
                        if(_loc6_)
                        {
                           addr171:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr172);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr190);
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr157);
         }
         §§goto(addr196);
      }
      
      public function §8!'§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§-!L§[0].x * param1.x);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() + this.§-!L§[0].y * param1.y);
            if(_loc7_ || param1)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(_loc7_)
                  {
                     if(§§pop() >= this.§=r§)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              addr157:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || this)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr158:
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_)
                                          {
                                             addr163:
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                §§goto(addr164);
                                             }
                                             addr163:
                                          }
                                          §§goto(addr163);
                                       }
                                       addr159:
                                    }
                                    addr82:
                                    while(true)
                                    {
                                       _loc4_++;
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                              }
                              addr164:
                           }
                           while(_loc6_)
                           {
                              §§goto(addr159);
                           }
                           §§goto(addr82);
                        }
                     }
                     else
                     {
                        §§push(this.§-!L§[_loc4_].x * param1.x);
                        if(_loc7_ || this)
                        {
                           §§push(this.§-!L§[_loc4_].y * param1.y);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       _loc5_ = §§pop();
                                       §§goto(addr157);
                                    }
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr163);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function §0!e§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§-!L§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§-!L§[0].y * param1.y);
            if(!(_loc7_ && param1))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_ || _loc2_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop() >= this.§=r§)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_ || param1)
                              {
                                 continue loop0;
                              }
                              addr179:
                              loop5:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc6_)
                                    {
                                       addr113:
                                       §§push(Number(§§pop()));
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       _loc3_ = §§pop();
                                       while(_loc7_ && _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr182:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                addr183:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop5;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr160:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                break loop5;
                                             }
                                             addr178:
                                          }
                                          addr180:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§goto(addr181);
                                             }
                                          }
                                       }
                                       addr160:
                                    }
                                    while(true)
                                    {
                                       _loc4_++;
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr113);
                              }
                              while(true)
                              {
                                 §§goto(addr180);
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     else
                     {
                        §§push(this.§-!L§[_loc4_].x * param1.x);
                        if(!(_loc7_ && param1))
                        {
                           §§push(this.§-!L§[_loc4_].y * param1.y);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                                 addr159:
                                 §§goto(addr160);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr182);
               }
               §§goto(addr183);
            }
            return this.§-!L§[_loc2_];
         }
         §§goto(addr46);
      }
      
      public function §@c§() : int
      {
         return this.§=r§;
      }
      
      public function §0K§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(b2Settings);
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(_loc2_ || _loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr64:
                              §§pop();
                              §§push(param1 < this.§=r§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr80);
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         addr80:
         return this.§-!L§[param1];
      }
   }
}
