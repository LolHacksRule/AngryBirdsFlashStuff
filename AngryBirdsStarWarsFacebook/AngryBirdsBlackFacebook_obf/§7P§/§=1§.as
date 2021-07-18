package §7P§
{
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%"3§;
   import §2"Y§.§,",§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §=1§ extends §@#P§
   {
      
      public static const §+"§:String = "ME_BAIT";
      
      protected static const §!!X§:Number = 1500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+"§ = "ME_BAIT";
         }
         do
         {
            §!!X§ = 1500;
         }
         while(_loc2_ && §=1§);
         
      }
      
      private var §@=§:Boolean;
      
      protected var §<X§:§,",§;
      
      protected var §7[§:§!p§;
      
      protected var §%>§:Number;
      
      protected var §;A§:Number;
      
      private var § !d§:§;!d§;
      
      public function §=1§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            this.§<X§ = param4 as §,",§;
            while(true)
            {
               this.§7[§ = new §!p§(this.§<X§);
               while(_loc9_ || param3)
               {
                  super(param1,param2,param3,param4,param5,param6,param7);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(health < healthMax);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              §§push(false);
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop4;
                                 }
                                 addr87:
                                 while(true)
                                 {
                                    §§pop();
                                 }
                              }
                              addr68:
                           }
                           while(true)
                           {
                              §§push(§3!t§() == null);
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              addr20:
                              while(true)
                              {
                                 §§push(true);
                                 if(!(_loc1_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr81:
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr20);
                  }
                  return §§pop();
                  addr56:
               }
               §§goto(addr87);
            }
         }
         §§goto(addr81);
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(timeSinceCollisionMilliSeconds < 0);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr59:
                     return Boolean(super.isNormal);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return true;
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.handleInitialCollision();
         }
         do
         {
            §2N§.setAnimation(§3!y§.§4!v§,false);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            §§push(this.isLeavingTrail);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(param1)
                     {
                        if(_loc5_ || this)
                        {
                           §§push(this.§@=§);
                           continue loop0;
                        }
                        loop8:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 §§push(Number(§3!t§().GetPosition().y));
                                 if(!_loc4_)
                                 {
                                    addr105:
                                    _loc3_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          param1.§;!0§(this.§<X§.normalTrailSprite,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
                                          loop7:
                                          while(_loc4_ && _loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§3!t§().GetPosition().x));
                                                continue loop7;
                                             }
                                          }
                                          addr82:
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr96:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§@=§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(!§§pop());
                                                }
                                                §§pop().§@=§ = §§pop();
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            return §§pop();
                                                         }
                                                         break loop5;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr82);
                                                }
                                                §§goto(addr96);
                                             }
                                             addr152:
                                             return §§pop();
                                             addr38:
                                          }
                                          continue loop1;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop8;
                                 }
                              }
                              addr147:
                           }
                           else
                           {
                              addr151:
                              §§push(false);
                           }
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr24);
                  }
               }
               §§goto(addr151);
            }
         }
         §§goto(addr147);
      }
      
      override protected function updateFlying() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:b2Vec2 = §3!t§().GetLinearVelocity();
         if(_loc4_ || _loc1_)
         {
            §§push(_loc2_.x);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.y);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(0);
                                    if(!(_loc4_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!(_loc4_ || this))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    loop6:
                                    while(§§pop())
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(Math.atan2(_loc2_.y,_loc2_.x) - Math.PI / 2);
                                          if(_loc4_)
                                          {
                                             addr119:
                                             §§push(Number(§§pop()));
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                break loop6;
                                             }
                                             return;
                                             addr122:
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr122);
                                    }
                                    §6#<§(_loc1_);
                                    if(_loc3_)
                                    {
                                       §§goto(addr122);
                                    }
                                    §§goto(addr50);
                                 }
                                 §§goto(addr119);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override public function getGravityMultiplier(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            if(timeSinceCollisionMilliSeconds < 0)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  return §§pop();
               }
               loop0:
               while(true)
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(timeSinceCollisionMilliSeconds / 1000);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * 1.3);
                        }
                        §§push(§§pop() - §§pop());
                        addr93:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr93);
      }
      
      override protected function updateRotation(param1:Number) : void
      {
      }
      
      override protected function addMightyEagle(param1:§;$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§3!t§().GetPosition().x - §0"x§.§>"h§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§3!t§().GetPosition().y - §0"x§.§>"h§ * §0"x§.§8!6§ * 1.07);
         if(!(_loc5_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
      }
      
      protected function §0f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%>§ = §3!t§().GetPosition().x;
            while(true)
            {
               this.§;A§ = §3!t§().GetPosition().y;
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            health = 0;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§0f§();
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         if(_loc4_ || this)
         {
            §§push(!isNaN(this.§%>§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     while(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§<X§.getProperty("reticleSprite"));
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr136:
                                 while(true)
                                 {
                                    §§push("RETICLE_RED");
                                 }
                              }
                              addr135:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 continue loop5;
                              }
                              §§goto(addr135);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(!isNaN(this.§;A§));
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr155);
                     }
                     addr155:
                  }
                  return;
                  addr119:
               }
               §§goto(addr154);
            }
         }
         §§goto(addr103);
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.updateBeforeRemoving(param1);
            if(_loc3_)
            {
               if(!param1)
               {
                  if(_loc4_ && this)
                  {
                     addr38:
                     §§push(this.§<X§.destroyedSound);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        this.§<X§.§-Z§(_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(Boolean(isNaN(this.§%>§)));
                           loop1:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr146:
                                    while(true)
                                    {
                                       §§push(Boolean(isNaN(this.§;A§)));
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§%>§ = §3!t§().GetPosition().x;
                                       loop5:
                                       while(true)
                                       {
                                          this.§;A§ = §3!t§().GetPosition().y;
                                          addr91:
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    addr120:
                                 }
                                 while(true)
                                 {
                                    param1.addObject(§7#"§.§+"§,this.§%>§,this.§;A§,0,§;=§.§""3§,false,true,false,1,true);
                                    if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr91);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr38);
            }
            return;
         }
         §§goto(addr38);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7[§.playCollisionSound();
         }
      }
      
      override public function scream() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<X§.§1"Z§(§%"3§.§5"P§));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.update(param1,param2);
            while(timeSinceCollisionMilliSeconds >= §!!X§)
            {
               if(!_loc4_)
               {
                  break;
               }
               addr59:
               if(_loc3_)
               {
                  continue;
               }
               addr57:
               this.§0f§();
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.render(param1,param2,param3);
            while(true)
            {
               §§push(this.§ !d§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           addr44:
                           §§push(this.§ !d§);
                           break;
                        }
                        continue;
                     }
                     addr58:
                  }
                  return;
               }
               break;
            }
            §§pop().update(param1);
            §§goto(addr58);
         }
         §§goto(addr44);
      }
      
      public function glow(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§ !d§)
            {
               if(_loc2_ || param1)
               {
                  addr67:
                  this.§ !d§ = new §;!d§(param1);
               }
               do
               {
                  sprite.addChildAt(this.§ !d§,0);
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
