package §!§
{
   import §'!_§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §^v§:Vector.<b2Vec2>;
      
      public var §6]§:int;
      
      public var §>!M§:Number;
      
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§4!v§());
         if(!(_loc6_ && _loc2_))
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc2_))
            {
               §§push(b2Shape.§+!B§);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr181:
                           §§push(0);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr220:
                              loop6:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       this.§^v§ = new Vector.<b2Vec2>(1,true);
                                    }
                                    while(true)
                                    {
                                       this.§^v§[0] = _loc2_.§[N§;
                                       loop2:
                                       while(true)
                                       {
                                          addr51:
                                          addr82:
                                          while(true)
                                          {
                                             this.§6]§ = 1;
                                             continue loop2;
                                          }
                                          break loop6;
                                       }
                                    }
                                    break;
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(_loc5_ || this)
                                    {
                                       this.§^v§ = _loc3_.§^v§;
                                       loop5:
                                       while(true)
                                       {
                                          this.§6]§ = _loc3_.§"![§;
                                          addr135:
                                          while(_loc6_ && param1)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr122:
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    addr124:
                                    this.§>!M§ = _loc3_.§>!M§;
                                    break;
                                    addr129:
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§goto(addr122);
                                       }
                                       else
                                       {
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr129);
                              }
                              return;
                              addr219:
                           }
                           else
                           {
                              addr194:
                              if(§§pop() !== _loc4_)
                              {
                                 §§goto(addr219);
                                 §§push(2);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr219);
                        }
                        §§push(1);
                        if(_loc6_ && this)
                        {
                        }
                        §§goto(addr219);
                     }
                     else
                     {
                        §§push(b2Shape.§3!;§);
                        if(_loc5_)
                        {
                           §§goto(addr194);
                        }
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr194);
               }
               §§goto(addr219);
            }
            §§goto(addr181);
         }
         §§goto(addr220);
      }
      
      public function §^s§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^v§[0].x * param1.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() + this.§^v§[0].y * param1.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               if(_loc6_ || _loc3_)
               {
                  if(!(_loc7_ && this))
                  {
                     if(§§pop() >= this.§6]§)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop1:
                        for(; !_loc6_; while(true)
                        {
                           _loc4_++;
                           continue loop1;
                        })
                        {
                           loop2:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(_loc6_ || this)
                                       {
                                          addr115:
                                          §§push(Number(§§pop()));
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                _loc3_ = §§pop();
                                                continue loop2;
                                             }
                                             addr143:
                                             while(true)
                                             {
                                                §§push(this.§^v§[_loc4_].y * param1.y);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr176:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                            }
                                                            addr176:
                                                         }
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   addr154:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break loop3;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(_loc4_);
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr182:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     §§push(this.§^v§[_loc4_].x * param1.x);
                     §§goto(addr143);
                  }
                  §§goto(addr181);
               }
               §§goto(addr182);
            }
            break;
         }
         return §§pop();
      }
      
      public function §+M§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         §§push(this.§^v§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§^v§[0].y * param1.y);
            if(_loc7_ || _loc2_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || param1)
               {
                  if(§§pop() >= this.§6]§)
                  {
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc7_ || _loc2_)
                     {
                        if(_loc7_ || _loc2_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && this))
                           {
                              if(_loc7_)
                              {
                                 addr117:
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    addr120:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§^v§[_loc4_].y * param1.y);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop());
                                                if(_loc7_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr163:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   addr163:
                                                }
                                             }
                                          }
                                          §§goto(addr163);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             break loop1;
                                          }
                                       }
                                    }
                                    addr133:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr117);
                        }
                        _loc4_++;
                        continue;
                     }
                     §§goto(addr120);
                  }
                  else
                  {
                     §§push(this.§^v§[_loc4_].x * param1.x);
                  }
                  §§goto(addr133);
               }
               §§goto(addr184);
            }
            return this.§^v§[_loc2_];
         }
         §§goto(addr47);
      }
      
      public function §@!D§() : int
      {
         return this.§6]§;
      }
      
      public function §]"§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(b2Settings);
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr59:
                              §§pop();
                              §§push(param1 < this.§6]§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr75);
                     }
                  }
               }
            }
            §§goto(addr59);
         }
         addr75:
         return this.§^v§[param1];
      }
   }
}
