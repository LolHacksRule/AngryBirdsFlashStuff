package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.geom.Point;
   
   public class §'"o§ extends §?"N§
   {
       
      
      private var §'"V§:Boolean;
      
      private var §-#<§:Boolean;
      
      private var §%"`§:Boolean;
      
      private var §,L§:int;
      
      public function §'"o§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function §4m§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc2_ && §'"o§))
         {
            §§push(180);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr59);
            }
            §§push(§§pop() % §§pop());
         }
         addr59:
         §§push(§§pop() / Math.PI);
         if(!_loc2_)
         {
            §§push(360);
         }
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §&f§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() + §§pop());
         if(_loc3_ || _loc2_)
         {
            §§push(360);
            if(_loc3_ || §'"o§)
            {
               §§push(§§pop() % §§pop());
               if(_loc3_)
               {
                  addr52:
                  §§push(§§pop() / (180 / Math.PI));
                  if(_loc3_ || §'"o§)
                  {
                     return Number(§§pop());
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get §7!X§() : Boolean
      {
         return this.§-#<§;
      }
      
      public function set §1"w§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,L§ = param1;
         }
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(param1:§;$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§'"V§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr97:
                        while(true)
                        {
                           §§push(§3! § > §0"x§.§&!1§);
                           if(_loc3_ && param1)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(_loc2_ || _loc2_)
                     {
                        this.§'"V§ = true;
                        while(true)
                        {
                           param1.§5"J§(true);
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr97);
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function move(param1:Number, param2:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 1;
         if(!(_loc4_ && param1))
         {
            §§push(this.§-#<§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§`,§(param2);
                  loop1:
                  while(true)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        continue;
                     }
                     loop2:
                     while(true)
                     {
                        _loc3_ = -1;
                        loop3:
                        for(; !(_loc4_ && _loc3_); while(_loc5_ || this)
                        {
                           §§push(this.§%"`§);
                           if(!_loc4_)
                           {
                              §§goto(addr78);
                           }
                           §§goto(addr96);
                        })
                        {
                           §§push(§3! § > §0"x§.§["k§);
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                                 addr127:
                              }
                              else
                              {
                                 loop7:
                                 while(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          this.§5m§(param2);
                                       }
                                    }
                                    while(true)
                                    {
                                       break loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                                 addr59:
                                 addr105:
                              }
                              addr78:
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              §§push(!§§pop());
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr127);
                           }
                        }
                        addr150:
                        while(true)
                        {
                           §§push(this);
                           §§push(§0"x§.§5#3§);
                           if(_loc5_ || param2)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().§7!n§(§§pop());
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr150);
            }
         }
         §§goto(addr116);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               if(!param2)
               {
                  if(_loc4_ || param2)
                  {
                     break;
                  }
                  addr89:
                  while(true)
                  {
                  }
               }
               loop1:
               while(true)
               {
                  this.updateShading(param2);
                  while(!_loc3_)
                  {
                     this.addParticles(param2);
                     while(!_loc3_)
                     {
                        this.move(param1,param2);
                        if(!_loc3_)
                        {
                           if(_loc4_ || param1)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               return;
            }
            return;
         }
         §§goto(addr89);
      }
      
      protected function addParticles(param1:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 3;
         if(_loc3_ || param1)
         {
            §§push(param1);
            §§push(§ U§.§7!i§);
            §§push(§,!w§.§ !B§);
            §§push(§ U§.§'# §);
            §§push(§3!t§().GetPosition().x - _loc2_);
            if(_loc3_ || param1)
            {
               §§push(Math.random() * (_loc2_ * 2));
               if(_loc3_ || this)
               {
                  addr70:
                  §§push(§§pop() + §§pop());
                  §§push(§3!t§().GetPosition().y - _loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + Math.random() * (_loc2_ * 2));
                  }
               }
               §§pop().§;!0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§ U§.§`"I§(itemName),0,0,1,0,4);
               §§goto(addr111);
            }
            §§goto(addr70);
         }
         addr111:
      }
      
      private function §`,§(param1:§;$§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && param1))
         {
            if(§3!t§().GetPosition().y >= -5.5)
            {
               while(true)
               {
                  this.§-#<§ = true;
                  while(true)
                  {
                     §§push(§0"x§.§]#=§);
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr153:
                           while(true)
                           {
                              §§push(§0"x§.§0!9§);
                              loop5:
                              for(; !(_loc5_ && param1); if(_loc6_ || param1)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop2;
                              })
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr147:
                                    while(true)
                                    {
                                       §§push(§0"x§.§@#=§);
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr69);
      }
      
      protected function §%!1§(param1:§;$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§@#P§ = null;
         §§push(param1.objectCount);
         if(!_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §@#P§;
            if(!(_loc5_ && _loc2_))
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(_loc4_ || param1)
                              {
                                 addr71:
                                 if(false)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr73);
                        }
                        if(_loc4_)
                        {
                           param1.removeObject(_loc3_);
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        addr123:
                        while(true)
                        {
                           §§push(_loc3_.id == this.§,L§);
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop1;
                     }
                     addr73:
                     return;
                     addr93:
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr123);
                  }
               }
            }
            §§goto(addr71);
         }
      }
      
      protected function §,"m§(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!2§ = null;
         §§push(param1.objectCount);
         if(_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!2§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  if(_loc5_)
                  {
                     _loc3_.§3!t§().SetAwake(true);
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_.§3!t§().SetLinearVelocity(new b2Vec2(0,-18));
                     loop2:
                     while(true)
                     {
                        addr59:
                        while(true)
                        {
                           _loc3_.§,"W§ = true;
                           addr63:
                           while(!_loc4_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     while(false)
                     {
                        §§goto(addr59);
                     }
                     continue loop0;
                     addr57:
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr57);
         }
      }
      
      protected function §5m§(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!2§ = null;
         §§push(param1.objectCount);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!2§;
            if(_loc5_ || this)
            {
               if(_loc3_)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc2_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
         if(_loc5_)
         {
            this.§%"`§ = true;
         }
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override protected function fly() : void
      {
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §7!n§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§4m§(§3!t§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(360);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || param1)
                     {
                        addr102:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(§&f§(_loc2_));
                           if(_loc4_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc4_ || param1))
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    §3!t§().SetAngle(_loc2_);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr75);
      }
   }
}
