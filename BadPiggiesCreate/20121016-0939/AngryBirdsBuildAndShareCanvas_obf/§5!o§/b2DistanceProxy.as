package §5!o§
{
   import §"!9§.*;
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §"!@§:Vector.<b2Vec2>;
      
      public var §<v§:int;
      
      public var §;$§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         §§push(param1.§+!O§());
         if(!(_loc5_ && param1))
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(b2Shape.§[x§);
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§push(0);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr190:
                           }
                           else
                           {
                              addr220:
                           }
                        }
                        else
                        {
                           addr202:
                           §§push(1);
                           if(_loc6_ || this)
                           {
                              §§goto(addr220);
                           }
                        }
                        addr226:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(!_loc5_)
                              {
                                 this.§"!@§ = new Vector.<b2Vec2>(1,true);
                              }
                              loop3:
                              while(true)
                              {
                                 this.§"!@§[0] = _loc2_.§6!B§;
                                 loop4:
                                 while(true)
                                 {
                                    addr54:
                                    while(true)
                                    {
                                       this.§<v§ = 1;
                                       while(_loc6_)
                                       {
                                          this.§;$§ = _loc2_.§;$§;
                                          if(!(_loc5_ && param1))
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                              break;
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!_loc5_)
                              {
                                 this.§"!@§ = _loc3_.§"!@§;
                              }
                              loop7:
                              while(true)
                              {
                                 this.§<v§ = _loc3_.§2!7§;
                                 addr133:
                                 while(true)
                                 {
                                    addr120:
                                    while(true)
                                    {
                                       this.§;$§ = _loc3_.§;$§;
                                       addr125:
                                       while(!_loc6_)
                                       {
                                          continue loop7;
                                       }
                                       break loop8;
                                    }
                                 }
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc6_ || _loc3_)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr125);
                        }
                        return;
                        addr225:
                     }
                     else
                     {
                        §§push(b2Shape.§4A§);
                        if(_loc6_ || _loc3_)
                        {
                           addr201:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr202);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr225);
                        }
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr201);
               }
               §§goto(addr190);
            }
            §§goto(addr202);
         }
         §§goto(addr226);
      }
      
      public function §0!3§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§"!@§[0].x * param1.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.§"!@§[0].y * param1.y);
            if(_loc7_ || _loc3_)
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
            if(!_loc6_)
            {
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() >= this.§<v§)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc6_ && this))
                           {
                              addr121:
                              if(_loc7_ || _loc3_)
                              {
                                 _loc3_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    addr96:
                                    while(true)
                                    {
                                       if(_loc7_ || this)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                                 addr129:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       addr165:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       addr165:
                                    }
                                    addr166:
                                    while(§§pop() > §§pop())
                                    {
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue loop5;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          addr188:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop5;
                                          }
                                          addr188:
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr121);
                                 }
                                 addr161:
                              }
                              while(true)
                              {
                                 _loc4_++;
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr165);
                        }
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     §§push(this.§"!@§[_loc4_].x * param1.x);
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§"!@§[_loc4_].y * param1.y);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr166);
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr188);
            }
            break;
         }
         return §§pop();
      }
      
      public function §>h§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§"!@§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§"!@§[0].y * param1.y);
            if(!(_loc7_ && param1))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() >= this.§<v§)
                  {
                     if(!_loc7_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        loop7:
                        while(true)
                        {
                           addr74:
                           addr147:
                           while(true)
                           {
                              _loc4_++;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr148:
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || this)
                                 {
                                    addr156:
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr167:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr156);
                                    }
                                    addr166:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       §§goto(addr74);
                                    }
                                    addr169:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          addr173:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr174:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr167);
                                                   }
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             _loc3_ = §§pop();
                                             continue loop7;
                                          }
                                          addr173:
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc6_ || param1)
                        {
                           if(_loc6_ || param1)
                           {
                              continue loop0;
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr174);
                     }
                  }
                  else
                  {
                     §§push(this.§"!@§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§"!@§[_loc4_].y * param1.y);
                        if(!_loc7_)
                        {
                           §§goto(addr147);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr166);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr173);
            }
            return this.§"!@§[_loc2_];
         }
         §§goto(addr51);
      }
      
      public function §6"9§() : int
      {
         return this.§<v§;
      }
      
      public function §,!Q§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(param1);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop();
                              addr83:
                              §§push(param1 < this.§<v§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr83);
         }
         addr85:
         return this.§"!@§[param1];
      }
   }
}
