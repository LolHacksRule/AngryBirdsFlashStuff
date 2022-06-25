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
         var SUPER_ROPE_COLOR:Boolean = true;
         var sSuperHolsterTexture:Boolean = false;
         if(!(sSuperHolsterTexture && sSuperHolsterTexture))
         {
            do
            {
               SUPER_ROPE_COLOR = 7602176;
               while(!(SUPER_ROPE_COLOR || SUPER_ROPE_COLOR))
               {
               }
            }
            while(sSuperHolsterTexture && SUPER_ROPE_COLOR);
            
         }
      }
      
      protected var §'E§:§-m§;
      
      protected var §>!Y§:§-m§;
      
      protected var §82§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§6!7§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && level))
         {
            while(true)
            {
               while(true)
               {
                  §§goto(addr88);
               }
            }
         }
         addr88:
         while(true)
         {
            do
            {
               super(newLevelMain,level,aSprite);
               while(!_loc5_)
               {
               }
            }
            while(!(_loc5_ || newLevelMain));
            
            if(_loc5_)
            {
               if(_loc5_ || newLevelMain)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §-!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         while(true)
         {
            this.§8!@§(false);
            while(!(_loc2_ && _loc1_))
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §;m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && frontTexture)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr146:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §]r§(value:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || bird)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr37);
         }
         loop4:
         for each(bird in §#P§)
         {
            if(_loc6_ && bird)
            {
            }
            loop5:
            while(true)
            {
               addr91:
               while(true)
               {
                  bird.§9S§ = value;
                  continue loop5;
               }
               continue loop4;
            }
         }
         if(_loc6_ && value)
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
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(this.§82§);
                  while(true)
                  {
                     if(§§pop() != isSuper)
                     {
                        continue;
                     }
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr323);
               }
            }
         }
         while(true)
         {
            §§goto(addr360);
         }
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc2_ && deltaTime)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               super.updateAnimations(deltaTime);
               loop2:
               while(true)
               {
                  loop3:
                  for(; this.§82§; while(true)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue loop3;
                     }
                     §§goto(addr267);
                     §§goto(addr175);
                  },§§goto(addr298))
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§'E§);
                           while(true)
                           {
                              §§push(§`!%§ / LevelMain.§8N§);
                              addr277:
                              addr267:
                              while(true)
                              {
                                 §§push(8);
                                 addr278:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc2_ && deltaTime))
                                    {
                                       §§push(8);
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                       }
                                       addr297:
                                    }
                                    addr298:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr299:
                                       while(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§push(this.§'E§);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§push(§else§ / LevelMain.§8N§);
                              if(_loc3_ || this)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(30);
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || deltaTime)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr239:
                                             §§push(10);
                                             if(!_loc2_)
                                             {
                                                addr242:
                                                §§push(§§pop() - §§pop());
                                                if(_loc3_ || this)
                                                {
                                                   §§pop().y = §§pop();
                                                   loop13:
                                                   while(_loc3_ || deltaTime)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr175:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop13;
                                                         addr119:
                                                         if(_loc2_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         addr126:
                                                         if(_loc3_)
                                                         {
                                                            addr42:
                                                            if(_loc2_ && deltaTime)
                                                            {
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>!Y§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§else§ / LevelMain.§8N§);
                                                                     if(_loc3_ || deltaTime)
                                                                     {
                                                                        addr70:
                                                                        if(!(_loc2_ && deltaTime))
                                                                        {
                                                                           §§push(37);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(!(_loc2_ && deltaTime))
                                                                                 {
                                                                                    if(!(_loc2_ && deltaTime))
                                                                                    {
                                                                                       addr108:
                                                                                       §§push(6);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr111:
                                                                                          §§pop().y = §§pop() - §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ || _loc2_))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr119);
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                          continue loop14;
                                                                                          addr112:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(38);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             break loop21;
                                                                                          }
                                                                                       }
                                                                                       addr139:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    addr144:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              §§goto(addr111);
                                                                           }
                                                                           §§goto(addr108);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr111);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     addr133:
                                                                  }
                                                                  §§goto(addr139);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr144);
                                                                  §§goto(addr70);
                                                               }
                                                               addr129:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr112);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr298);
                                                }
                                                §§goto(addr299);
                                             }
                                             else
                                             {
                                                §§goto(addr297);
                                             }
                                          }
                                          §§goto(addr242);
                                       }
                                       else
                                       {
                                          §§goto(addr278);
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                                 else
                                 {
                                    §§goto(addr277);
                                 }
                              }
                              §§goto(addr242);
                           }
                        }
                     }
                  }
                  return;
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr129);
            }
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         while(!this.§82§)
         {
            super.playBirdShotSound();
            while(_loc2_ && _loc2_)
            {
            }
            if(_loc1_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr28);
                  continue;
               }
               addr100:
               SoundEngine.§9!X§("Powerup_Speed");
            }
            return;
         }
         §§goto(addr100);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && bird))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr41:
                  loop2:
                  while(true)
                  {
                     while(_loc4_)
                     {
                        if(_loc5_ && speed)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr41);
         }
         var speed:* = Number(0);
         if(_loc4_ || power)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc5_)
         {
         }
         bird = §#P§[§@A§];
         if(_loc4_ || bird)
         {
         }
         §§push(§'H§ / §+8§);
         if(_loc4_ || power)
         {
            §§push(Number(§§pop()));
         }
         var power:* = §§pop();
         if(_loc4_)
         {
            loop5:
            while(true)
            {
               if(bird != null)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(bird.name.toUpperCase() == "BIRD_GREEN")
                        {
                           if(_loc4_ || speed)
                           {
                              §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                              if(_loc4_)
                              {
                                 addr260:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr260:
                              }
                              while(true)
                              {
                                 speed = §§pop();
                              }
                              addr261:
                           }
                           while(true)
                           {
                              loop10:
                              for(; !_loc5_; while(true)
                              {
                                 if(_loc4_ || speed)
                                 {
                                    continue loop6;
                                 }
                                 continue loop10;
                              })
                              {
                                 if(_loc5_)
                                 {
                                    continue loop5;
                                 }
                                 §§push(bird == null);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr172:
                                       if(!(_loc4_ || this))
                                       {
                                          continue;
                                       }
                                       addr180:
                                       §§push(Boolean(§§pop()));
                                       if(!_loc5_)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(speed);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || power)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(power);
                                                            if(!_loc5_)
                                                            {
                                                               addr118:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc4_ || bird)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               addr144:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > 0);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr161);
                                                                     §§push(bird.§9S§);
                                                                  }
                                                                  continue loop7;
                                                                  addr215:
                                                               }
                                                               continue loop15;
                                                            }
                                                            addr161:
                                                            addr210:
                                                         }
                                                      }
                                                      while(!_loc4_)
                                                      {
                                                         break loop15;
                                                      }
                                                      return §§pop();
                                                      addr145:
                                                   }
                                                   §§goto(addr118);
                                                }
                                                return §§pop();
                                                addr101:
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr215);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                        }
                        else
                        {
                           §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE));
                        }
                        §§goto(addr260);
                     }
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     §§push(bird.§9S§);
                     if(_loc4_)
                     {
                        §§goto(addr144);
                        §§push(power);
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr101);
            }
         }
         §§goto(addr186);
      }
      
      public function §4!@§(value:Number) : LevelSlingshotObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || bird)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc3_ || value))
               {
               }
               if(!_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var bird:LevelSlingshotObject = null;
               if(_loc3_ || this)
               {
               }
               bird = §#P§[§@A§];
               if(_loc3_)
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
                              while(!_loc4_)
                              {
                                 while(_loc3_ || bird)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          return bird;
                                          addr102:
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                     while(true)
                     {
                        bird.scale = value;
                        addr159:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(bird.sprite);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(bird.scale);
                     if(!_loc4_)
                     {
                        §§pop().scaleY = §§pop();
                        while(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr93);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr129);
               }
               §§goto(addr102);
            }
         }
      }
      
      protected function §extends§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(!_loc4_)
         {
            loop0:
            for(; _loc5_; if(_loc5_)
            {
               if(!_loc5_)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr38);
               }
               slingClip = new AssetCache.§-9§("MovieClip_SlingHolder")();
               if(_loc5_)
               {
                  addr92:
                  setTint(slingClip,SUPER_ROPE_COLOR,1);
                  if(_loc5_ || this)
                  {
                     if(_loc5_ || bitmapData)
                     {
                        if(false)
                        {
                           §§goto(addr92);
                        }
                        bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
                        if(!_loc4_)
                        {
                           bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
                           addr166:
                           if(!_loc4_)
                           {
                              addr136:
                              sSuperHolsterTexture = §"!>§.textureManager.getTextureFromBitmapData(bitmapData);
                              if(_loc5_ || holsterImage)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr136);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr136);
                                 addr151:
                              }
                              §§goto(addr166);
                           }
                           addr168:
                           §§goto(addr168);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr92);
                     addr107:
                  }
                  addr109:
                  §§goto(addr109);
               }
               §§goto(addr107);
            },break)
            {
               while(!sSuperHolsterTexture)
               {
                  loop22:
                  while(true)
                  {
                     loop23:
                     while(true)
                     {
                        addr38:
                        addr176:
                        while(_loc5_ || slingClip)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              continue loop22;
                           }
                           continue loop23;
                        }
                        addr176:
                        var holsterImage:§-m§ = new §-m§(sSuperHolsterTexture);
                        if(_loc5_)
                        {
                           while(true)
                           {
                              holsterImage.rotation = Math.PI;
                              loop4:
                              for(; !(_loc4_ && bitmapData); if(_loc4_ && holsterImage)
                              {
                                 continue;
                              },§§goto(addr266))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    holsterImage.y = holsterImage.height / 2;
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       for(; !_loc4_; while(!(_loc4_ && bitmapData))
                                       {
                                          §§goto(addr340);
                                       })
                                       {
                                          §^H§.addChild(holsterImage);
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §?0§ = new §6!7§.Sprite();
                                                continue loop7;
                                                loop12:
                                                while(_loc5_ || slingClip)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!(_loc5_ || holsterImage))
                                                      {
                                                         break;
                                                      }
                                                      §?0§.addChild(§[2§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            continue loop14;
                                                            addr225:
                                                            if(_loc4_ && holsterImage)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr234:
                                                            if(_loc5_ || bitmapData)
                                                            {
                                                               addr241:
                                                               if(!(_loc4_ && holsterImage))
                                                               {
                                                                  addr208:
                                                                  if(!(_loc4_ && holsterImage))
                                                                  {
                                                                     return;
                                                                     addr272:
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr246:
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           addr340:
                                                                           break;
                                                                           addr223:
                                                                           addr340:
                                                                        }
                                                                        §+v§.addChild(§,!i§);
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr225);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §,!i§ = new §3x§(2,2,SUPER_ROPE_COLOR);
                                                                              }
                                                                              addr266:
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        while(_loc5_)
                                                                        {
                                                                           §[2§ = new §3x§(2,2,SUPER_ROPE_COLOR);
                                                                           continue loop12;
                                                                           §§goto(addr234);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     continue loop7;
                                                                     §§goto(addr246);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      break loop7;
                                                      §§goto(addr313);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          holsterImage.x = holsterImage.width / 2;
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr416);
                     }
                  }
               }
               §^H§ = new §6!7§.Sprite();
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr176);
            }
            §§goto(addr176);
         }
         §§goto(addr68);
      }
   }
}
