package §55§
{
   import §#]§.*;
   import §4!!§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §@"2§:Vector.<b2Vec2>;
      
      public var §,v§:int;
      
      public var §%I§:Number;
      
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§"r§());
         if(_loc6_ || this)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || param1)
            {
               §§push(b2Shape.§'!U§);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§goto(addr192);
                        }
                        §§goto(addr202);
                     }
                     else
                     {
                        §§push(b2Shape.§@!#§);
                        if(_loc6_)
                        {
                           §§goto(addr200);
                        }
                        §§goto(addr205);
                     }
                  }
                  §§goto(addr200);
               }
               §§goto(addr205);
            }
            addr192:
            §§push(0);
            if(_loc5_)
            {
               addr200:
               if(§§pop() === _loc4_)
               {
                  addr202:
                  §§push(1);
                  if(!_loc5_)
                  {
                     addr205:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            §§goto(addr211);
         }
         addr211:
         loop6:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc6_ || param1)
               {
                  this.§@"2§ = new Vector.<b2Vec2>(1,true);
               }
               while(true)
               {
                  this.§@"2§[0] = _loc2_.§ m§;
                  loop2:
                  while(_loc6_)
                  {
                     do
                     {
                        this.§,v§ = 1;
                        while(!(_loc5_ && param1))
                        {
                           this.§%I§ = _loc2_.§%I§;
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr50);
                        }
                        continue loop2;
                     }
                     while(false);
                     
                     break loop6;
                  }
               }
               break;
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc6_)
               {
                  this.§@"2§ = _loc3_.§@"2§;
               }
               loop5:
               while(true)
               {
                  this.§,v§ = _loc3_.§0y§;
                  addr136:
                  addr125:
                  addr130:
                  while(_loc5_)
                  {
                     continue loop5;
                  }
                  this.§%I§ = _loc3_.§%I§;
                  break loop6;
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(!(_loc5_ && _loc2_))
               {
                  if(_loc6_ || param1)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr136);
                  }
                  §§goto(addr125);
               }
               §§goto(addr130);
         }
      }
      
      public function §8!@§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§@"2§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§@"2§[0].y * param1.y);
            if(!_loc6_)
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
               if(!_loc6_)
               {
                  if(_loc7_ || _loc3_)
                  {
                     if(§§pop() >= this.§,v§)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr88:
                                    while(!_loc7_)
                                    {
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
                                    }
                                    continue loop0;
                                 }
                                 addr86:
                              }
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && this))
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          addr105:
                                          §§push(Number(§§pop()));
                                          if(!(_loc6_ && param1))
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr164:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§@"2§[_loc4_].y * param1.y);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         _loc5_ = §§pop();
                                                      }
                                                      addr165:
                                                      while(true)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            §§goto(addr86);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                   }
                                                   addr160:
                                                }
                                                §§goto(addr164);
                                             }
                                          }
                                          addr126:
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr105);
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        §§push(this.§@"2§[_loc4_].x * param1.x);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr167);
               }
               §§goto(addr168);
            }
            break;
         }
         return §§pop();
      }
      
      public function §#@§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§@"2§[0].x * param1.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + this.§@"2§[0].y * param1.y);
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
            if(!(_loc6_ && this))
            {
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() >= this.§,v§)
                  {
                     if(_loc7_ || _loc3_)
                     {
                        break;
                     }
                     loop6:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr178:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr179:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                              addr177:
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    addr166:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             addr175:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                             }
                                             continue loop8;
                                          }
                                          addr174:
                                       }
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                                 §§goto(addr175);
                              }
                              break;
                           }
                           _loc3_ = §§pop();
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§@"2§[_loc4_].x * param1.x);
                     if(_loc7_)
                     {
                        §§push(this.§@"2§[_loc4_].y * param1.y);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && param1))
                           {
                              addr165:
                              §§goto(addr166);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr166);
               }
               §§goto(addr178);
            }
            §§goto(addr179);
         }
         return this.§@"2§[_loc2_];
      }
      
      public function §^x§() : int
      {
         return this.§,v§;
      }
      
      public function §0!C§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(!(_loc3_ && param1))
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && this))
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr69:
                              §§pop();
                              §§push(param1 < this.§,v§);
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
         return this.§@"2§[param1];
      }
   }
}
