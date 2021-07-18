package §]">§
{
   import §"!&§.§="A§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §,Z§.b2CircleShape;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §9t§.b2Vec2;
   
   public class §5a§ extends §3=§
   {
      
      public static const §!!p§:String = "SENSOR_GRAVITATION";
      
      private static const §6!$§:Number = 0.057;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!p§ = "SENSOR_GRAVITATION";
         }
         do
         {
            §6!$§ = 0.057;
         }
         while(_loc2_);
         
      }
      
      protected var § !=§:Number = 0.0;
      
      protected var §0b§:Number = 0.0;
      
      protected var §5!d§:Number = 0.0;
      
      protected var §]!$§:Sprite;
      
      protected var §1!#§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §8!>§:Number = 0.0;
      
      protected var §?!1§:Number;
      
      public function §5a§(param1:Sprite, param2:b2World, param3:Number, param4:Number, param5:§`D§, param6:Number, param7:Number, param8:Number, param9:Number, param10:§'!"§, param11:§'!"§)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            this.§?!1§ = param6;
            loop0:
            while(true)
            {
               super(param1,param2,param5,param5.shape,param3,param4);
               loop1:
               while(true)
               {
                  this.§]!$§ = param1;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§?!1§);
                     if(_loc12_ || param3)
                     {
                        §§push(§§pop() * §6!$§);
                     }
                     §§pop().§8!>§ = §§pop();
                     loop3:
                     while(true)
                     {
                        if(param10)
                        {
                           continue;
                        }
                        loop5:
                        while(true)
                        {
                           if(param11)
                           {
                              loop6:
                              while(true)
                              {
                                 this.mInnerSprite1 = this.§7!C§(param11,this.§8!>§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§]!$§);
                                    loop8:
                                    for(; _loc12_ || this; while(true)
                                    {
                                       §§push(this.§]!$§);
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       §§pop().addChild(this.mInnerSprite2);
                                       §§goto(addr124);
                                       §§goto(addr75);
                                    })
                                    {
                                       §§pop().addChild(this.mInnerSprite1);
                                       while(_loc12_)
                                       {
                                          §§push(this);
                                          §§push(this);
                                          §§push(param11);
                                          §§push(this.§8!>§);
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§pop().mInnerSprite2 = §§pop().§7!C§(§§pop(),§§pop());
                                          continue loop8;
                                          addr59:
                                          if(!(_loc12_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc12_)
                                          {
                                             this.§"!@§();
                                             addr68:
                                             if(_loc13_ && this)
                                             {
                                                addr124:
                                                while(true)
                                                {
                                                   if(_loc12_ || param1)
                                                   {
                                                      addr52:
                                                      if(!(_loc12_ || param3))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr59);
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         addr75:
                                                         if(_loc13_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc12_ || this)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr105:
                                                      while(true)
                                                      {
                                                         this.§0b§ = param8;
                                                         continue loop14;
                                                      }
                                                   }
                                                   continue loop8;
                                                   §§goto(addr68);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc12_ || param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§ !=§ = param7;
                                                      §§goto(addr105);
                                                   }
                                                   §§goto(addr52);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§]!$§);
                                                   break loop8;
                                                }
                                                addr196:
                                                addr124:
                                                addr45:
                                             }
                                             if(_loc12_ || param1)
                                             {
                                                return;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr196);
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       §§pop().addChild(this.§1!#§);
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           §§goto(addr101);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1!#§ = this.§7!C§(param10,this.§8!>§);
            §§goto(addr124);
         }
      }
      
      override protected function get scale() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§="A§ = §7!h§.shape as §="A§;
         if(!_loc3_)
         {
            if(_loc1_)
            {
               if(!_loc3_)
               {
                  §§push(this.§?!1§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / _loc1_.radius);
                     if(!_loc2_)
                     {
                        §§goto(addr60);
                     }
                  }
                  return §§pop();
               }
               addr58:
               §§push(super.scale);
               addr60:
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      private function §7!C§(param1:§'!"§, param2:Number) : Sprite
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§`y§ = null;
         var _loc3_:Sprite = new Sprite();
         if(_loc6_ || param1)
         {
            _loc3_.scaleX = param2;
            if(!(_loc7_ && this))
            {
               _loc3_.scaleY = param2;
            }
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < 8)
         {
            (_loc5_ = new §`y§(param1.texture)).pivotX = -param1.pivotX;
            if(!(_loc7_ && param1))
            {
               _loc5_.pivotY = -param1.pivotY;
               loop1:
               while(true)
               {
                  §§push(_loc5_);
                  §§push(45 * _loc4_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() / 180);
                     if(!_loc7_)
                     {
                        addr107:
                        §§push(§§pop() * Math.PI);
                     }
                     §§pop().rotation = §§pop();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           _loc3_.addChild(_loc5_);
                           loop4:
                           while(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc4_++;
                                    if(_loc6_ || this)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                                 addr95:
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr107);
               }
            }
            §§goto(addr95);
         }
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.dispose();
         }
         while(true)
         {
            §§push(this.§]!$§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr97:
                  while(true)
                  {
                     this.§]!$§ = null;
                     addr68:
                     while(true)
                     {
                     }
                  }
                  addr97:
               }
               loop1:
               while(true)
               {
                  this.§1!#§ = null;
                  while(!_loc2_)
                  {
                     this.mInnerSprite1 = null;
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        break loop1;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr68);
               }
               return;
            }
            break;
         }
         §§pop().dispose();
         §§goto(addr97);
      }
      
      public function §?!N§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(!param3)
            {
               if(!_loc8_)
               {
                  addr22:
                  param3 = §^!z§().GetPosition().Copy();
                  if(_loc7_ || param1)
                  {
                     addr41:
                     param3.§0"-§(param1);
                     if(!(_loc8_ && param3))
                     {
                        §§push(param3.§2+§());
                        if(_loc7_ || param3)
                        {
                           §§push(this.§?!1§);
                           if(!_loc8_)
                           {
                              §§push(§§pop() + param2);
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc7_)
                              {
                                 addr89:
                                 param3.x = 0;
                              }
                              loop0:
                              while(true)
                              {
                                 addr59:
                                 while(true)
                                 {
                                    param3.y = 0;
                                    if(!(_loc8_ && param3))
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                              return param3;
                           }
                           addr93:
                           §§push(param3.§2+§());
                           if(!(_loc8_ && param3))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        §§push(this.§0b§);
                        if(_loc7_ || param3)
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              §§push(this.§?!1§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!_loc8_)
                                 {
                                    addr133:
                                    §§push(this.§0b§);
                                    if(!(_loc8_ && param2))
                                    {
                                       addr142:
                                       §§push(§§pop() - this.§ !=§);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc7_ || param1)
                                 {
                                    addr154:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(param4);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§5!d§);
                                                   addr242:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr243:
                                                      while(true)
                                                      {
                                                         param4 = §§pop();
                                                      }
                                                   }
                                                }
                                                addr240:
                                             }
                                             while(true)
                                             {
                                             }
                                             addr244:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc7_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§push(param4);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() * 0.1);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_ || param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr214:
                                                   addr214:
                                                   if(_loc7_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      while(!_loc8_)
                                                      {
                                                         §§push(param3);
                                                         §§push(_loc6_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() / _loc5_);
                                                         }
                                                         §§pop().§-!&§(§§pop());
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            return param3;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr214);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr89);
                  }
                  else if(false)
                  {
                     §§goto(addr59);
                  }
                  §§goto(addr93);
               }
            }
            else
            {
               param3.SetV(§^!z§().GetPosition());
            }
            §§goto(addr41);
         }
         §§goto(addr22);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§1!0§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(!_loc9_)
         {
            this.§"!@§();
            if(!(_loc9_ && _loc3_))
            {
               super.update(param1,param2);
            }
         }
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < §>0§.length)
         {
            §§push(Boolean(_loc5_ = §>0§[_loc4_] as §1!0§));
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  if(_loc8_ || this)
                  {
                     §§pop();
                     if(!(_loc8_ || this))
                     {
                        continue;
                     }
                     §§push(_loc5_.applyGravity());
                     if(!_loc9_)
                     {
                        addr170:
                        §§push(Boolean(§§pop()));
                        loop19:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop3:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc9_ && this)
                                       {
                                          continue loop0;
                                       }
                                       addr181:
                                       while(true)
                                       {
                                          §§push(_loc5_.levelItem.shape is b2CircleShape);
                                          if(_loc8_ || param2)
                                          {
                                             break;
                                          }
                                          continue loop19;
                                          §§goto(addr181);
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(b2CircleShape(_loc5_.levelItem.shape).§<!$§());
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                          §§push(Number(Math.max(_loc5_.levelItem.shape.getWidth(),_loc5_.levelItem.shape.getHeight())));
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(_loc9_)
                                          {
                                             continue loop3;
                                          }
                                          _loc6_ = §§pop();
                                          if(!(_loc8_ || this))
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          addr182:
                                          _loc3_ = this.§?!N§(_loc5_.§^!z§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(this.§5!d§));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(_loc3_.x);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc8_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr307:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(!(_loc8_ || _loc3_))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr264:
                                                                     §§push(!§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr264);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr308:
                                                                        _loc4_++;
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(_loc5_.§^!z§().GetMass()));
                                                                        break loop16;
                                                                     }
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop6;
                                                            }
                                                            addr306:
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc5_.§^!z§().ApplyForce(_loc3_,_loc5_.§^!z§().GetPosition());
                                             if(!(_loc9_ && param2))
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       addr107:
                                       _loc6_ = §§pop();
                                       if(!(_loc8_ || param2))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                              }
                           }
                           §§goto(addr308);
                        }
                        addr170:
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr170);
         }
      }
      
      private function §5!s§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.scaleX -= §6!$§ / 6;
            while(true)
            {
               param1.scaleY -= §6!$§ / 6;
            }
            addr93:
         }
         loop1:
         while(param1.scaleX / §6!$§ < 5)
         {
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               param1.scaleX = this.§8!>§;
            }
            while(!_loc2_)
            {
               param1.scaleY = this.§8!>§;
               if(!(_loc2_ && param1))
               {
                  break loop1;
               }
            }
            §§goto(addr93);
         }
      }
      
      protected function §"!@§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = §^!z§().GetPosition().x;
         var _loc2_:Number = §^!z§().GetPosition().y;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§]!$§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§^g§.§5!-§);
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr106:
                     §§push(§^g§.§5!-§);
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§§pop() / §§pop());
                     if(!(_loc4_ && _loc1_))
                     {
                        §§pop().y = §§pop();
                        loop4:
                        while(true)
                        {
                           if(!this.mInnerSprite1)
                           {
                              for(; this.mInnerSprite2; §§goto(addr97))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc4_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr53);
                              }
                           }
                           while(!(_loc4_ && _loc2_))
                           {
                              this.§5!s§(this.mInnerSprite1);
                              while(true)
                              {
                              }
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§5!s§(this.mInnerSprite2);
                                 continue loop4;
                              }
                           }
                           addr36:
                           continue loop0;
                           return;
                        }
                     }
                     else
                     {
                        addr148:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr148:
                     }
                  }
               }
               §§goto(addr148);
            }
         }
         §§goto(addr97);
      }
   }
}
