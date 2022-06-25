package §@Q§
{
   import §#!X§.LevelModel;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.Animation;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import §?A§.LevelSlingshotObject;
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
         if(SUPER_ROPE_COLOR || SUPER_ROPE_COLOR)
         {
            do
            {
               SUPER_ROPE_COLOR = 7602176;
               while(!SUPER_ROPE_COLOR)
               {
               }
            }
            while(!(SUPER_ROPE_COLOR || FacebookLevelSlingshot));
            
         }
      }
      
      protected var §;5§:§&p§;
      
      protected var §,!K§:§&p§;
      
      protected var §+q§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§1!&§.Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || newLevelMain)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               loop1:
               while(!(_loc5_ && this))
               {
                  loop2:
                  while(true)
                  {
                     while(_loc4_)
                     {
                        super(newLevelMain,level,aSprite);
                        continue loop2;
                        if(!(_loc5_ && aSprite))
                        {
                           return;
                           addr58:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §&h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.§0!N§(false);
               §§goto(addr49);
            }
         }
         addr49:
         while(true)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §`X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || backTexture)
         {
            loop0:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(_loc5_ && this)
                  {
                     continue loop0;
                  }
                  §§push(Boolean(this.§,!K§));
                  if(!(_loc5_ && slingshotAnimation))
                  {
                     if(!_loc5_)
                     {
                        while(§§pop())
                        {
                           do
                           {
                              while(true)
                              {
                                 this.§0!N§(true);
                                 while(true)
                                 {
                                    if(!(_loc5_ && backTexture))
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 addr109:
                                 while(true)
                                 {
                                    §§push(Boolean(this.§;5§));
                                    break loop5;
                                 }
                              }
                           }
                           while(_loc5_);
                           
                           addr49:
                           if(!(_loc5_ && slingshotAnimation))
                           {
                              return;
                           }
                           addr122:
                           while(true)
                           {
                              §§goto(addr109);
                              §§goto(addr49);
                           }
                        }
                        var slingshotAnimation:Animation = §6f§.animationManager.getAnimation("SUPER_SLINGSHOT");
                        if(_loc5_)
                        {
                        }
                        var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
                        if(_loc4_ || slingshotAnimation)
                        {
                        }
                        var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
                        if(!_loc5_)
                        {
                           this.§;5§ = new §&p§(backTexture);
                           addr244:
                           if(!(_loc5_ && this))
                           {
                              this.§,!K§ = new §&p§(frontTexture);
                              addr237:
                              if(_loc4_)
                              {
                                 addr208:
                                 if(!(_loc5_ && frontTexture))
                                 {
                                    this.§0!N§(true);
                                    addr203:
                                    if(_loc4_)
                                    {
                                       addr195:
                                       if(_loc4_)
                                       {
                                          this.§>3§(§5a§.§0!h§);
                                          addr178:
                                          if(!(_loc5_ && slingshotAnimation))
                                          {
                                             if(_loc4_ || backTexture)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr178);
                                                }
                                                return;
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr237);
                                       addr205:
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr244);
                           }
                           addr253:
                           §§goto(addr253);
                        }
                        §§goto(addr205);
                        addr85:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop5;
                     §§goto(addr106);
                  }
                  addr106:
               }
               while(true)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     §§goto(addr98);
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr122);
      }
      
      public function §>3§(value:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(!(_loc5_ && this))
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
            addr59:
         }
         while(true)
         {
            if(!_loc6_)
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
               §§goto(addr59);
            }
            §§goto(addr45);
         }
         var _loc3_:int = 0;
         loop3:
         for each(bird in §+I§)
         {
            if(_loc6_ || _loc3_)
            {
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     for(bird.§!i§ = value; !_loc6_; )
                     {
                     }
                     if(_loc5_ && _loc3_)
                     {
                        break;
                        addr102:
                     }
                     while(false)
                     {
                        continue loop5;
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr102);
         }
         if(_loc6_ || this)
         {
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return §6f§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §0!N§(isSuper:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
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
                  §§push(this.§+q§);
                  loop2:
                  while(§§pop() != isSuper)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(isSuper);
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              this.§9!,§();
                              loop5:
                              while(_loc3_)
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                    return;
                                 }
                                 loop6:
                                 do
                                 {
                                    §§push(§§findproperty(§[!K§));
                                    if(_loc3_ || isSuper)
                                    {
                                       if(isSuper)
                                       {
                                          addr262:
                                          §§push(§5a§.§9S§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc3_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§5a§.§]!V§);
                                          if(_loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§pop().§[!K§ = §§pop();
                                       while(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             loop8:
                                             while(_loc3_ || _loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§+q§ = isSuper;
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         break loop2;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§1!J§.numChildren <= 0)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §1!J§.addChild(!!isSuper ? this.§;5§ : §!!i§);
                                                               while(true)
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §1!J§.addChild(§!'§);
                                                                     addr150:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(_loc2_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              §1!J§.removeChildAt(0);
                                                                              break;
                                                                           }
                                                                           addr219:
                                                                           addr214:
                                                                           continue loop13;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  loop20:
                                                                  while(!(_loc2_ && isSuper))
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §1!J§.addChild(§0!S§);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           loop23:
                                                                           while(_loc3_)
                                                                           {
                                                                              §1!J§.addChild(!!isSuper ? this.§,!K§ : §+!;§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue loop23;
                                                                                 addr34:
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr150);
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           addr122:
                                                                           while(!_loc2_)
                                                                           {
                                                                              §1!J§.addChild(§<7§);
                                                                              continue loop20;
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr122);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                   }
                                                   continue;
                                                }
                                                loop9:
                                                while(_loc2_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr262);
                                 }
                                 while(_loc3_);
                                 
                                 continue loop1;
                              }
                           }
                        }
                        else
                        {
                           §if §();
                        }
                        §§goto(addr307);
                     }
                  }
                  §§goto(addr358);
               }
            }
         }
         §§goto(addr250);
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && deltaTime)
         {
         }
         if(!(_loc2_ && deltaTime))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super.updateAnimations(deltaTime);
                  loop2:
                  while(true)
                  {
                     while(this.§+q§)
                     {
                        loop4:
                        while(true)
                        {
                           while(_loc3_)
                           {
                              §§push(this.§;5§);
                              while(true)
                              {
                                 §§push(§`!Z§ / LevelMain.§!5§);
                                 if(_loc3_)
                                 {
                                    §§push(8);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr247:
                                          §§push(8);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          addr247:
                                       }
                                       addr195:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr203:
                                          §§pop().y = §§pop() - §§pop();
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§,!K§);
                                                   while(true)
                                                   {
                                                      §§push(§`!Z§ / LevelMain.§!5§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(38);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(4);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr83:
                                                                  if(!(_loc2_ && deltaTime))
                                                                  {
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§push(§§pop() - 6);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop13;
                                                                              }
                                                                              addr142:
                                                                           }
                                                                        }
                                                                        addr106:
                                                                        §§pop().y = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                      }
                                                      §§push(this.§,!K§);
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§[§ / LevelMain.§!5§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(37);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr83);
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr248:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    §§goto(addr249);
                                 }
                                 §§push(this.§;5§);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§[§ / LevelMain.§!5§);
                                 if(_loc3_ || deltaTime)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(30);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc3_ || deltaTime)
                                          {
                                             §§push(10);
                                          }
                                          §§goto(addr203);
                                       }
                                       if(_loc3_)
                                       {
                                          §§goto(addr195);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr203);
                              }
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               if(!this.§+q§)
               {
                  continue;
               }
               if(!_loc2_)
               {
               }
            }
            loop2:
            while(_loc1_)
            {
               while(true)
               {
                  SoundEngine.§`B§("Powerup_Speed");
                  continue loop2;
               }
            }
            §§goto(addr39);
         }
         §§goto(addr91);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr41:
                  addr32:
                  while(true)
                  {
                     continue loop0;
                  }
                  if(!(_loc4_ || power))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr41);
                  }
                  else
                  {
                     addr56:
                     var speed:* = Number(0);
                     if(_loc5_ && power)
                     {
                     }
                     var bird:LevelSlingshotObject = null;
                     if(_loc5_ && power)
                     {
                     }
                     bird = §+I§[§=y§];
                     if(_loc5_ && speed)
                     {
                     }
                     §§push(§]!5§ / §[!K§);
                     if(!_loc5_)
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
                                 while(true)
                                 {
                                    if(bird.name.toUpperCase() == "BIRD_GREEN")
                                    {
                                       while(_loc4_ || power)
                                       {
                                          continue loop5;
                                       }
                                       continue;
                                       addr233:
                                    }
                                    else
                                    {
                                       addr273:
                                    }
                                    §§push(Number(LevelSlingshot.BIRD_LAUNCH_FORCE));
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr274:
                                       while(true)
                                       {
                                          speed = §§pop();
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr216);
                  }
               }
            }
         }
         while(true)
         {
            if(_loc4_ || power)
            {
               §§goto(addr32);
            }
            §§goto(addr43);
         }
         §§goto(addr56);
      }
      
      public function §+7§(value:Number) : LevelSlingshotObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc4_)
                  {
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var bird:LevelSlingshotObject = null;
                  if(_loc3_)
                  {
                  }
                  bird = §+I§[§=y§];
                  if(_loc4_)
                  {
                     loop4:
                     while(true)
                     {
                        if(bird.§-!9§ < 1)
                        {
                           while(true)
                           {
                              addr179:
                              while(true)
                              {
                                 bird.§-!9§ = 1;
                                 while(true)
                                 {
                                    addr167:
                                    while(true)
                                    {
                                    }
                                    addr74:
                                    if(!(_loc3_ && this))
                                    {
                                       return bird;
                                    }
                                 }
                              }
                              addr123:
                              if(!(_loc4_ || bird))
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 continue loop4;
                              }
                              addr132:
                              §§push(bird.sprite);
                              if(!_loc3_)
                              {
                                 §§push(bird.scale);
                                 if(_loc4_)
                                 {
                                    §§pop().scaleY = §§pop();
                                    while(true)
                                    {
                                       if(!(_loc3_ && bird))
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       addr114:
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc4_ || value)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr123);
                                          }
                                          addr152:
                                          addr164:
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(bird.sprite);
                                             while(true)
                                             {
                                                §§push(bird.scale);
                                                §§goto(addr132);
                                             }
                                             continue loop15;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr152);
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr167);
                                 }
                                 while(true)
                                 {
                                    §§pop().scaleX = §§pop();
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr136);
                           }
                        }
                        while(true)
                        {
                           bird.scale = value;
                           §§goto(addr167);
                        }
                     }
                  }
                  §§goto(addr164);
               }
            }
         }
         §§goto(addr35);
      }
      
      protected function §9!,§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(!(_loc4_ && bitmapData))
         {
            if(!(_loc4_ && this))
            {
               loop0:
               for(; !sSuperHolsterTexture; if(!(_loc5_ || slingClip))
               {
                  continue;
               },if(!(_loc4_ && holsterImage))
               {
                  while(true)
                  {
                     if(false)
                     {
                        §§goto(addr46);
                     }
                     else
                     {
                        slingClip = new AssetCache.§,!k§("MovieClip_SlingHolder")();
                        if(_loc5_ || slingClip)
                        {
                        }
                        loop26:
                        while(true)
                        {
                           addr112:
                           addr130:
                           while(true)
                           {
                              setTint(slingClip,SUPER_ROPE_COLOR,1);
                              continue loop26;
                           }
                           addr191:
                           bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
                                 while(!_loc4_)
                                 {
                                    loop32:
                                    for(; _loc5_ || bitmapData; while(_loc5_ || bitmapData)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue;
                                       }
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr154);
                                    })
                                    {
                                       while(true)
                                       {
                                          sSuperHolsterTexture = §6f§.textureManager.getTextureFromBitmapData(bitmapData);
                                          continue loop32;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr172);
                           }
                        }
                     }
                  }
                  addr44:
               },§§goto(addr200))
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        addr46:
                        addr200:
                        while(_loc5_)
                        {
                           if(_loc5_ || bitmapData)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §<7§ = new §1!&§.Sprite();
               if(_loc5_)
               {
                  §§goto(addr200);
               }
            }
            var holsterImage:§&p§ = new §&p§(sSuperHolsterTexture);
            if(_loc5_ || holsterImage)
            {
               while(true)
               {
                  holsterImage.rotation = Math.PI;
                  loop5:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        holsterImage.x = holsterImage.width / 2;
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              holsterImage.y = holsterImage.height / 2;
                              loop9:
                              for(; _loc5_; loop11:
                              for(; !(_loc4_ && slingClip); for(; _loc5_ || bitmapData; while(!(_loc4_ && bitmapData))
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr370);
                              })
                              {
                                 if(!_loc4_)
                                 {
                                    §0!S§.addChild(§+S§);
                                    continue;
                                 }
                                 §§goto(addr398);
                              })
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop7;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    §!'§ = new §1!&§.Sprite();
                                    while(true)
                                    {
                                       addr370:
                                       while(true)
                                       {
                                          §>Q§ = new §!!9§(2,2,SUPER_ROPE_COLOR);
                                          continue loop12;
                                       }
                                       addr322:
                                       if(_loc5_ || this)
                                       {
                                          loop20:
                                          while(_loc5_)
                                          {
                                             §+S§ = new §!!9§(2,2,SUPER_ROPE_COLOR);
                                             loop21:
                                             while(true)
                                             {
                                                if(!(_loc5_ || bitmapData))
                                                {
                                                   continue loop20;
                                                }
                                                addr288:
                                                if(_loc5_ || slingClip)
                                                {
                                                   addr295:
                                                   if(_loc4_ && holsterImage)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr350:
                                                   while(true)
                                                   {
                                                      §!'§.addChild(§>Q§);
                                                      break loop21;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §0!S§ = new §1!&§.Sprite();
                                                      break loop20;
                                                      §§goto(addr288);
                                                   }
                                                   addr332:
                                                }
                                             }
                                             continue loop5;
                                          }
                                          while(_loc5_ || this)
                                          {
                                             §§goto(addr322);
                                          }
                                          continue loop12;
                                          addr315:
                                       }
                                    }
                                 }
                              })
                              {
                                 while(true)
                                 {
                                    §<7§.addChild(holsterImage);
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        addr235:
                        if(_loc5_ || slingClip)
                        {
                           return;
                           addr242:
                        }
                     }
                     while(!(_loc4_ && this))
                     {
                        §§goto(addr332);
                        §§goto(addr295);
                     }
                  }
               }
            }
            while(true)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr235);
                  }
                  §§goto(addr281);
               }
               §§goto(addr250);
            }
            §§goto(addr242);
         }
         §§goto(addr44);
      }
   }
}
