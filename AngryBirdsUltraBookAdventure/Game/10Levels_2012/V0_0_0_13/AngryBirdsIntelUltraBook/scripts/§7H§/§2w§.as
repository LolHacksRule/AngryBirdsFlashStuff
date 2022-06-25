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
         if(THUNDER_IN_TIME || THUNDER_IN_TIME)
         {
         }
         loop0:
         while(true)
         {
            THUNDER_TIME_MAX = 1.5;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  THUNDER_IN_TIME = 0.15;
                  loop3:
                  do
                  {
                     loop4:
                     while(true)
                     {
                        THUNDER_OUT_TIME = 0.25;
                        loop5:
                        while(!THUNDER_TIME_MAX)
                        {
                           loop6:
                           while(THUNDER_IN_TIME)
                           {
                              THUNDER_INTERVAL_MIN = 3;
                              while(true)
                              {
                                 if(!THUNDER_TIME_MAX)
                                 {
                                    if(!THUNDER_IN_TIME)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop6;
                                 addr40:
                                 if(THUNDER_IN_TIME || THUNDER_TIME_MAX)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  while(!THUNDER_IN_TIME);
                  
                  continue loop0;
               }
            }
         }
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && backgroundName)
         {
         }
         if(_loc6_ || this)
         {
            while(true)
            {
               addr133:
               while(true)
               {
                  addr75:
                  if(!(_loc5_ && textureManager))
                  {
                     return;
                  }
               }
            }
            addr135:
         }
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  loop4:
                  do
                  {
                     super(backgroundName,groundLevel,textureManager,mimimumScale);
                     while(true)
                     {
                        while(!_loc5_)
                        {
                           §§push(this);
                           §§push(3 + Math.random() * 3);
                           if(_loc6_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§[!K§ = §§pop();
                           while(!(_loc6_ || backgroundName))
                           {
                           }
                           if(!(_loc5_ && groundLevel))
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  while(!_loc6_);
                  
                  continue;
               }
               §§goto(addr135);
            }
            §§goto(addr133);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
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
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      override protected function createGroundQuad(color:uint) : §3x§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && color))
         {
            while(true)
            {
               loop5:
               while(!(_loc3_ && this))
               {
                  textureManager.unregisterBitmapDataTexture(this.§[`§);
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        this.§[`§ = null;
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              addr162:
                              loop10:
                              while(true)
                              {
                                 §§push(Boolean(this.§ L§));
                                 if(_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          this.§ L§ = new BitmapData(2,2,false,color);
                                          loop18:
                                          while(true)
                                          {
                                             addr69:
                                             addr89:
                                             loop19:
                                             for(; _loc4_ || color; if(_loc3_ && this)
                                             {
                                                continue;
                                             },if(_loc4_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr49);
                                                }
                                                var quad:§3x§ = new §-m§(this.§[`§,true,false);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   quad.width = 4096;
                                                   addr278:
                                                   if(!_loc3_)
                                                   {
                                                      addr271:
                                                      if(_loc4_)
                                                      {
                                                         quad.height = 4096;
                                                         addr261:
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr261);
                                                            }
                                                            return quad;
                                                            addr268:
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   addr282:
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr268);
                                             },while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop19;
                                                }
                                                break;
                                             },continue loop6,addr101:)
                                             {
                                                while(true)
                                                {
                                                   this.§[`§ = textureManager.getTextureFromBitmapData(this.§ L§);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc4_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc3_ && color))
                                                         {
                                                            continue loop19;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop18;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr106:
                                             while(_loc4_ || quad)
                                             {
                                                continue loop17;
                                                §§goto(addr69);
                                             }
                                             while(true)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc3_)
                                                {
                                                   addr115:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr169:
                                                   while(true)
                                                   {
                                                      §§goto(addr115);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr172:
                                                      if(_loc3_ && color)
                                                      {
                                                         break;
                                                      }
                                                      this.§ L§.dispose();
                                                      continue loop9;
                                                   }
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§[`§));
                                                      break loop10;
                                                      addr139:
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      this.§ L§ = null;
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr89);
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                    addr204:
                                 }
                                 else
                                 {
                                    §§goto(addr162);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr218);
      }
      
      override public function update(deltaTime:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || deltaTime)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§%N§);
                  loop2:
                  while(§§pop() != null)
                  {
                     §§push(this.§%N§);
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && deltaTime))
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    break loop2;
                                 }
                                 this.§@!L§();
                                 loop5:
                                 for(; _loc2_; while(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr67);
                                    §§goto(addr57);
                                 })
                                 {
                                    if(_loc2_ || this)
                                    {
                                       continue loop1;
                                    }
                                    addr188:
                                    while(true)
                                    {
                                       if(this.§[!K§ > 0)
                                       {
                                          while(true)
                                          {
                                             addr181:
                                             while(true)
                                             {
                                                this.§[;§();
                                                addr174:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr180:
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          addr67:
                                          while(true)
                                          {
                                             this.§>G§();
                                             loop10:
                                             while(_loc2_ || _loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              §§goto(addr174);
                           }
                        }
                     }
                     §§goto(addr67);
                  }
                  while(true)
                  {
                  }
               }
               if(_loc3_ && deltaTime)
               {
                  continue;
               }
               §§goto(addr93);
            }
         }
         §§goto(addr188);
      }
      
      private function §[;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var bounds:Rectangle = null;
         if(_loc4_)
         {
            if(_loc4_ || sprite)
            {
               addr34:
            }
            var sprite:Sprite = null;
            if(_loc4_)
            {
               if(!(_loc3_ && bounds))
               {
                  §§goto(addr48);
               }
               §§goto(addr55);
            }
            addr48:
            if(§4a§.numChildren > 0)
            {
               if(_loc4_)
               {
                  addr55:
               }
               sprite = §4a§.getChildAt(0) as Sprite;
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     loop0:
                     while(sprite)
                     {
                        if(!(_loc3_ && bounds))
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 bounds = sprite.getBounds(sprite);
                                 if(_loc3_)
                                 {
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    bounds.top -= 2048;
                                    while(true)
                                    {
                                       loop3:
                                       for(; _loc4_; if(!(_loc4_ || sprite))
                                       {
                                          continue;
                                       },if(_loc4_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr112);
                                          }
                                          break loop0;
                                       },§§goto(addr118))
                                       {
                                          this.§%N§ = new §3x§(bounds.width,bounds.height,16777215);
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§%N§);
                                                addr218:
                                                while(true)
                                                {
                                                   §§pop().x = bounds.left;
                                                   addr221:
                                                   while(true)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr134:
                                                if(_loc4_ || sprite)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             addr171:
                                             if(_loc3_ && this)
                                             {
                                                continue;
                                             }
                                             §§push(this.§%N§);
                                             if(_loc4_)
                                             {
                                                §§pop().alpha = 0;
                                                while(true)
                                                {
                                                   loop13:
                                                   for(; !_loc3_; while(true)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop13;
                                                      }
                                                      addr125:
                                                      if(!(_loc3_ && sprite))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr134);
                                                         }
                                                         else
                                                         {
                                                            while(_loc4_ || this)
                                                            {
                                                               while(_loc4_ || this)
                                                               {
                                                                  §§goto(addr171);
                                                                  §§goto(addr125);
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr197:
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr164);
                                                   },continue loop3)
                                                   {
                                                      while(true)
                                                      {
                                                         sprite.addChild(this.§%N§);
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                             }
                                             while(_loc4_)
                                             {
                                                §§pop().y = bounds.top;
                                                §§goto(addr197);
                                                §§goto(addr178);
                                             }
                                             addr178:
                                             §§goto(addr218);
                                          }
                                       }
                                    }
                                 }
                              }
                              loop16:
                              while(true)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(0.2);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + Math.random() * 2);
                                          }
                                          §§pop().§?!F§ = §§pop();
                                          loop19:
                                          for(; _loc4_; while(true)
                                          {
                                             if(!(_loc4_ || bounds))
                                             {
                                                continue loop19;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop17;
                                             }
                                             if(_loc4_ || sprite)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop16;
                                                }
                                                continue loop18;
                                             }
                                          },addr295:,while(true)
                                          {
                                             this.§2P§ = false;
                                             addr272:
                                             §§goto(addr276);
                                          },addr279:)
                                          {
                                             while(true)
                                             {
                                                continue loop19;
                                             }
                                          }
                                          while(true)
                                          {
                                             addr391:
                                             while(true)
                                             {
                                                if(Math.random() < 0.25)
                                                {
                                                   §§goto(addr385);
                                                }
                                                else
                                                {
                                                   §§push(this);
                                                   §§push(0.3);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(Math.random() * (THUNDER_TIME_MAX - 0.3));
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * 0.3);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§1P§ = §§pop();
                                                   §§goto(addr343);
                                                }
                                             }
                                             continue loop18;
                                             §§goto(addr398);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(0.7);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + Math.random() * (THUNDER_TIME_MAX - 0.7));
                                       }
                                       §§pop().§1P§ = §§pop();
                                       §§goto(addr378);
                                    }
                                 }
                              }
                           }
                        }
                        addr276:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr385:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                    }
                                    addr387:
                                 }
                                 else
                                 {
                                    addr398:
                                    while(true)
                                    {
                                       this.§[!K§ = 0;
                                       break loop19;
                                    }
                                    addr398:
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr279);
                           }
                           continue loop25;
                        }
                        §§goto(addr399);
                     }
                     this.§?N§ = 0;
                     if(!_loc3_)
                     {
                        §§goto(addr398);
                     }
                     §§goto(addr310);
                  }
                  §§goto(addr387);
               }
               §§goto(addr310);
            }
            addr399:
            while(true)
            {
               if(!(_loc3_ && bounds))
               {
                  if(true)
                  {
                     break;
                  }
                  continue loop25;
               }
               §§goto(addr272);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §@!L§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc11_ && this)
         {
         }
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         if(!(_loc11_ && obj))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop4:
                     while(!(_loc11_ && thunderAlpha))
                     {
                        continue loop0;
                        while(true)
                        {
                           if(_loc12_ || thunderAlpha)
                           {
                              addr67:
                              if(!(_loc12_ || thunderAlpha))
                              {
                                 break;
                              }
                              if(_loc12_)
                              {
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        while(true)
                        {
                           continue loop4;
                           §§goto(addr67);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §>G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc1_)
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
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        while(true)
                        {
                           continue loop1;
                           loop6:
                           while(_loc2_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§2P§ = true;
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc1_)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    addr95:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr77);
      }
   }
}
