package §![§
{
   import §"L§.LevelModel;
   import §,!_§.Animation;
   import §2!H§.§&!U§;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §2!H§.LevelSlingshotObject;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §=?§.SoundEngine;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class FacebookLevelSlingshot extends LevelSlingshot
   {
      
      protected static const SUPER_ROPE_COLOR:uint = 7602176;
      
      protected static var sSuperHolsterTexture:Texture;
      
      {
         var SUPER_ROPE_COLOR:Boolean = false;
         var sSuperHolsterTexture:Boolean = true;
         if(!(SUPER_ROPE_COLOR && SUPER_ROPE_COLOR))
         {
            while(true)
            {
               SUPER_ROPE_COLOR = 7602176;
               while(sSuperHolsterTexture)
               {
                  if(sSuperHolsterTexture)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected var §'E§:§-m§;
      
      protected var §>!Y§:§-m§;
      
      protected var §82§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§6!7§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && aSprite)
         {
         }
         if(!(_loc4_ && newLevelMain))
         {
            loop0:
            while(true)
            {
               addr91:
               while(true)
               {
                  while(true)
                  {
                     addr76:
                     while(_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc5_)
         {
            §§goto(addr69);
         }
      }
      
      public function §-!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§8!@§(false);
               loop1:
               while(_loc2_ || this)
               {
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §;m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               while(true)
               {
                  addr118:
                  addr94:
                  §§goto(addr53);
               }
            }
         }
         else if(false)
         {
            addr53:
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(Boolean(this.§'E§));
                  do
                  {
                     §§push(§§pop());
                     if(_loc5_ || backTexture)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     while(true)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop6;
                  }
                  while(!(_loc5_ || backTexture));
                  
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!(_loc4_ && backTexture))
                  {
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     continue loop6;
                  }
               }
            }
            this.§8!@§(true);
            while(!_loc5_)
            {
               §§goto(addr118);
               §§goto(addr94);
            }
            return;
         }
         var slingshotAnimation:Animation = §"!>§.animationManager.getAnimation("SUPER_SLINGSHOT");
         if(_loc4_ && this)
         {
         }
         var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
         if(_loc4_ && backTexture)
         {
         }
         var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
         if(!(_loc4_ && this))
         {
            loop7:
            while(true)
            {
               this.§'E§ = new §-m§(backTexture);
               loop8:
               while(true)
               {
                  addr265:
                  while(true)
                  {
                     this.§>!Y§ = new §-m§(frontTexture);
                     continue loop7;
                     addr224:
                     if(_loc5_ || slingshotAnimation)
                     {
                        continue loop8;
                     }
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      public function §]r§(value:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(!(_loc5_ && _loc3_))
         {
            loop0:
            while(true)
            {
               addr65:
               while(true)
               {
                  continue loop0;
               }
            }
            addr69:
         }
         while(true)
         {
            if(!(_loc6_ || bird))
            {
               continue;
            }
            if(!(_loc5_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr69);
            }
            §§goto(addr65);
         }
         for each(bird in §#P§)
         {
            if(!_loc5_)
            {
               loop4:
               while(true)
               {
                  addr107:
                  while(true)
                  {
                     bird.§9S§ = value;
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || bird)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr107);
            }
         }
         if(_loc6_ || value)
         {
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return §"!>§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §8!@§(isSuper:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               loop1:
               while(_loc2_ || isSuper)
               {
                  §§push(this.§82§);
                  while(true)
                  {
                     if(§§pop() != isSuper)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(isSuper);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                              }
                              loop4:
                              while(true)
                              {
                                 this.§extends§();
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                       addr248:
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§findproperty(§+8§));
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(isSuper)
                                          {
                                             addr259:
                                             §§push(§&!U§.§9i§);
                                             if(_loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc2_)
                                                {
                                                   addr274:
                                                   §§pop().§+8§ = §§pop();
                                                   loop7:
                                                   do
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               while(!_loc3_)
                                                               {
                                                                  this.§82§ = isSuper;
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop4;
                                                      }
                                                      loop9:
                                                      while(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop5;
                                                            }
                                                            addr349:
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(_loc3_);
                                                   
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(§'6§.numChildren <= 0)
                                                      {
                                                         while(true)
                                                         {
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §'6§.removeChildAt(0);
                                                                  break;
                                                                  addr233:
                                                               }
                                                               §'6§.addChild(!!isSuper ? this.§'E§ : §@!$§);
                                                               while(true)
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §'6§.addChild(§?0§);
                                                                     addr183:
                                                                     while(true)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   addr242:
                                                }
                                                §§goto(addr274);
                                             }
                                             addr273:
                                             §§push(Number(§§pop()));
                                          }
                                          else
                                          {
                                             §§push(§&!U§.§>U§);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr273);
                                             }
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr259);
                                    }
                                    if(_loc3_ && isSuper)
                                    {
                                       continue;
                                    }
                                    §§goto(addr248);
                                 }
                                 return;
                              }
                           }
                           else
                           {
                              §@!"§();
                           }
                           §§goto(addr311);
                        }
                        continue;
                     }
                     §§goto(addr349);
                  }
               }
            }
         }
         §§goto(addr242);
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
            }
            addr261:
         }
         loop1:
         while(true)
         {
            super.updateAnimations(deltaTime);
            loop2:
            while(true)
            {
               while(this.§82§)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§'E§);
                        loop6:
                        while(true)
                        {
                           §§push(§`!%§ / LevelMain.§8N§);
                           if(!(_loc2_ && deltaTime))
                           {
                              §§push(8);
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              addr218:
                           }
                           addr229:
                           addr200:
                           while(true)
                           {
                              §§push(8);
                              addr230:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr231:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§'E§);
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop6;
                              }
                              §§push(§else§ / LevelMain.§8N§);
                              if(_loc3_)
                              {
                                 §§push(30);
                                 if(_loc3_ || deltaTime)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr181:
                                          §§push(10);
                                          if(_loc3_ || this)
                                          {
                                             addr189:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§pop().y = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(this.§>!Y§);
                                                      while(true)
                                                      {
                                                         §§push(§`!%§ / LevelMain.§8N§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(38);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr74:
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  addr82:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     §§push(4);
                                                                     addr135:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        addr136:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr134);
                                                         addr110:
                                                         §§push(this.§>!Y§);
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§else§ / LevelMain.§8N§);
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               §§push(37);
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr74);
                                                                        §§push(6);
                                                                     }
                                                                     §§goto(addr82);
                                                                  }
                                                                  §§goto(addr135);
                                                               }
                                                               §§goto(addr74);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr82);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr230);
                                          }
                                          §§goto(addr231);
                                       }
                                       else
                                       {
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr218);
                        }
                     }
                  }
               }
               return;
            }
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(!this.§82§)
            {
               super.playBirdShotSound();
               while(_loc2_ || _loc2_)
               {
                  if(!_loc1_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr24);
                           }
                           break loop0;
                        }
                        SoundEngine.§9!X§("Powerup_Speed");
                        break;
                        addr96:
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               addr24:
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr90);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr41:
                  while(true)
                  {
                     addr43:
                     while(_loc4_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr32:
               if(_loc5_ && bird)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr41);
               }
               addr51:
               var speed:* = Number(0);
               if(_loc4_ || speed)
               {
               }
               var bird:LevelSlingshotObject = null;
               if(_loc4_ || speed)
               {
               }
               bird = §#P§[§@A§];
               if(_loc5_ && speed)
               {
               }
               §§push(§'H§ / §+8§);
               if(_loc4_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var power:* = §§pop();
               if(!_loc5_)
               {
                  loop5:
                  while(bird != null)
                  {
                     if(_loc4_ || speed)
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(bird.name.toUpperCase() != "BIRD_GREEN")
                        {
                           §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE));
                           if(_loc4_ || this)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr234:
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                           loop8:
                           while(true)
                           {
                              speed = §§pop();
                              addr258:
                              loop19:
                              while(true)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(bird == null);
                                       if(_loc4_ || bird)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             §§pop();
                                             addr216:
                                             addr218:
                                             addr152:
                                             while(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(bird.§9S§);
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(§§pop() > 0);
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr161:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ && bird)
                                                      {
                                                         continue loop17;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ && bird))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop15;
                                                         }
                                                         continue loop17;
                                                      }
                                                      addr205:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop5;
                                                      }
                                                      if(_loc4_ || speed)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc5_ && power))
                                                         {
                                                            §§push(bird.§9S§);
                                                            while(_loc5_)
                                                            {
                                                               §§goto(addr234);
                                                            }
                                                            addr145:
                                                            return §§pop() * power;
                                                            addr144:
                                                            addr141:
                                                         }
                                                         continue loop19;
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                }
                                                §§goto(addr161);
                                                §§goto(addr218);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    addr230:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr205);
                              }
                           }
                        }
                        §§goto(addr230);
                     }
                  }
                  while(true)
                  {
                     §§push(speed);
                     if(_loc4_)
                     {
                        if(!(_loc5_ && speed))
                        {
                           §§push(power);
                           if(_loc4_)
                           {
                              addr121:
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr152);
                              }
                              break;
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr145);
               }
               §§goto(addr258);
            }
         }
         while(true)
         {
            if(_loc4_ || speed)
            {
               §§goto(addr32);
            }
            §§goto(addr43);
         }
         §§goto(addr51);
      }
      
      public function §4!@§(value:Number) : LevelSlingshotObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || bird)
         {
         }
         loop0:
         while(true)
         {
            addr40:
            addr52:
            addr61:
            while(true)
            {
               continue loop0;
            }
            var bird:LevelSlingshotObject = null;
            if(_loc4_ || this)
            {
            }
            bird = §#P§[§@A§];
            if(_loc4_ || _loc3_)
            {
               loop3:
               while(true)
               {
                  if(bird.§?!h§ < 1)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           bird.§?!h§ = 1;
                           loop6:
                           while(true)
                           {
                              addr192:
                              while(true)
                              {
                                 loop10:
                                 for(; !(_loc3_ && _loc3_); while(!(_loc3_ && bird))
                                 {
                                    §§goto(addr141);
                                    §§goto(addr130);
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(bird.sprite);
                                       while(true)
                                       {
                                          §§push(bird.scale);
                                          addr147:
                                          addr141:
                                          while(true)
                                          {
                                             §§pop().scaleX = §§pop();
                                             addr148:
                                             addr182:
                                             while(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             while(_loc4_ || value)
                                             {
                                                continue loop10;
                                             }
                                             continue loop5;
                                          }
                                          §§push(bird.sprite);
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          §§push(bird.scale);
                                          if(_loc4_ || value)
                                          {
                                             addr130:
                                             §§pop().scaleY = §§pop();
                                             while(!(_loc4_ || _loc3_))
                                             {
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return bird;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr147);
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     bird.scale = value;
                     §§goto(addr182);
                     §§goto(addr192);
                  }
               }
            }
            §§goto(addr177);
         }
      }
      
      protected function §extends§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || slingClip)
         {
         }
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(_loc4_ || bitmapData)
         {
            if(!_loc5_)
            {
               if(!(_loc5_ && bitmapData))
               {
                  if(!sSuperHolsterTexture)
                  {
                     if(_loc5_ && slingClip)
                     {
                     }
                     loop21:
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           continue loop21;
                        }
                     }
                  }
                  §§goto(addr188);
               }
               addr89:
            }
            §§goto(addr209);
         }
         §§goto(addr89);
      }
   }
}
