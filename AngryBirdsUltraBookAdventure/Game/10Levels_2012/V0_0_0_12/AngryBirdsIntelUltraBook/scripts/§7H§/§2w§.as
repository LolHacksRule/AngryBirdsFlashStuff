package §7H§
{
   import §,!_§.TextureManager;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §<§.LevelBackground;
   import §=?§.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §2w§ extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3.0;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20.0;
      
      {
         var THUNDER_TIME_MAX:Boolean = false;
         var THUNDER_IN_TIME:Boolean = true;
         if(!(THUNDER_TIME_MAX && THUNDER_IN_TIME))
         {
            loop0:
            while(true)
            {
               THUNDER_TIME_MAX = 1.5;
               while(true)
               {
                  loop2:
                  while(THUNDER_IN_TIME || §2w§)
                  {
                     while(true)
                     {
                        THUNDER_IN_TIME = 0.15;
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              THUNDER_OUT_TIME = 0.25;
                              while(true)
                              {
                                 loop7:
                                 while(THUNDER_IN_TIME || §2w§)
                                 {
                                    THUNDER_INTERVAL_MIN = 3;
                                    loop8:
                                    while(!THUNDER_TIME_MAX)
                                    {
                                       continue loop0;
                                       while(true)
                                       {
                                          if(!(THUNDER_TIME_MAX && THUNDER_IN_TIME))
                                          {
                                             if(!THUNDER_IN_TIME)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          continue loop8;
                                          addr66:
                                          THUNDER_INTERVAL_MAX = 20;
                                          if(THUNDER_IN_TIME)
                                          {
                                             if(!THUNDER_TIME_MAX)
                                             {
                                                return;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop7;
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
         §§goto(addr123);
      }
      
      private var §[!K§:Number;
      
      private var §1P§:Number;
      
      private var §%N§:§3x§;
      
      private var §2P§:Boolean;
      
      private var §?!F§:Number;
      
      private var § L§:BitmapData;
      
      private var §[`§:Texture;
      
      private var §?N§:int = 0;
      
      public function §2w§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && this)
         {
         }
         if(!_loc6_)
         {
            while(true)
            {
               loop1:
               while(_loc5_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           super(backgroundName,groundLevel,textureManager,mimimumScale);
                           addr43:
                           if(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 return;
                                 addr57:
                              }
                              continue loop1;
                           }
                        }
                        loop6:
                        for(; !(_loc6_ && backgroundName); if(_loc6_ && textureManager)
                        {
                           continue;
                        },§§goto(addr43))
                        {
                           if(_loc6_)
                           {
                              continue loop2;
                           }
                           §§push(this);
                           §§push(3 + Math.random() * 3);
                           if(_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§[!K§ = §§pop();
                           while(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              continue loop6;
                           }
                           §§goto(addr57);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§[`§));
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        textureManager.unregisterBitmapDataTexture(this.§[`§);
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(_loc1_ || _loc2_)
                           {
                              this.§[`§ = null;
                              while(true)
                              {
                                 addr159:
                                 addr103:
                                 while(true)
                                 {
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    loop14:
                                    for(; _loc1_; while(_loc1_ || _loc2_)
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr41);
                                    })
                                    {
                                       addr79:
                                       if(_loc2_ && _loc1_)
                                       {
                                          while(true)
                                          {
                                             addr113:
                                             addr134:
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   this.§ L§ = null;
                                                   break loop14;
                                                }
                                                break;
                                                addr41:
                                                if(_loc1_ || _loc1_)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             while(!_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                                §§goto(addr113);
                                             }
                                             §§goto(addr159);
                                             §§goto(addr79);
                                          }
                                          addr126:
                                       }
                                       while(true)
                                       {
                                          super.dispose();
                                          continue loop14;
                                       }
                                    }
                                    while(_loc1_)
                                    {
                                       §§goto(addr103);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(Boolean(this.§ L§));
                  if(!_loc1_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     §§goto(addr134);
                  }
                  §§goto(addr63);
               }
            }
         }
      }
      
      override protected function createGroundQuad(color:uint) : §3x§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; !(_loc4_ && _loc3_); while(!(_loc4_ && this))
                  {
                     textureManager.unregisterBitmapDataTexture(this.§[`§);
                     §§goto(addr185);
                  })
                  {
                     §§push(Boolean(this.§[`§));
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc4_ && quad)
               {
                  continue;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr85);
      }
      
      override public function update(deltaTime:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(§§push(this.§%N§); §§pop() != null; )
                  {
                     §§push(this.§%N§);
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§@!L§();
                                 }
                                 else
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       this.§[;§();
                                       addr162:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop2;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             addr98:
                                             while(true)
                                             {
                                                this.§>G§();
                                                loop13:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§[!K§);
                                                            if(_loc2_ || deltaTime)
                                                            {
                                                               §§push(deltaTime);
                                                               if(_loc2_ || this)
                                                               {
                                                                  §§push(§§pop() / 1000);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§[!K§ = §§pop();
                                                            for(; !_loc3_; if(!(_loc3_ && this))
                                                            {
                                                               continue loop0;
                                                            })
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                                 while(_loc2_)
                                 {
                                    continue loop3;
                                    §§goto(addr74);
                                 }
                              }
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr98);
                  }
               }
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr178);
         }
      }
      
      private function §[;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || sprite)
         {
         }
         var bounds:Rectangle = null;
         if(!_loc3_)
         {
            if(!_loc4_)
            {
            }
         }
         var sprite:Sprite = null;
         if(!(_loc3_ && bounds))
         {
            if(_loc4_)
            {
               if(§4a§.numChildren > 0)
               {
                  if(!_loc3_)
                  {
                     addr56:
                     sprite = §4a§.getChildAt(0) as Sprite;
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_)
                        {
                           loop0:
                           while(sprite)
                           {
                              if(_loc4_)
                              {
                                 while(!_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       continue loop0;
                                    }
                                    bounds = sprite.getBounds(sprite);
                                    if(_loc4_ || bounds)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          bounds.top -= 2048;
                                          while(true)
                                          {
                                             addr255:
                                             while(true)
                                             {
                                                this.§%N§ = new §3x§(bounds.width,bounds.height,16777215);
                                                addr252:
                                                loop5:
                                                while(true)
                                                {
                                                   addr241:
                                                   while(true)
                                                   {
                                                      §§push(this.§%N§);
                                                      addr221:
                                                      while(true)
                                                      {
                                                         §§pop().x = bounds.left;
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§%N§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop().y = bounds.top;
                                                   continue loop2;
                                                   addr190:
                                                   while(true)
                                                   {
                                                      §§push(this.§%N§);
                                                      if(_loc4_ || sprite)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().alpha = 0;
                                                         continue;
                                                      }
                                                      continue loop10;
                                                   }
                                                   §§goto(addr221);
                                                }
                                                if(!(_loc4_ || bounds))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr115);
                                                }
                                                §§goto(addr137);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 loop25:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(true)
                                             {
                                                §§goto(addr424);
                                             }
                                             loop23:
                                             while(true)
                                             {
                                                this.§2P§ = false;
                                                addr291:
                                                loop24:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop25;
                                                         }
                                                         loop31:
                                                         while(true)
                                                         {
                                                            addr406:
                                                            addr416:
                                                            loop29:
                                                            while(_loc4_ || this)
                                                            {
                                                               §§push(this);
                                                               §§push(0.7);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop() + Math.random() * (THUNDER_TIME_MAX - 0.7));
                                                               }
                                                               §§pop().§1P§ = §§pop();
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || sprite)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr306:
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(0.2);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() + Math.random() * 2);
                                                                           }
                                                                           §§pop().§?!F§ = §§pop();
                                                                           addr318:
                                                                           addr328:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 break loop23;
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     addr398:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§[!K§ = 0;
                                                                        addr421:
                                                                        while(true)
                                                                        {
                                                                           break loop29;
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     addr423:
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(Math.random() >= 0.25)
                                                               {
                                                                  §§push(this);
                                                                  §§push(0.3);
                                                                  if(!(_loc3_ && sprite))
                                                                  {
                                                                     §§push(Math.random() * (THUNDER_TIME_MAX - 0.3));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() * 0.3);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               continue loop31;
                                                               §§pop().§1P§ = §§pop();
                                                               break loop24;
                                                               §§goto(addr406);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr318);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && sprite))
                                                      {
                                                         §§goto(addr328);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr406);
                                                      }
                                                   }
                                                   §§goto(addr381);
                                                }
                                             }
                                             addr287:
                                          }
                                          §§goto(addr421);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr287);
                                       }
                                    }
                                    §§goto(addr291);
                                 }
                              }
                              §§goto(addr423);
                           }
                           this.§?N§ = 0;
                           if(_loc4_)
                           {
                              §§goto(addr271);
                           }
                           §§goto(addr398);
                        }
                        §§goto(addr416);
                     }
                     §§goto(addr421);
                     addr55:
                  }
                  §§goto(addr56);
               }
               addr424:
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr56);
      }
      
      private function §@!L§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || this)
         {
         }
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         if(!_loc12_)
         {
            while(true)
            {
               addr79:
               while(true)
               {
               }
            }
            addr81:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               if(!(_loc12_ && thunderColor))
               {
                  continue;
               }
               continue loop2;
            }
         }
      }
      
      private function §>G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               if(this.§[!K§ > this.§?!F§)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§2P§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        loop3:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              SoundEngine.§1h§("Lightning04","ChannelExplosions");
                              while(_loc2_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§2P§ = true;
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
   }
}
