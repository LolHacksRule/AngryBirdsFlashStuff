package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2Fixture;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   
   public class §7#"§ extends §'"o§
   {
      
      public static const §+"§:String = "BLOCK_MIGHTY_FALCON";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+"§ = "BLOCK_MIGHTY_FALCON";
         }
      }
      
      protected var § "]§:Number;
      
      protected var §8U§:Number;
      
      protected var §="Y§:Number;
      
      protected var §18§:Number;
      
      protected var §3!O§:Number;
      
      protected var §5"%§:Number;
      
      protected var §"!s§:Number;
      
      protected var §%"2§:Number;
      
      protected var §8"2§:Number;
      
      protected var §`#'§:int = 1;
      
      protected var §7M§:Number;
      
      protected var §=!F§:Number;
      
      protected var §'#3§:int;
      
      protected var §-#R§:Number;
      
      protected var §%#3§:String;
      
      protected var §8!U§:Vector.<Number>;
      
      protected var §1"u§:int = 0;
      
      public function §7#"§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§8!D§, param5:§94§, param6:Number, param7:Number, param8:Number = 1.0)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param3)
         {
            this.§8!U§ = new Vector.<Number>();
            loop0:
            while(true)
            {
               this.§ "]§ = param5.x;
               while(true)
               {
                  this.§8U§ = param5.y;
                  loop2:
                  while(true)
                  {
                     this.§="Y§ = param4.getNumberProperty("falconFlyTime") * 1000;
                     while(true)
                     {
                        this.§3!O§ = param4.getNumberProperty("movementEllipseWidth");
                        loop4:
                        while(true)
                        {
                           this.§5"%§ = param4.getNumberProperty("movementEllipseHeight");
                           addr213:
                           while(true)
                           {
                              this.§"!s§ = param4.getNumberProperty("movementEllipseOffsetX");
                              continue loop4;
                           }
                        }
                        addr79:
                        if(!(_loc11_ && param1))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc11_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FixtureDef = new b2FixtureDef();
         if(_loc2_)
         {
            _loc1_.shape = §;B§.shape.getB2Shape(scale);
         }
         do
         {
            _loc1_.§-"`§ = true;
         }
         while(!(_loc2_ || _loc2_));
         
         return §04§.CreateFixture(_loc1_);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.type = b2Body.b2_dynamicBody;
            while(true)
            {
               _loc3_.active = false;
               loop1:
               while(_loc4_)
               {
                  §§push(_loc3_.position);
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     addr69:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr70:
                        while(_loc4_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(_loc3_.position);
            if(!(_loc5_ && param1))
            {
               §§push(param2);
               if(_loc4_ || this)
               {
                  §§pop().y = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               §§goto(addr69);
            }
            §§goto(addr68);
         }
         return _loc3_;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         return false;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(isNaN(this.§18§))
            {
               while(true)
               {
                  this.§18§ = §2N§.currentAnimationLengthMilliSeconds / this.§="Y§;
                  addr89:
                  while(true)
                  {
                  }
                  addr59:
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  return;
                  addr66:
               }
            }
            while(true)
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && param3))
               {
                  §§push(this.§18§);
                  if(!(_loc4_ && param3))
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param2);
                  }
                  §§pop().super.render(§§pop(),§§pop(),param3);
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr59);
               }
               §§goto(addr54);
            }
            §§goto(addr66);
         }
         §§goto(addr89);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addParticles(param1:§;$§) : void
      {
      }
      
      override protected function updateShading(param1:§;$§) : void
      {
      }
      
      override protected function move(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(§3! § > 1)
            {
               if(_loc4_)
               {
                  addr67:
                  this.§8"h§(param1);
               }
               do
               {
                  this.§%1§(param1,param2);
               }
               while(_loc3_ && param1);
               
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function §8"h§(param1:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.§!!,§(1));
         if(!(_loc10_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§%"0§(_loc2_));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§7"[§(_loc2_));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§!!,§());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.§%"0§(_loc5_));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.§7"[§(_loc5_));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(_loc9_ || _loc2_)
         {
            §§push(0.5);
            if(!_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc10_ && this))
               {
                  addr85:
                  §§push(§§pop() + Math.PI * 1.75);
                  if(_loc10_)
                  {
                  }
                  addr89:
                  var _loc8_:* = §§pop();
                  if(_loc9_)
                  {
                     if(this.§`#'§ == -1)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              §§push(0.5);
                              if(_loc9_ || param1)
                              {
                                 addr209:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(Math.PI * 1.25);
                                 }
                                 _loc8_ = Number(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    addr158:
                                    while(true)
                                    {
                                       §3!t§().SetPosition(new b2Vec2(_loc6_,_loc7_));
                                       while(true)
                                       {
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §3!t§().SetAngle(_loc8_);
                                             loop3:
                                             do
                                             {
                                                §3!t§().SetLinearVelocity(new b2Vec2((_loc6_ - _loc3_) * 1000,(_loc7_ - _loc4_) * 1000));
                                                while(!_loc10_)
                                                {
                                                   §2N§.setScale(this.§8"2§ * Math.sin(_loc5_));
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             while(!(_loc9_ || _loc3_));
                                             
                                             if(_loc9_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 addr211:
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc10_)
                              {
                              }
                           }
                           §§goto(addr209);
                        }
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr211);
               }
               §§goto(addr89);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr85);
      }
      
      private function §%1§(param1:Number, param2:§;$§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§ [§ = null;
         var _loc7_:* = NaN;
         §§push(this.§!!,§());
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§%"0§(_loc3_));
         if(!(_loc11_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§7"[§(_loc3_));
         if(!(_loc11_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc11_ && param1))
         {
            if(this.§1"u§ < this.§'#3§)
            {
               if(_loc10_)
               {
                  if(§3! § >= this.§8!U§[this.§1"u§])
                  {
                     if(!_loc11_)
                     {
                        addr84:
                        var _loc8_:*;
                        §§push((_loc8_ = this).§1"u§);
                        if(_loc10_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc9_:* = §§pop();
                        if(!_loc11_)
                        {
                           _loc8_.§1"u§ = _loc9_;
                        }
                     }
                     if(_loc6_ = param2 as § [§)
                     {
                        if(_loc10_)
                        {
                           §§push(Math.atan2(this.§8U§ - _loc5_,this.§ "]§ - _loc4_) / Math.PI);
                           if(!_loc11_)
                           {
                              §§push(§§pop() * 180);
                              if(_loc10_ || _loc3_)
                              {
                                 addr132:
                                 §§push(Number(§§pop()));
                              }
                              _loc7_ = §§pop();
                              if(!_loc11_)
                              {
                                 _loc6_.§#!#§(this.§%#3§,_loc4_,_loc5_,_loc7_,this.§-#R§,true);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr132);
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
            addr156:
            return;
         }
         §§goto(addr84);
      }
      
      private function §!!,§(param1:Number = 0) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§3! § - param1);
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§="Y§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() / Math.PI);
            }
            §§push(§§pop() / §§pop());
            if(_loc3_)
            {
               return §§pop() * this.§`#'§;
            }
         }
      }
      
      private function §%"0§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§ "]§);
         if(!(_loc3_ && this))
         {
            §§push(this.§"!s§);
            if(!_loc3_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  addr42:
                  §§push(this.§3!O§);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr65:
                     §§push(§§pop() - §§pop() * Math.cos(param1));
                  }
                  §§goto(addr65);
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr42);
      }
      
      private function §7"[§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§8U§);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%"2§);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() * this.§`#'§);
               if(_loc3_)
               {
                  §§goto(addr77);
               }
            }
            §§push(§§pop() - §§pop());
         }
         addr77:
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            §§push(this.§5"%§);
            if(!(_loc2_ && this))
            {
               return §§pop() * Math.sin(param1);
            }
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.update(param1,param2);
         }
         while(§3! § >= this.§="Y§)
         {
            if(_loc4_)
            {
               health = 0;
            }
            if(!(_loc3_ && param1))
            {
               break;
            }
         }
      }
   }
}
