package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   
   public class §8R§ extends §[!8§
   {
      
      public static const §'!X§:uint = 3000;
      
      public static const §0!F§:uint = 2000;
      
      public static const §5e§:uint = 50;
      
      private static const §;!W§:uint = 8;
      
      private static const §#!P§:Number = 0.375;
      
      public static const §@F§:uint = 1500;
      
      public static const §'e§:Number = 1.5;
      
      private static const §2!p§:String = "CannonSounds";
      
      private static const §]j§:int = 1;
      
      private static const §%[§:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!X§ = 3000;
            while(true)
            {
               §0!F§ = 2000;
               loop1:
               for(; !(_loc2_ && §8R§); while(!(_loc2_ && §8R§))
               {
                  §2!p§ = "CannonSounds";
                  §§goto(addr77);
               })
               {
                  §5e§ = 50;
                  while(true)
                  {
                     §;!W§ = 8;
                     while(!(_loc2_ && §8R§))
                     {
                        §#!P§ = 3 / §;!W§;
                        loop4:
                        while(true)
                        {
                           §@F§ = 1500;
                           while(true)
                           {
                              §'e§ = §@F§ / 1000;
                              continue loop1;
                              addr41:
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        loop7:
                        for(; _loc1_ || _loc2_; if(_loc2_ && _loc1_)
                        {
                           continue;
                        },§§goto(addr41))
                        {
                           while(true)
                           {
                              §]j§ = 1;
                              while(_loc1_)
                              {
                                 §%[§ = 1;
                                 if(!(_loc2_ && §8R§))
                                 {
                                    continue loop7;
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr55);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private const §7!M§:Number = 4.7;
      
      private const § "K§:uint = 3;
      
      private const §<!_§:uint = 150;
      
      private var §-"-§:§8"=§;
      
      private var §`!d§:Number = 2000;
      
      private var §]!N§:Number = 0;
      
      private var §,![§:Number = 0;
      
      private var §9"9§:Boolean = false;
      
      private var §4a§:§6!K§;
      
      public var mAnimationRatio:Number = 0;
      
      public function §8R§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         loop0:
         while(true)
         {
            this.§-"-§ = param1;
            do
            {
               sprite.scaleX = -sprite.scaleX;
               continue loop0;
            }
            while(!(_loc13_ || param2));
            
            return;
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(this);
         §§push(param1);
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || param2)
                        {
                           addr62:
                           §§pop();
                           addr63:
                           §§push(param5);
                           if(_loc8_ && param1)
                           {
                           }
                           addr73:
                           return §§pop().super.applyDamage(§§pop(),§§pop(),param3,param4,param5,param6);
                           addr72:
                        }
                        §§goto(addr72);
                        §§push(!§§pop());
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr63);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:§2"V§ = null;
         if(!(_loc8_ && this))
         {
            §§push(this);
            §§push(this.§`!d§);
            if(_loc9_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§`!d§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§9"9§);
               if(!_loc8_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              addr108:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              addr96:
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§9"9§ = true;
                                    addr101:
                                    loop10:
                                    while(true)
                                    {
                                       addr60:
                                       while(true)
                                       {
                                          this.§<!-§();
                                          while(_loc9_ || this)
                                          {
                                             §@"M§.§3"C§("Sound_Snow_Cannon_Charge",§2!p§);
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                                continue;
                                             }
                                             addr164:
                                             addr164:
                                             _loc2_ = getBody().GetPosition();
                                             if(!_loc8_)
                                             {
                                                addr199:
                                                _loc3_ = getBody().GetAngle();
                                                _loc4_ = Math.cos(_loc3_);
                                                addr188:
                                                addr200:
                                             }
                                             addr194:
                                             §§push(Number(Math.sin(_loc3_)));
                                             if(!_loc8_)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr188);
                                                         }
                                                         §§push(§§findproperty(b2Vec2));
                                                         §§push(_loc2_.x);
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.§7!M§);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     addr241:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(_loc2_.y);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           addr262:
                                                                           §§push(§§pop() + §§pop() * this.§7!M§);
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                  }
                                                                  _loc6_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc3_ = §[!8§.radiansToDegres(_loc3_) + 180;
                                                                  }
                                                                  (_loc7_ = this.§-"-§.addObject("MISC_FB_HEARTCANNON_SHOT",_loc6_.x,_loc6_.y,_loc3_,false,false,false,1) as §2"V§).getBody().SetLinearVelocity(new b2Vec2(_loc4_ * §5e§,_loc5_ * §5e§));
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr415:
                                                                     if(this.§]!N§ == 0)
                                                                     {
                                                                        addr417:
                                                                        §§push(§@"M§);
                                                                        §§push("Sound_Snow_Cannon_Shoot_");
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                                                                        }
                                                                        §§pop().§3"C§(§§pop(),§2!p§);
                                                                        §?l§.§'h§.particles.§@6§("SMOKE_CANNONCLOUD_VALENTINE",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc6_.x,_loc6_.y,2000,"",§0i§.§?"Z§,0,0,0,0,1,1,true);
                                                                        addr432:
                                                                     }
                                                                     §§push(this);
                                                                     §§push(this.§]!N§);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(§§pop() - this.§<!_§);
                                                                     }
                                                                     §§pop().§]!N§ = §§pop();
                                                                     addr365:
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this.§]!N§);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(this.§<!_§ * this.§ "K§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 addr342:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    this.§`!d§ = §'!X§;
                                                                                    addr347:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr321:
                                                                                       this.§]!N§ = 0;
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          this.§9"9§ = false;
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                §§goto(addr433);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                          addr327:
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              §§goto(addr433);
                                                                           }
                                                                           §§goto(addr415);
                                                                        }
                                                                        §§goto(addr432);
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr194);
                                                }
                                             }
                                             §§goto(addr199);
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           addr161:
                           if(this.§`!d§ <= this.§]!N§)
                           {
                              §§goto(addr164);
                           }
                           addr433:
                           return;
                           addr107:
                        }
                     }
                  }
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr101);
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      private function §<!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4a§);
            loop0:
            while(!§§pop())
            {
               if(!_loc1_)
               {
                  addr143:
                  §§push(this);
                  §§push(§0W§.§&"5§);
                  §§push(§0W§.§&"5§);
                  §§push(this);
                  §§push({"mAnimationRatio":§#!P§});
                  §§push({"mAnimationRatio":0});
                  §§push(§'e§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() * 0.25);
                  }
                  §§push(§§pop().§]!r§(§§pop(),§§pop(),§§pop(),§§pop(),§0W§.§[!Z§));
                  §§push(§0W§.§&"5§);
                  §§push(this);
                  §§push({});
                  §§push({});
                  §§push(§'e§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() * 0.65);
                  }
                  §§push(§§pop().§]!r§(§§pop(),§§pop(),§§pop(),§§pop(),§0W§.§[!Z§));
                  §§push(§0W§.§&"5§);
                  §§push(this);
                  §§push({"mAnimationRatio":1});
                  §§push({"mAnimationRatio":§#!P§});
                  §§push(§'e§);
                  if(!_loc1_)
                  {
                     §§push(§§pop() * 0.25);
                  }
                  §§pop().§4a§ = §§pop().§%G§(§§pop(),§§pop(),§§pop().§]!r§(§§pop(),§§pop(),§§pop(),§§pop(),§0W§.§[!Z§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§4a§);
                     while(true)
                     {
                        §§pop().onComplete = this.§0"Y§;
                        while(true)
                        {
                           §§push(this.§4a§);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              §§pop().play();
                              do
                              {
                                 this.§,![§ = §@F§;
                              }
                              while(!_loc2_);
                              
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr143:
               }
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr143);
      }
      
      private function §0"Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mAnimationRatio = 0;
            do
            {
               this.§4a§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§4a§)
            {
               if(!(_loc2_ && this))
               {
                  return false;
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     addr52:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§,![§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§,![§ = §§pop();
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§push(true);
                     if(_loc3_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  addr81:
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr81);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§4a§)
            {
               if(!_loc1_)
               {
                  return 0;
               }
            }
         }
         return this.mAnimationRatio;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         return this.§,![§;
      }
   }
}
