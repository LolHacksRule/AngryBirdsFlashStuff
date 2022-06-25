package §;+§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.Animation;
   import §6!J§.Texture;
   import §>!_§.LevelModel;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import §]!@§.LevelSlingshotObject;
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
         if(!(sSuperHolsterTexture && FacebookLevelSlingshot))
         {
            while(true)
            {
               SUPER_ROPE_COLOR = 7602176;
               loop1:
               while(SUPER_ROPE_COLOR || SUPER_ROPE_COLOR)
               {
                  while(!SUPER_ROPE_COLOR)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      protected var §'1§:§0!b§;
      
      protected var §5!@§:§0!b§;
      
      protected var §%!_§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§#!,§.Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc4_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc4_)
               {
                  while(_loc4_)
                  {
                     super(newLevelMain,level,aSprite);
                     continue loop1;
                     if(_loc4_ || level)
                     {
                        return;
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §6;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         do
         {
            this.§3#§(false);
            while(_loc1_ && _loc1_)
            {
            }
         }
         while(!_loc2_);
         
      }
      
      public function §[A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_ || frontTexture)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(Boolean(this.§'1§));
                     loop2:
                     do
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && backTexture))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr107:
                           while(true)
                           {
                              §§push(Boolean(this.§5!@§));
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(_loc4_ && backTexture);
                     
                     addr77:
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue loop9;
                              }
                              if(!(_loc5_ || backTexture))
                              {
                                 continue loop8;
                              }
                              while(true)
                              {
                                 this.§3#§(true);
                                 addr61:
                                 §§goto(addr63);
                              }
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                        }
                     }
                  }
               }
            }
         }
         else if(false)
         {
            addr63:
            while(_loc4_)
            {
               continue loop7;
            }
            while(true)
            {
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop5;
               }
               §§goto(addr61);
               §§goto(addr63);
            }
            return;
         }
         var slingshotAnimation:Animation = §`s§.animationManager.getAnimation("SUPER_SLINGSHOT");
         if(!_loc5_)
         {
         }
         var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
         if(!_loc5_)
         {
         }
         var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
         if(_loc5_)
         {
            while(true)
            {
               this.§'1§ = new §0!b§(backTexture);
               while(!(_loc4_ && frontTexture))
               {
                  loop12:
                  while(true)
                  {
                     this.§5!@§ = new §0!b§(frontTexture);
                     while(true)
                     {
                        loop14:
                        for(; _loc5_ || backTexture; if(!(_loc4_ && slingshotAnimation))
                        {
                           return;
                           addr185:
                        })
                        {
                           this.§3#§(true);
                           while(true)
                           {
                              continue loop12;
                              addr171:
                              if(!(_loc4_ && this))
                              {
                                 continue loop14;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      public function §3!b§(value:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && this)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(_loc6_ && value)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc5_)
               {
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc3_:int = 0;
            loop3:
            for each(bird in §2!X§)
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        for(bird.§>#§ = value; !_loc5_; )
                        {
                        }
                        if(!(_loc5_ || _loc3_))
                        {
                           break;
                           addr96:
                        }
                        while(false)
                        {
                           continue loop5;
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr96);
            }
            if(_loc6_)
            {
            }
            return;
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return §`s§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §3#§(isSuper:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§%!_§);
                  while(true)
                  {
                     if(§§pop() == isSuper)
                     {
                        addr360:
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(isSuper);
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §`R§();
                           loop4:
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop1;
                              }
                              addr324:
                              while(true)
                              {
                                 addr253:
                                 addr242:
                                 while(true)
                                 {
                                    §§push(§§findproperty(§9!D§));
                                    if(_loc3_)
                                    {
                                       if(isSuper)
                                       {
                                          addr259:
                                          §§push(§ ?§.§-!Y§);
                                          if(_loc3_ || isSuper)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc2_ && _loc2_)
                                             {
                                                addr283:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§ ?§.§=M§);
                                          if(_loc3_)
                                          {
                                             §§goto(addr283);
                                          }
                                       }
                                       §§pop().§9!D§ = §§pop();
                                       continue loop4;
                                    }
                                    §§goto(addr259);
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    if(§"!,§.numChildren <= 0)
                                    {
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §"!,§.addChild(!!isSuper ? this.§'1§ : §7!N§);
                                             while(true)
                                             {
                                                loop16:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   §"!,§.addChild(§^H§);
                                                   while(!_loc2_)
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §"!,§.addChild(§%R§);
                                                         while(_loc3_)
                                                         {
                                                            while(!_loc2_)
                                                            {
                                                               §"!,§.addChild(§^§);
                                                               continue loop18;
                                                            }
                                                         }
                                                         addr219:
                                                         break loop16;
                                                      }
                                                   }
                                                   continue loop14;
                                                }
                                                continue loop12;
                                                if(_loc2_ && isSuper)
                                                {
                                                   continue;
                                                }
                                                §"!,§.addChild(§^!S§);
                                                §§goto(addr105);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr346);
                     }
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
         if(_loc2_ && deltaTime)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  super.updateAnimations(deltaTime);
                  while(true)
                  {
                     §§goto(addr255);
                  }
               }
               if(_loc2_ && deltaTime)
               {
                  continue;
               }
               while(true)
               {
                  §§push(this.§'1§);
                  loop6:
                  while(true)
                  {
                     §§push(§1X§ / LevelMain.§@!d§);
                     if(_loc3_)
                     {
                        §§push(8);
                        if(!(_loc2_ && _loc3_))
                        {
                           addr217:
                           §§push(§§pop() - §§pop());
                           while(true)
                           {
                              §§push(8);
                           }
                           addr217:
                        }
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr219:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr220:
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                        }
                        addr218:
                     }
                     §§goto(addr217);
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        §§goto(addr104);
                     }
                     addr255:
                     while(this.§%!_§)
                     {
                        while(!_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     addr29:
                     return;
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            do
            {
               if(!this.§%!_§)
               {
                  super.playBirdShotSound();
                  for(; _loc2_; if(!_loc1_)
                  {
                     §§goto(addr29);
                  })
                  {
                     if(!(_loc2_ || this))
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                  }
                  addr29:
                  return;
                  addr83:
               }
            }
            while(_loc1_ && _loc1_);
            
            SoundEngine.§-!h§("Powerup_Speed");
         }
         §§goto(addr83);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               var speed:Number = 0;
               if(!_loc4_)
               {
               }
               var bird:LevelSlingshotObject = null;
               if(!_loc4_)
               {
               }
               bird = §2!X§[§1!9§];
               if(_loc5_ && bird)
               {
               }
               §§push(§`!K§ / §9!D§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               var power:* = §§pop();
               if(_loc4_)
               {
                  addr270:
                  if(bird != null)
                  {
                     addr265:
                     if(!_loc5_)
                     {
                        if(bird.name.toUpperCase() == "BIRD_GREEN")
                        {
                           addr225:
                           §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN));
                           if(_loc4_ || bird)
                           {
                           }
                           addr252:
                           speed = §§pop();
                           addr251:
                           if(!(_loc5_ && bird))
                           {
                              addr218:
                              §§push(bird == null);
                              if(_loc4_ || speed)
                              {
                                 addr206:
                                 §§push(Boolean(!§§pop()));
                                 §§push(Boolean(!§§pop()));
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    addr212:
                                    §§pop();
                                    addr213:
                                    if(!_loc5_)
                                    {
                                       addr144:
                                       §§push(bird.§>#§ > 0);
                                       if(!(_loc5_ && bird))
                                       {
                                          if(_loc4_)
                                          {
                                             addr156:
                                             §§push(Boolean(§§pop()));
                                             if(_loc4_ || speed)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr225);
                        §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE));
                     }
                     §§goto(addr270);
                  }
                  addr165:
                  if(§§pop())
                  {
                     if(!(_loc5_ && speed))
                     {
                        if(_loc5_)
                        {
                        }
                        §§goto(addr225);
                     }
                     if(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || this)
                           {
                              §§goto(addr135);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr213);
                  }
                  §§push(speed);
                  if(!_loc5_)
                  {
                     if(_loc4_ || power)
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(power);
                           if(_loc4_ || speed)
                           {
                              §§goto(addr108);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr251);
                     }
                     addr135:
                     §§push(bird.§>#§);
                     if(!(_loc5_ && bird))
                     {
                        addr134:
                        §§push(§§pop() * power);
                     }
                     if(_loc5_)
                     {
                        §§goto(addr252);
                     }
                     return §§pop();
                  }
                  addr108:
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§goto(addr144);
                  }
                  return §§pop();
               }
               §§goto(addr225);
            }
         }
      }
      
      public function §22§(value:Number) : LevelSlingshotObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || value)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr34:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr34);
            }
            §§goto(addr36);
         }
         var bird:LevelSlingshotObject = null;
         if(!_loc3_)
         {
         }
         bird = §2!X§[§1!9§];
         if(_loc3_ || value)
         {
            loop4:
            while(true)
            {
               if(bird.§1F§ < 1)
               {
                  while(true)
                  {
                     addr178:
                     while(true)
                     {
                        bird.§1F§ = 1;
                        addr171:
                        while(true)
                        {
                           addr166:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr177:
               }
               loop9:
               while(true)
               {
                  bird.scale = value;
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        if(!(_loc4_ && bird))
                        {
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(bird.sprite);
                                    while(true)
                                    {
                                       §§push(bird.scale);
                                       addr129:
                                       addr123:
                                       while(true)
                                       {
                                          §§pop().scaleX = §§pop();
                                          addr130:
                                          while(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop11;
                                       }
                                       §§push(bird.sprite);
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(bird.scale);
                                       if(_loc3_ || bird)
                                       {
                                          §§pop().scaleY = §§pop();
                                          do
                                          {
                                             if(!(_loc3_ || bird))
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          while(!_loc3_);
                                          
                                          return bird;
                                          addr102:
                                          addr86:
                                       }
                                       §§goto(addr129);
                                       §§goto(addr130);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                              }
                              §§goto(addr178);
                           }
                           break;
                        }
                        continue loop10;
                     }
                     §§goto(addr171);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function §8!f§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
         }
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(_loc4_)
         {
            if(!(_loc5_ && this))
            {
               loop20:
               while(!sSuperHolsterTexture)
               {
                  loop21:
                  for(; !_loc5_; if(!(_loc5_ && bitmapData))
                  {
                     continue loop20;
                  })
                  {
                     while(_loc4_ || this)
                     {
                        continue loop21;
                     }
                  }
                  if(!(_loc4_ || slingClip))
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(false)
                     {
                        §§goto(addr40);
                     }
                     slingClip = new AssetCache.§%p§("MovieClip_SlingHolder")();
                     if(_loc4_)
                     {
                        while(true)
                        {
                           loop24:
                           while(true)
                           {
                              setTint(slingClip,SUPER_ROPE_COLOR,1);
                              while(!_loc4_)
                              {
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              while(false)
                              {
                                 continue loop24;
                              }
                              bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
                              if(_loc4_)
                              {
                                 loop27:
                                 while(true)
                                 {
                                    bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
                                    while(true)
                                    {
                                       addr138:
                                       if(!(_loc5_ && bitmapData))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(true)
                                             {
                                                break loop20;
                                             }
                                             loop30:
                                             while(true)
                                             {
                                                sSuperHolsterTexture = §`s§.textureManager.getTextureFromBitmapData(bitmapData);
                                                while(!_loc4_)
                                                {
                                                }
                                                if(!(_loc5_ && this))
                                                {
                                                   §§goto(addr138);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop30;
                                                   }
                                                   addr160:
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop27;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr179);
               }
               §^§ = new §#!,§.Sprite();
               if(_loc4_)
               {
                  §§goto(addr179);
               }
               addr84:
            }
            var holsterImage:§0!b§ = new §0!b§(sSuperHolsterTexture);
            if(_loc4_ || bitmapData)
            {
               loop0:
               while(true)
               {
                  holsterImage.rotation = Math.PI;
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        holsterImage.x = holsterImage.width / 2;
                        while(true)
                        {
                           continue loop0;
                           addr334:
                           if(_loc5_ && slingClip)
                           {
                              continue;
                           }
                           loop12:
                           while(true)
                           {
                              §^H§.addChild(§;!X§);
                              while(true)
                              {
                                 loop14:
                                 for(; !(_loc5_ && holsterImage); if(!(_loc4_ || slingClip))
                                 {
                                    continue;
                                 },§§goto(addr270))
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop12;
                                    }
                                    §^!S§ = new §#!,§.Sprite();
                                    loop15:
                                    while(!(_loc5_ && slingClip))
                                    {
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop14;
                                          }
                                          continue loop15;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc5_ && bitmapData)
                                          {
                                             break;
                                             addr344:
                                          }
                                          while(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop0;
                                          addr270:
                                          if(!(_loc4_ || holsterImage))
                                          {
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                §+P§ = new §6!Y§(2,2,SUPER_ROPE_COLOR);
                                                loop17:
                                                do
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr241:
                                                         if(!(_loc5_ && slingClip))
                                                         {
                                                            §^!S§.addChild(§+P§);
                                                            while(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  continue loop17;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         addr376:
                                                         while(true)
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                   §§goto(addr344);
                                                }
                                                while(!(_loc4_ || bitmapData));
                                                
                                                return;
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §^H§ = new §#!,§.Sprite();
                                             continue loop9;
                                          }
                                       }
                                       addr261:
                                       while(true)
                                       {
                                          addr379:
                                          while(true)
                                          {
                                             §^§.addChild(holsterImage);
                                             §§goto(addr376);
                                             break loop15;
                                          }
                                          §§goto(addr359);
                                       }
                                       addr359:
                                    }
                                    while(!(_loc5_ && slingClip))
                                    {
                                       §§goto(addr334);
                                       §§goto(addr287);
                                    }
                                    addr287:
                                    §§goto(addr379);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr317);
         }
         §§goto(addr84);
      }
   }
}
