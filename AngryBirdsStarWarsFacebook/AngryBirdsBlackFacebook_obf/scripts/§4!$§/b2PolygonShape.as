package §4!$§
{
   import §+#$§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §3#U§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §3#U§ = new b2Mat22();
         }
      }
      
      b2internal var §2"s§:b2Vec2;
      
      b2internal var §=#S§:Vector.<b2Vec2>;
      
      b2internal var §"!M§:Vector.<b2Vec2>;
      
      b2internal var §;!9§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §%!9§ = b2internal:: !7;
               loop1:
               while(true)
               {
                  this.§2"s§ = new b2Vec2();
                  while(true)
                  {
                     this.§=#S§ = new Vector.<b2Vec2>();
                     while(_loc1_)
                     {
                        this.§"!M§ = new Vector.<b2Vec2>();
                        loop4:
                        while(!_loc2_)
                        {
                           § "^§ = b2Settings.b2_polygonRadius;
                           loop5:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§2"s§.§&"Q§();
                                 if(_loc1_)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §1!4§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§1O§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §8"H§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§?!7§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-&§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§""0§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §%#L§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§##E§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §%#I§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§>"u§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §?"a§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc18_ && param1))
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc18_ && param1))
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc11_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               while(_loc17_ || _loc3_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(_loc6_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  addr274:
                                                                  if(_loc18_ && b2PolygonShape)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc17_ || _loc3_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(_loc15_);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop26:
                                                                     while(_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(_loc17_)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              addr209:
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc17_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr324:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc18_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() * _loc13_);
                                                                                 }
                                                                                 addr334:
                                                                                 while(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          break loop26;
                                                                                       }
                                                                                       break;
                                                                                       addr233:
                                                                                       if(_loc17_ || param1)
                                                                                       {
                                                                                          if(_loc17_ || param1)
                                                                                          {
                                                                                             if(_loc17_ || b2PolygonShape)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                continue loop28;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           continue loop26;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        §§goto(addr341);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop4;
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
                           }
                        }
                     }
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr90);
         }
         if(!_loc18_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc17_ || param1)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc18_)
            {
               addr417:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!_loc18_)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr417);
      }
      
      b2internal static function §2!A§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_ || _loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            super.Set(param1);
            if(!(_loc5_ && _loc2_))
            {
               §§goto(addr33);
            }
            §§goto(addr37);
         }
         addr33:
         if(param1 is b2PolygonShape)
         {
            addr37:
            _loc2_ = param1 as b2PolygonShape;
            if(_loc4_ || _loc2_)
            {
               this.§2"s§.SetV(_loc2_.§2"s§);
               while(true)
               {
                  this.§;!9§ = _loc2_.§;!9§;
                  while(!(_loc5_ && _loc3_))
                  {
                     this.§,"S§(this.§;!9§);
                     loop2:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc3_ = 0;
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc3_ < this.§;!9§)
                           {
                              this.§=#S§[_loc3_].SetV(_loc2_.§=#S§[_loc3_]);
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§"!M§[_loc3_].SetV(_loc2_.§"!M§[_loc3_]);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(!_loc5_)
                                    {
                                       _loc3_++;
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(false)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         addr141:
      }
      
      public function §1O§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!_loc7_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc8_)
         {
            this.§?!7§(_loc3_,param2);
         }
      }
      
      public function §?!7§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(!_loc8_)
         {
            §§push(param2);
            if(!(_loc8_ && param1))
            {
               if(§§pop() == 0)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr225:
                     param2 = param1.length;
                  }
                  while(true)
                  {
                  }
                  addr226:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  addr204:
                  loop2:
                  while(true)
                  {
                     this.§;!9§ = param2;
                     while(true)
                     {
                        this.§,"S§(param2);
                        while(!_loc8_)
                        {
                           _loc3_ = 0;
                           if(_loc7_ || _loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        §§push(this.§;!9§);
                        if(_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              this.§=#S§[_loc3_].SetV(param1[_loc3_]);
                              break;
                           }
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(0);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr133:
                                 while(true)
                                 {
                                    addr103:
                                    while(true)
                                    {
                                       addr283:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr284:
                                          while(true)
                                          {
                                             §§push(this.§;!9§);
                                             §§goto(addr286);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr299);
                        }
                        addr286:
                        addr307:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc7_)
                              {
                                 addr299:
                                 this.§2"s§ = §?"a§(this.§=#S§,this.§;!9§);
                                 break;
                              }
                              break;
                           }
                           §§push(_loc3_);
                           continue loop7;
                        }
                        return;
                     }
                     while(true)
                     {
                        _loc3_++;
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr226);
               }
            }
            §§goto(addr225);
         }
         §§goto(addr204);
      }
      
      public function §""0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;!9§ = 4;
         }
         while(true)
         {
            this.§,"S§(4);
            while(true)
            {
               this.§=#S§[0].Set(-param1,-param2);
               while(true)
               {
                  this.§=#S§[1].Set(param1,-param2);
                  loop3:
                  while(true)
                  {
                     this.§=#S§[2].Set(param1,param2);
                     loop4:
                     while(true)
                     {
                        this.§=#S§[3].Set(-param1,param2);
                        while(true)
                        {
                           this.§"!M§[0].Set(0,-1);
                           continue loop3;
                           addr67:
                           if(!(_loc4_ && _loc3_))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.§"!M§[3].Set(-1,0);
               §§goto(addr40);
            }
            if(_loc4_ && param1)
            {
               continue;
            }
            §§goto(addr56);
         }
      }
      
      public function §##E§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            this.§;!9§ = 4;
            while(true)
            {
               this.§,"S§(4);
               addr164:
               while(_loc8_)
               {
                  this.§=#S§[0].Set(-param1,-param2);
               }
            }
         }
         loop2:
         while(true)
         {
            this.§=#S§[1].Set(param1,-param2);
            loop3:
            while(true)
            {
               this.§=#S§[2].Set(param1,param2);
               while(true)
               {
                  this.§=#S§[3].Set(-param1,param2);
                  loop5:
                  for(; !(_loc7_ && param2); if(_loc8_ || param1)
                  {
                     continue loop3;
                  })
                  {
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                     this.§"!M§[0].Set(0,-1);
                     loop6:
                     while(true)
                     {
                        this.§"!M§[1].Set(1,0);
                        loop7:
                        while(true)
                        {
                           this.§"!M§[2].Set(0,1);
                           while(_loc8_)
                           {
                              while(true)
                              {
                                 this.§"!M§[3].Set(-1,0);
                                 addr48:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop5;
                                 addr36:
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc5_:b2Transform;
                                 (_loc5_ = new b2Transform()).position = param3;
                                 if(!_loc7_)
                                 {
                                    _loc5_.R.Set(param4);
                                 }
                                 var _loc6_:int = 0;
                                 addr187:
                                 if(_loc6_ >= this.§;!9§)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!_loc8_)
                                          {
                                             this.§"!M§[_loc6_] = b2Math.§="L§(_loc5_.R,this.§"!M§[_loc6_]);
                                             _loc6_++;
                                             addr208:
                                             §§goto(addr187);
                                             addr222:
                                             addr246:
                                          }
                                          return;
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr208);
                                 }
                                 this.§=#S§[_loc6_] = b2Math.§""$§(_loc5_,this.§=#S§[_loc6_]);
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr164);
                        }
                     }
                  }
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
               this.§2"s§ = param3;
               if(_loc8_ || param1)
               {
                  §§goto(addr36);
               }
               §§goto(addr48);
            }
         }
      }
      
      public function §>"u§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!9§ = 2;
            loop0:
            while(true)
            {
               this.§,"S§(2);
               loop1:
               while(true)
               {
                  this.§=#S§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§=#S§[1].SetV(param2);
                     loop3:
                     while(true)
                     {
                        §§push(this.§2"s§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           if(!_loc3_)
                           {
                              §§push(param1.x);
                              if(_loc4_)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                                 addr177:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              addr178:
                           }
                           addr179:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr180:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr86:
                        if(_loc4_ || this)
                        {
                           loop12:
                           while(true)
                           {
                              this.§"!M§[1].x = -this.§"!M§[0].x;
                              addr70:
                              addr116:
                              while(_loc4_ || _loc3_)
                              {
                                 this.§"!M§[1].y = -this.§"!M§[0].y;
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 addr48:
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc4_)
                                    {
                                       break loop12;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr86);
                                    }
                                    else
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                                 continue loop3;
                                 addr84:
                              }
                              while(!_loc3_)
                              {
                                 this.§"!M§[0].Normalize();
                                 §§goto(addr84);
                                 §§goto(addr70);
                              }
                              continue loop2;
                           }
                           return;
                           addr93:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(!_loc11_)
         {
            §§push(§§pop() - param1.position.x);
            if(!_loc11_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(_loc12_ || param2)
            {
               §§push(§§pop() - param1.position.y);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(_loc12_)
            {
               §§push(_loc4_.col1.x);
               if(_loc12_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc6_);
                     if(!_loc11_)
                     {
                        addr74:
                        §§push(§§pop() * _loc4_.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        addr81:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!_loc11_)
                     {
                        §§push(_loc4_.col2.x);
                        if(!(_loc11_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_ || _loc3_)
                           {
                              addr104:
                              §§push(_loc6_);
                              if(!_loc12_)
                              {
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr114);
                        }
                        addr111:
                        §§push(§§pop() + §§pop() * _loc4_.col2.y);
                        if(!_loc11_)
                        {
                           addr114:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§;!9§)
                           {
                              return true;
                           }
                           _loc3_ = this.§=#S§[_loc9_];
                           if(_loc12_ || this)
                           {
                              §§push(_loc7_);
                              if(_loc12_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc12_ || param1)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc12_ || this)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc12_ || this)
                                             {
                                                addr184:
                                                §§push(§§pop() - _loc3_.y);
                                                if(_loc12_)
                                                {
                                                   addr187:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             addr189:
                                             _loc3_ = this.§"!M§[_loc9_];
                                             if(!(_loc12_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(_loc3_.x);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_ || this)
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc12_)
                                                         {
                                                            addr230:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               addr238:
                                                               §§push(Number(§§pop()));
                                                               if(_loc12_ || this)
                                                               {
                                                                  addr246:
                                                                  §§push(§§pop());
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                  }
                                                                  addr256:
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc9_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr256);
                                                               §§push(0);
                                                            }
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr189);
                        }
                        return false;
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr81);
               }
               §§goto(addr74);
            }
            §§goto(addr81);
         }
         §§goto(addr36);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         §§push(0);
         if(_loc21_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§%#8§);
         if(_loc21_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_ || this)
         {
            §§push(param2.p1);
            if(_loc21_)
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(_loc21_ || this)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_)
                           {
                              addr84:
                              _loc6_ = §§pop();
                              if(_loc21_)
                              {
                                 addr89:
                                 §§push(param2.p1.y);
                                 if(!(_loc20_ && this))
                                 {
                                    addr100:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && param1))
                                    {
                                       addr109:
                                       _loc7_ = §§pop();
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!(_loc20_ && this))
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc21_ || param3)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       addr135:
                                       §§push(_loc7_);
                                       if(!(_loc20_ && param3))
                                       {
                                          addr143:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(_loc6_);
                                    if(!(_loc20_ && this))
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(!(_loc20_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc20_)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc20_ && param1))
                                             {
                                                addr186:
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc20_)
                                             {
                                                addr194:
                                                var _loc11_:Number = §§pop();
                                                if(_loc21_ || param3)
                                                {
                                                   §§push(param2.p2);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(param3.position);
                                                         if(_loc21_ || param1)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc21_ || param3)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc20_ && param3))
                                                                  {
                                                                     addr242:
                                                                     _loc6_ = §§pop();
                                                                     if(_loc21_ || param2)
                                                                     {
                                                                        addr252:
                                                                        §§push(param2.p2.y);
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           addr263:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(_loc21_)
                                                                           {
                                                                              addr267:
                                                                              _loc7_ = §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(!(_loc20_ && param3))
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr308:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_ || this)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                           }
                                                                           var _loc12_:Number = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(_loc21_ || param1)
                                                                           {
                                                                              §§push(_loc8_.col2.x);
                                                                              if(!(_loc20_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_ || param3)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc21_ || param3)
                                                                                    {
                                                                                       addr344:
                                                                                       §§push(§§pop() * _loc8_.col2.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc20_)
                                                                                    {
                                                                                    }
                                                                                    addr352:
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc21_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(!(_loc20_ && param3))
                                                                                       {
                                                                                          addr370:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc21_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() - _loc11_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr384:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          var _loc16_:* = -1;
                                                                                          var _loc17_:int = 0;
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                §§push(this.§;!9§);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§goto(addr878);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push((_loc9_ = this.§=#S§[_loc17_]).x);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc20_ && param1))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc21_ || param1)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        addr434:
                                                                                                                        §§push(§§pop() - _loc11_);
                                                                                                                        if(_loc21_ || param2)
                                                                                                                        {
                                                                                                                           addr443:
                                                                                                                           _loc7_ = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr443);
                                                                                                                  }
                                                                                                                  §§push((_loc9_ = this.§"!M§[_loc17_]).x);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.x);
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                loop1:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop26:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc21_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc20_ && param3))
                                                                                                                                                         {
                                                                                                                                                            if(_loc21_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               loop44:
                                                                                                                                                               while(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  loop27:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr663:
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr663:
                                                                                                                                                                              }
                                                                                                                                                                              loop35:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc21_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr671:
                                                                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop36:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc20_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                                                                break loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop37:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   loop23:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      addr790:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr791:
                                                                                                                                                                                                         loop25:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                                                                  loop45:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                        if(_loc21_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                        loop29:
                                                                                                                                                                                                                        while(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop22:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc20_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr837:
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    loop18:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                   addr765:
                                                                                                                                                                                                                                                   loop31:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            loop15:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                               loop16:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop17:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                              while(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc20_ && param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                addr712:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                      addr607:
                                                                                                                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr806:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                                                                            addr807:
                                                                                                                                                                                                                                                                                                            addr836:
                                                                                                                                                                                                                                                                                                            while(!_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                  addr810:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                               break loop18;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          break loop31;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr838:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                                break loop17;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr839:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr806);
                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr825:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr838);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr694:
                                                                                                                                                                                                                                                                              addr820:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr780:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop37;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                           addr841:
                                                                                                                                                                                                                                                                           addr842:
                                                                                                                                                                                                                                                                           while(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop13:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr521:
                                                                                                                                                                                                                                                                                 loop14:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                                                                                                                          if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop40:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop27;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc20_ && param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop45;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr705);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr711);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop41:
                                                                                                                                                                                                                                                                                                         while(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc17_++;
                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop40;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr780);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr510);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop0;
                                                                                                                                                                                                                                                                                                addr565:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr663);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr694);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr607);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break loop26;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr840:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr810);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr812);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr767:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr825);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr834:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      break loop22;
                                                                                                                                                                                                                                                      §§goto(addr671);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr764:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr838);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr841);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr807);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr838);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr837:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr836);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr521);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr839);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr798:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr837);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr840);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr790);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr834);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr712);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr521);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr521);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr697);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr663);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr765);
                                                                                                                                                   }
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr820);
                                                                                                                                          }
                                                                                                                                          §§goto(addr719);
                                                                                                                                       }
                                                                                                                                       §§goto(addr614);
                                                                                                                                    }
                                                                                                                                    §§goto(addr837);
                                                                                                                                 }
                                                                                                                                 §§goto(addr565);
                                                                                                                              }
                                                                                                                              §§goto(addr767);
                                                                                                                           }
                                                                                                                           §§goto(addr764);
                                                                                                                        }
                                                                                                                        §§goto(addr837);
                                                                                                                     }
                                                                                                                     §§goto(addr809);
                                                                                                                  }
                                                                                                                  §§goto(addr798);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr443);
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr867);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr867:
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                param1.fraction = _loc4_;
                                                                                             }
                                                                                             addr878:
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                break loop0;
                                                                                             }
                                                                                             _loc8_ = param3.R;
                                                                                             _loc9_ = this.§"!M§[_loc16_];
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(param1.normal);
                                                                                                loop54:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr993:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr994:
                                                                                                      loop56:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         loop57:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc21_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr1017:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     addr1019:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1020:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr943:
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  if(!(_loc21_ || param3))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     if(_loc21_ || param3)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                        {
                                                                                                                           addr972:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                           {
                                                                                                                              addr980:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 §§goto(addr987);
                                                                                                                              }
                                                                                                                              continue loop56;
                                                                                                                           }
                                                                                                                           continue loop57;
                                                                                                                        }
                                                                                                                        §§goto(addr1019);
                                                                                                                     }
                                                                                                                     §§goto(addr1020);
                                                                                                                  }
                                                                                                                  §§goto(addr972);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1021:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop54;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr991:
                                                                                             }
                                                                                             else if(true)
                                                                                             {
                                                                                                §§goto(addr1023);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.normal);
                                                                                                if(_loc21_ || param2)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc20_ && this))
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         if(_loc21_ || param3)
                                                                                                         {
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  if(!(_loc21_ || param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr943);
                                                                                                               }
                                                                                                               §§goto(addr980);
                                                                                                            }
                                                                                                            §§goto(addr1017);
                                                                                                         }
                                                                                                         §§goto(addr972);
                                                                                                      }
                                                                                                      §§goto(addr980);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr993);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr991);
                                                                                                }
                                                                                                §§goto(addr993);
                                                                                             }
                                                                                             addr987:
                                                                                             §§pop().y = §§pop();
                                                                                             return true;
                                                                                          }
                                                                                          addr1023:
                                                                                          return false;
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_ && param3)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                }
                                                §§goto(addr252);
                                             }
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr89);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§=#S§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc12_ && param2))
            {
               §§push(_loc4_.x);
               if(_loc13_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && this))
                  {
                     addr72:
                     §§push(_loc3_.col2.x);
                     if(_loc13_)
                     {
                        addr68:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc13_)
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param2.position.y);
                     if(!(_loc12_ && param1))
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc13_)
                        {
                           §§push(_loc4_.x);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc12_ && param1))
                              {
                                 addr118:
                                 §§push(_loc3_.col2.y);
                                 if(_loc13_ || param1)
                                 {
                                    addr114:
                                    §§push(§§pop() * _loc4_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc13_ || this)
                                 {
                                    addr127:
                                    var _loc6_:* = Number(§§pop());
                                    §§push(_loc5_);
                                    if(_loc13_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(_loc6_);
                                    if(_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    var _loc9_:int = 1;
                                    loop0:
                                    while(_loc9_ < this.§;!9§)
                                    {
                                       _loc4_ = this.§=#S§[_loc9_];
                                       if(!(_loc12_ && param1))
                                       {
                                          §§push(param2.position);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc12_)
                                             {
                                                §§push(_loc3_.col1);
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.x);
                                                      if(_loc13_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            addr534:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr535:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.y);
                                                                  addr537:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                            }
                                                            loop15:
                                                            for(; _loc13_ || param2; if(_loc12_ && param1)
                                                            {
                                                               continue;
                                                            },if(_loc13_)
                                                            {
                                                               if(!(_loc13_ || this))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(§§pop() > §§pop());
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr358);
                                                            },§§goto(addr467))
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop16:
                                                                        while(_loc13_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop17:
                                                                              while(!_loc12_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop18:
                                                                                 for(; !(_loc12_ && _loc3_); if(_loc12_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr408),§§push(Number(§§pop())))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          loop21:
                                                                                          for(; _loc13_; while(!(_loc12_ && param1))
                                                                                          {
                                                                                             §§goto(addr378);
                                                                                             §§push(Number(§§pop()));
                                                                                             §§goto(addr336);
                                                                                          })
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             loop22:
                                                                                             while(!_loc12_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               addr436:
                                                                                                               if(!(_loc13_ || param2))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr447:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                               addr446:
                                                                                                            }
                                                                                                            addr445:
                                                                                                            addr328:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr446);
                                                                                                            }
                                                                                                            if(_loc12_ && param2)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr336:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc13_ || this))
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            _loc8_ = §§pop();
                                                                                                            loop53:
                                                                                                            for(; !(_loc12_ && this); _loc9_++,if(!(_loc13_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },if(_loc12_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            },if(true)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            },§§goto(addr174))
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr448:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     addr388:
                                                                                                                     while(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr411:
                                                                                                                                 while(_loc13_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr419:
                                                                                                                                       addr408:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          addr420:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                addr357:
                                                                                                                                                addr290:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   addr358:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop53;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc12_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop28;
                                                                                                                                                      }
                                                                                                                                                      addr393:
                                                                                                                                                      addr393:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc12_ && param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr445);
                                                                                                                                                      }
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr408:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr446);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr392:
                                                                                                                           addr226:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                           if(!(_loc12_ && param1))
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(_loc13_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr368:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr420);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc13_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc3_.col1);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.x);
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               addr541:
                                                                                                            }
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         addr455:
                                                                                                      }
                                                                                                      §§goto(addr448);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                   }
                                                                                                   §§goto(addr445);
                                                                                                }
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr541);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr540);
                                                                              }
                                                                              addr539:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr535);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr539);
                                                                        }
                                                                        addr496:
                                                                        addr538:
                                                                     }
                                                                     §§goto(addr537);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr534);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr538);
                                                   }
                                                }
                                             }
                                             §§goto(addr540);
                                          }
                                       }
                                       §§goto(addr384);
                                    }
                                    if(_loc13_)
                                    {
                                       §§push(param1.§1!,§);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() - b2internal:: "^);
                                             if(_loc13_ || param2)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc12_)
                                                {
                                                   addr624:
                                                   §§push(param1.§1!,§);
                                                   §§push(_loc6_);
                                                   if(_loc13_)
                                                   {
                                                      addr629:
                                                      §§pop().y = §§pop() - b2internal:: "^;
                                                   }
                                                   §§goto(addr629);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§ D§);
                                                   loop55:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr608:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + b2internal:: "^;
                                                         continue loop55;
                                                      }
                                                   }
                                                   if(_loc12_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   return;
                                                   addr603:
                                                }
                                             }
                                          }
                                          §§goto(addr629);
                                       }
                                       §§goto(addr624);
                                    }
                                    §§goto(addr603);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr72);
               }
               §§goto(addr68);
            }
            §§goto(addr72);
         }
         §§goto(addr75);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(_loc28_ || param2)
         {
            if(this.§;!9§ == 2)
            {
               loop137:
               while(true)
               {
                  §§push(param1.§+#K§);
                  loop138:
                  while(true)
                  {
                     §§push(0.5);
                     if(_loc28_ || param2)
                     {
                        §§push(§§pop() * (this.§=#S§[0].x + this.§=#S§[1].x));
                     }
                     loop139:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        while(true)
                        {
                           §§push(param1.§+#K§);
                           if(_loc27_ && _loc3_)
                           {
                              break;
                           }
                           §§push(0.5);
                           if(!(_loc27_ && param1))
                           {
                              if(!_loc28_)
                              {
                                 continue loop139;
                              }
                              §§push(§§pop() * (this.§=#S§[0].y + this.§=#S§[1].y));
                           }
                           §§pop().y = §§pop();
                           loop141:
                           while(_loc28_ || _loc3_)
                           {
                              while(true)
                              {
                                 param1.§5"Z§ = 0;
                                 if(!_loc27_)
                                 {
                                    continue loop137;
                                 }
                                 continue loop141;
                              }
                              return;
                           }
                        }
                        continue loop138;
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc28_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§;!9§)
               {
                  _loc11_ = this.§=#S§[_loc10_];
                  if(!(_loc27_ && _loc3_))
                  {
                     _loc12_ = _loc10_ + 1 < this.§;!9§ ? this.§=#S§[int(_loc10_ + 1)] : this.§=#S§[0];
                     if(_loc28_)
                     {
                        §§push(_loc11_.x);
                        loop1:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc11_.y);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr1066:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr1067:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr1068:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  addr1069:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     addr1048:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr1049:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr1050:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr1051:
                                                                              while(!(_loc27_ && param1))
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 while(!_loc27_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       addr1037:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr1038:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             addr1039:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                addr1040:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr1041:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      addr1042:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1043:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr1016:
                                                         if(!(_loc28_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc27_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(_loc17_);
                                                         loop31:
                                                         while(!_loc27_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop32:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop33:
                                                               while(_loc28_)
                                                               {
                                                                  _loc18_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop38:
                                                                              while(_loc28_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop40:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       loop41:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             loop43:
                                                                                             while(_loc28_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                loop44:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_.x);
                                                                                                   loop45:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop46:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc12_.x);
                                                                                                         loop47:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop48:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop49:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop50:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop51:
                                                                                                                     while(!(_loc27_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           while(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 loop55:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    loop56:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       loop57:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_.y);
                                                                                                                                          loop58:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             loop59:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_.y);
                                                                                                                                                loop60:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop61:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop62:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop63:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc27_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc28_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        loop64:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                           loop65:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              loop66:
                                                                                                                                                                              for(; !_loc27_; while(_loc28_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                 §§goto(addr887);
                                                                                                                                                                              })
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop67:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                    addr912:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       addr901:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr902:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                             addr903:
                                                                                                                                                                                             while(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr891:
                                                                                                                                                                                                   while(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop4;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc21_ = §§pop();
                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1069);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1048);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop65;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr654:
                                                                                                                                                                                    if(!(_loc28_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop122:
                                                                                                                                                                                       while(_loc28_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          loop106:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop107:
                                                                                                                                                                                             while(_loc28_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                loop108:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr687:
                                                                                                                                                                                                   loop109:
                                                                                                                                                                                                   while(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop110:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr702:
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop111:
                                                                                                                                                                                                               for(; !(_loc27_ && this); if(!(_loc28_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               },§§goto(addr389))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc26_ = §§pop();
                                                                                                                                                                                                                  loop112:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr273:
                                                                                                                                                                                                                     loop113:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        if(!(_loc28_ || param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop111;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr282:
                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop109;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop107;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc25_);
                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop108;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc28_ || param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop106;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc28_ || param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc26_);
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr339:
                                                                                                                                                                                                                                             if(_loc28_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr347:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop105:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc28_ || param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                               if(_loc28_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop106;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc28_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr534:
                                                                                                                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr549:
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr751:
                                                                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                 addr607:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr610:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop110;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr645:
                                                                                                                                                                                                                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr654);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                                  break loop122;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr794:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr827:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     break loop111;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop63;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1042);
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr645);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                                                                                                                                                                         addr802:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr797:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                      addr798:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         addr799:
                                                                                                                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr802);
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop67;
                                                                                                                                                                                                                                                                                                                                                addr628:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop109;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                             addr773:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr610:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       addr775:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr794);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr797);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr606:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr610);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr773);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop60;
                                                                                                                                                                                                                                                                                                                        addr751:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop106;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop45;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  break loop112;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr610);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr618);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1039);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr628);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop105;
                                                                                                                                                                                                                                                                                                addr554:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr618);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr775);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr610);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr757);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr607);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(_loc28_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr771:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr751);
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr771:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr757);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                                                                    addr731:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr751);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr728:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr610);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr771);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr773);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr606);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr534);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr549);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr771);
                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                         addr477:
                                                                                                                                                                                                                                                         addr768:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr554);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr739);
                                                                                                                                                                                                                                                   §§goto(addr339);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1040);
                                                                                                                                                                                                                                                addr455:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr798);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr610);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop112;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr796);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr347);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr799);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr357:
                                                                                                                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop111;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr367:
                                                                                                                                                                                                                                 if(!(_loc28_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                       §§goto(addr367);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                    addr847:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    continue loop111;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1038);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr793);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0.25);
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop122;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr455);
                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr477);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr901);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop113;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                                                                                                                continue loop112;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr902);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr824:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr891);
                                                                                                                                                                                                                              §§goto(addr282);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr812:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(!(_loc27_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1016);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1067);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1043);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     break loop109;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr840);
                                                                                                                                                                                                                  §§goto(addr702);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr702:
                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1068);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr702);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc28_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr768);
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1041);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop49;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr796);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr687);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop51;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop50;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1050);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1049);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1051);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(_loc27_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr827);
                                                                                    §§push(_loc16_);
                                                                                 }
                                                                              }
                                                                              continue loop32;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1036);
                                                            }
                                                         }
                                                         §§goto(addr1066);
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
                     }
                     §§goto(addr1044);
                  }
                  §§goto(addr236);
               }
               if(!_loc27_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!(_loc27_ && this))
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§5"Z§ = §§pop();
                  if(_loc28_ || param2)
                  {
                     §§push(_loc3_);
                     if(_loc28_ || param1)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1210:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1211:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           addr1158:
                           §§push(1);
                           if(!(_loc28_ || param2))
                           {
                              continue;
                           }
                           §§push(_loc5_);
                           if(_loc28_ || this)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc28_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && param2))
                                 {
                                    addr1185:
                                    if(!_loc27_)
                                    {
                                       addr1188:
                                       _loc4_ = Number(§§pop());
                                       while(true)
                                       {
                                          param1.§+#K§.Set(_loc3_,_loc4_);
                                          loop135:
                                          for(; !(_loc27_ && this); while(true)
                                          {
                                             §§push(param1);
                                             §§push(param2);
                                             if(!(_loc27_ && param1))
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§pop().I = §§pop();
                                             if(!_loc27_)
                                             {
                                                break;
                                             }
                                             continue loop135;
                                          },return)
                                          {
                                             if(_loc28_)
                                             {
                                                continue;
                                             }
                                             loop133:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc27_ && param2))
                                                {
                                                   if(_loc28_)
                                                   {
                                                      §§goto(addr1158);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr1213:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         continue loop133;
                                                      }
                                                   }
                                                   addr1212:
                                                }
                                                §§goto(addr1185);
                                             }
                                             §§goto(addr1210);
                                          }
                                       }
                                    }
                                    §§goto(addr1213);
                                 }
                                 §§goto(addr1188);
                              }
                              §§goto(addr1211);
                           }
                           §§goto(addr1210);
                        }
                     }
                     §§goto(addr1212);
                  }
               }
               §§goto(addr1146);
            }
         }
         §§goto(addr131);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§9#A§(param3.R,param1);
         §§push(param2);
         if(_loc28_ || param1)
         {
            §§push(§§pop() - b2Math.§+#>§(param1,param3.position));
            if(_loc28_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:* = -1;
         var _loc10_:* = -1;
         var _loc11_:* = false;
         if(_loc28_)
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(!(_loc27_ && this))
            {
               loop1:
               while(true)
               {
                  §§push(this.§;!9§);
                  if(!_loc27_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc27_)
                        {
                           §§push(_loc8_);
                           if(!(_loc27_ && this))
                           {
                              var _loc26_:* = §§pop();
                              if(!(_loc27_ && param3))
                              {
                                 §§push(0);
                                 if(_loc28_ || param3)
                                 {
                                    §§push(_loc26_);
                                    if(_loc28_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc27_ && this))
                                          {
                                             §§push(0);
                                             if(!(_loc27_ && param3))
                                             {
                                                addr475:
                                                if(_loc28_)
                                                {
                                                   addr478:
                                                   switch(§§pop())
                                                   {
                                                      case 1:
                                                         §§push(_loc9_);
                                                         if(!_loc27_)
                                                         {
                                                            addr357:
                                                            §§push(-1);
                                                            if(!_loc27_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     addr368:
                                                                     §§push(this.§;!9§);
                                                                     if(_loc28_)
                                                                     {
                                                                        addr372:
                                                                        §§push(§§pop() - 1);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc27_)
                                                                           {
                                                                              §§goto(addr478);
                                                                           }
                                                                           addr378:
                                                                           _loc9_ = §§pop();
                                                                           if(!(_loc27_ && this))
                                                                           {
                                                                              addr410:
                                                                              break;
                                                                              addr386:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr399:
                                                                        §§push(int(§§pop()));
                                                                        if(!_loc27_)
                                                                        {
                                                                           addr402:
                                                                           _loc10_ = §§pop();
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              §§goto(addr410);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr490:
                                                                        var _loc13_:* = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!(_loc27_ && param2))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              §§push(§§pop() % this.§;!9§);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(0 - _loc7_[_loc9_]);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                           if(!_loc27_)
                                                                           {
                                                                              addr540:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           §§push(0 - _loc7_[_loc10_]);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           §§push(§§findproperty(b2Vec2));
                                                                           §§push(this.§=#S§[_loc9_].x * (1 - _loc15_));
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(this.§=#S§[_loc13_].x * _loc15_);
                                                                              if(_loc28_ || this)
                                                                              {
                                                                                 addr588:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(this.§=#S§[_loc9_].y * (1 - _loc15_));
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    addr599:
                                                                                    §§push(§§pop() + this.§=#S§[_loc13_].y * _loc15_);
                                                                                 }
                                                                                 var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                 §§push(§§findproperty(b2Vec2));
                                                                                 §§push(this.§=#S§[_loc10_].x * (1 - _loc16_));
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(this.§=#S§[_loc14_].x * _loc16_);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       addr632:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(this.§=#S§[_loc10_].y * (1 - _loc16_));
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr643:
                                                                                          §§push(§§pop() + this.§=#S§[_loc14_].y * _loc16_);
                                                                                       }
                                                                                       var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                       var _loc19_:* = Number(0);
                                                                                       var _loc20_:b2Vec2 = new b2Vec2();
                                                                                       var _loc21_:b2Vec2 = this.§=#S§[_loc13_];
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                _loc12_ = §§pop();
                                                                                                if(_loc28_ || param3)
                                                                                                {
                                                                                                   addr996:
                                                                                                   if(_loc12_ != _loc14_)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc28_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() % this.§;!9§);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr723:
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(_loc28_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                 {
                                                                                                                                    _loc22_ = _loc18_;
                                                                                                                                    if(!(_loc27_ && param3))
                                                                                                                                    {
                                                                                                                                       addr756:
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc21_.x);
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_.x);
                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr785:
                                                                                                                                                   §§push(_loc22_.y);
                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr794:
                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_.y);
                                                                                                                                                               if(_loc28_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_.y);
                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr827:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr843:
                                                                                                                                                                        §§push(_loc22_.x);
                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr839:
                                                                                                                                                                           §§push(§§pop() - _loc17_.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                        if(_loc28_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr851:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc28_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr862:
                                                                                                                                                                                 _loc25_ = §§pop();
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(!(_loc27_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr981:
                                                                                                                                                                                       §§push(§§pop() + _loc25_);
                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr990:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr990);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr932:
                                                                                                                                                                                 addr992:
                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc25_);
                                                                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_.x);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_.x);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr960:
                                                                                                                                                                                             addr971:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc22_.x);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc27_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr968:
                                                                                                                                                                                                §§push(§§pop() / 3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                             addr972:
                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc25_);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_.y);
                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_.y);
                                                                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr909:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc22_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc28_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr920:
                                                                                                                                                                                                            §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                                                                            addr919:
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr930:
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr932);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc21_ = _loc22_;
                                                                                                                                                                                                                  §§goto(addr996);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr992);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr972);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr919);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr909);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr919);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr920);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr960);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr968);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr971);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr981);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr862);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr981);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr843);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr839);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr843);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr981);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr843);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr827);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr843);
                                                                                                                                                }
                                                                                                                                                §§goto(addr851);
                                                                                                                                             }
                                                                                                                                             §§goto(addr794);
                                                                                                                                          }
                                                                                                                                          §§goto(addr785);
                                                                                                                                       }
                                                                                                                                       §§goto(addr990);
                                                                                                                                    }
                                                                                                                                    §§goto(addr930);
                                                                                                                                 }
                                                                                                                                 addr1028:
                                                                                                                                 param4.SetV(b2Math.§""$§(param3,_loc20_));
                                                                                                                                 §§goto(addr1035);
                                                                                                                              }
                                                                                                                              _loc22_ = this.§=#S§[_loc12_];
                                                                                                                              §§goto(addr756);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr996);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1035:
                                                                                                            return _loc19_;
                                                                                                         }
                                                                                                         §§goto(addr996);
                                                                                                      }
                                                                                                      §§goto(addr723);
                                                                                                   }
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      addr1006:
                                                                                                      _loc20_.§?1§(1 / _loc19_);
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                         §§goto(addr1028);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1028);
                                                                                                   addr693:
                                                                                                }
                                                                                                §§goto(addr1006);
                                                                                             }
                                                                                             §§goto(addr723);
                                                                                          }
                                                                                          §§goto(addr996);
                                                                                       }
                                                                                       §§goto(addr693);
                                                                                    }
                                                                                    §§goto(addr643);
                                                                                 }
                                                                                 §§goto(addr632);
                                                                              }
                                                                              §§goto(addr599);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        §§goto(addr540);
                                                                     }
                                                                     addr489:
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr486:
                                                                        §§push(§§pop() % this.§;!9§);
                                                                     }
                                                                     §§goto(addr490);
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§push(this.§;!9§);
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§goto(addr399);
                                                                  }
                                                                  §§goto(addr489);
                                                               }
                                                               §§goto(addr399);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         §§goto(addr372);
                                                      default:
                                                         break;
                                                      case 0:
                                                         addr288:
                                                         if(_loc11_)
                                                         {
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               _loc24_ = new b2MassData();
                                                               if(_loc28_)
                                                               {
                                                                  this.ComputeMass(_loc24_,1);
                                                                  param4.SetV(b2Math.§""$§(param3,_loc24_.§+#K§));
                                                                  addr336:
                                                                  if(_loc27_ && param1)
                                                                  {
                                                                     §§goto(addr336);
                                                                  }
                                                               }
                                                               return _loc24_.§5"Z§;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc28_ || param1)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr410);
                                                   }
                                                   addr479:
                                                   §§push(_loc9_);
                                                   if(_loc28_)
                                                   {
                                                      §§goto(addr489);
                                                   }
                                                }
                                                §§goto(addr372);
                                             }
                                             else
                                             {
                                                addr465:
                                                if(§§pop() === _loc26_)
                                                {
                                                   addr467:
                                                   §§push(1);
                                                   if(!_loc28_)
                                                   {
                                                   }
                                                   §§goto(addr475);
                                                }
                                                else
                                                {
                                                   §§goto(addr475);
                                                   §§push(2);
                                                }
                                                §§goto(addr475);
                                             }
                                          }
                                          §§goto(addr467);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(!(_loc27_ && param1))
                                          {
                                             §§goto(addr465);
                                          }
                                       }
                                       §§goto(addr475);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr475);
                              }
                              §§goto(addr467);
                           }
                           §§goto(addr489);
                           addr285:
                        }
                        §§goto(addr479);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§+#>§(_loc5_,this.§=#S§[_loc12_]) - _loc6_;
                        if(!(_loc27_ && param1))
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           loop2:
                           while(true)
                           {
                              _loc23_ = §§pop();
                              if(_loc28_ || param3)
                              {
                                 §§push(_loc12_);
                                 if(!_loc27_)
                                 {
                                    §§push(0);
                                    if(!(_loc27_ && this))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc23_);
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc23_);
                                             if(_loc28_ || param3)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc27_ && this))
                                                {
                                                   addr111:
                                                   if(!(_loc28_ || param1))
                                                   {
                                                      while(!_loc27_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      continue loop2;
                                                      addr145:
                                                   }
                                                   if(!_loc27_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(_loc28_ || param2)
                                                      {
                                                         addr128:
                                                         if(_loc28_ || this)
                                                         {
                                                            _loc12_++;
                                                            if(_loc28_ || param3)
                                                            {
                                                               addr85:
                                                               if(_loc28_ || param2)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc8_++;
                                                                  if(!_loc28_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop10;
                                                                  §§goto(addr85);
                                                               }
                                                               §§goto(addr410);
                                                               addr163:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc27_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        §§goto(addr163);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr357);
                                                                     }
                                                                  }
                                                                  §§goto(addr486);
                                                               }
                                                               break;
                                                               §§goto(addr128);
                                                            }
                                                            §§goto(addr402);
                                                            addr148:
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc27_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc27_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() - 1);
                                                               if(_loc28_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr141:
                                                         }
                                                      }
                                                      §§goto(addr368);
                                                      addr201:
                                                   }
                                                   §§goto(addr368);
                                                   §§goto(addr148);
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr479);
                                    }
                                    §§goto(addr368);
                                 }
                                 §§goto(addr478);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr368);
               }
            }
            §§goto(addr357);
         }
      }
      
      public function §4#_§() : int
      {
         return this.§;!9§;
      }
      
      public function §!"-§() : Vector.<b2Vec2>
      {
         return this.§=#S§;
      }
      
      public function §9"_§() : Vector.<b2Vec2>
      {
         return this.§"!M§;
      }
      
      public function §5!y§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§=#S§[0].x * param1.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.§=#S§[0].y * param1.y);
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
            if(!(_loc6_ && _loc3_))
            {
               if(_loc7_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() >= this.§;!9§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              addr96:
                              addr164:
                              while(true)
                              {
                                 _loc4_++;
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       §§goto(addr96);
                                    }
                                    addr166:
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
                                             addr169:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr109:
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   addr150:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         continue loop9;
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                }
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr169);
                        }
                     }
                     else
                     {
                        §§push(this.§=#S§[_loc4_].x * param1.x);
                        if(!_loc6_)
                        {
                           §§push(this.§=#S§[_loc4_].y * param1.y);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr167);
               }
               §§goto(addr168);
            }
            break;
         }
         return §§pop();
      }
      
      public function § "7§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§=#S§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§=#S§[0].y * param1.y);
            if(!(_loc6_ && _loc2_))
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  if(_loc7_ || this)
                  {
                     if(§§pop() >= this.§;!9§)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr158:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr159:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr160:
                                    addr106:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             addr141:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   addr155:
                                                }
                                                addr156:
                                                while(§§pop() > §§pop())
                                                {
                                                   continue loop3;
                                                }
                                                addr94:
                                                _loc4_++;
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr155);
                                       }
                                       break;
                                    }
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr160);
                           }
                           §§goto(addr94);
                           §§goto(addr106);
                        }
                     }
                     else
                     {
                        §§push(this.§=#S§[_loc4_].x * param1.x);
                        if(_loc7_)
                        {
                           §§push(this.§=#S§[_loc4_].y * param1.y);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 addr140:
                                 §§goto(addr141);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr158);
               }
               §§goto(addr159);
            }
            return this.§=#S§[_loc2_];
         }
         §§goto(addr47);
      }
      
      private function §%!&§() : Boolean
      {
         return false;
      }
      
      private function §,"S§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§=#S§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!_loc3_)
               {
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(_loc3_ && _loc2_)
                  {
                     while(true)
                     {
                        this.§"!M§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§=#S§[_loc2_] = new b2Vec2();
            §§goto(addr85);
         }
      }
   }
}
