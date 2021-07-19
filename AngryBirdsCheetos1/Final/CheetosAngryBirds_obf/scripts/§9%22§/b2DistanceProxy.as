package §9"§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §9Z§:Vector.<b2Vec2>;
      
      public var §#!A§:int;
      
      public var §@s§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         §§push(param1.§"!M§());
         if(!(_loc5_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2Shape.§&!L§);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc6_ || _loc3_)
                           {
                              addr175:
                           }
                           else
                           {
                              addr205:
                           }
                        }
                        else
                        {
                           addr187:
                           §§push(1);
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr205);
                           }
                        }
                        addr211:
                        loop9:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(_loc6_ || this)
                              {
                                 this.§9Z§ = new Vector.<b2Vec2>(1,true);
                                 while(true)
                                 {
                                    this.§9Z§[0] = _loc2_.§[I§;
                                 }
                                 addr77:
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§#!A§ = 1;
                                    do
                                    {
                                       this.§@s§ = _loc2_.§@s§;
                                    }
                                    while(!_loc6_);
                                    
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       if(true)
                                       {
                                          return;
                                       }
                                       addr212:
                                       continue;
                                    }
                                    §§goto(addr77);
                                 }
                              }
                              break;
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§9Z§ = _loc3_.§9Z§;
                                 loop7:
                                 while(true)
                                 {
                                    this.§#!A§ = _loc3_.§9X§;
                                    addr131:
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          break loop9;
                                       }
                                       continue loop7;
                                    }
                                    break loop9;
                                 }
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc6_)
                              {
                                 if(false)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       this.§@s§ = _loc3_.§@s§;
                                       addr118:
                                       while(!(_loc6_ || this))
                                       {
                                          §§goto(addr131);
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr118);
                        }
                        continue loop8;
                        addr210:
                     }
                     else
                     {
                        §§push(b2Shape.§,!K§);
                        if(_loc6_ || param1)
                        {
                           addr186:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr187);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr186);
               }
               §§goto(addr175);
            }
            §§goto(addr187);
         }
         §§goto(addr211);
      }
      
      public function §[[§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§9Z§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§9Z§[0].y * param1.y);
            if(!(_loc6_ && _loc3_))
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc3_))
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§§pop() >= this.§#!A§)
                        {
                           if(_loc7_ || param1)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop1:
                           for(; !(_loc7_ || param1); while(true)
                           {
                              _loc4_++;
                              continue loop1;
                           })
                           {
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr187:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr188:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                       }
                                    }
                                    addr186:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          addr121:
                                          §§push(Number(§§pop()));
                                          if(_loc7_ || this)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      _loc5_ = §§pop();
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   addr185:
                                                }
                                             }
                                             addr167:
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§9Z§[_loc4_].y * param1.y);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§goto(addr167);
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          addr151:
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr121);
                                 }
                                 _loc3_ = §§pop();
                              }
                           }
                           continue;
                        }
                        §§push(this.§9Z§[_loc4_].x * param1.x);
                        §§goto(addr151);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr188);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function § !<§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§9Z§[0].x * param1.x);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() + this.§9Z§[0].y * param1.y);
            if(!(_loc7_ && _loc3_))
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
            if(_loc6_ || _loc3_)
            {
               if(_loc6_ || this)
               {
                  if(§§pop() >= this.§#!A§)
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc6_ || param1)
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              addr167:
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr168:
                                 while(§§pop() > §§pop())
                                 {
                                    if(_loc7_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr188:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop4;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr98:
                                    while(true)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        _loc3_ = §§pop();
                        §§goto(addr124);
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(this.§9Z§[_loc4_].x * param1.x);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(this.§9Z§[_loc4_].y * param1.y);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr160:
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr166:
                                    _loc5_ = §§pop();
                                    §§goto(addr167);
                                 }
                                 §§goto(addr168);
                              }
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr187);
            }
            §§goto(addr188);
         }
         return this.§9Z§[_loc2_];
      }
      
      public function §%d§() : int
      {
         return this.§#!A§;
      }
      
      public function §-&§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(b2Settings);
            if(_loc2_ || this)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              addr68:
                              §§push(param1 < this.§#!A§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr70);
                  }
               }
            }
            §§goto(addr68);
         }
         addr70:
         return this.§9Z§[param1];
      }
   }
}
