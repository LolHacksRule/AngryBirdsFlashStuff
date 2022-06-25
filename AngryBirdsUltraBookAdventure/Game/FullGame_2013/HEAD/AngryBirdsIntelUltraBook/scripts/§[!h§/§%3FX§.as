package §[!h§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §-s§.LevelBackground;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §?X§ extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3.0;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20.0;
      
      {
         var THUNDER_TIME_MAX:Boolean = true;
         var THUNDER_IN_TIME:Boolean = false;
         if(THUNDER_TIME_MAX)
         {
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
                     while(true)
                     {
                        loop4:
                        for(; !THUNDER_IN_TIME; while(!(THUNDER_IN_TIME && THUNDER_IN_TIME))
                        {
                           §§goto(addr55);
                        })
                        {
                           THUNDER_OUT_TIME = 0.25;
                           while(THUNDER_TIME_MAX)
                           {
                              while(THUNDER_TIME_MAX || THUNDER_IN_TIME)
                              {
                                 THUNDER_INTERVAL_MAX = 20;
                                 if(THUNDER_IN_TIME)
                                 {
                                    continue;
                                 }
                                 if(THUNDER_IN_TIME)
                                 {
                                    continue loop4;
                                 }
                                 if(THUNDER_TIME_MAX)
                                 {
                                    if(!THUNDER_IN_TIME)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 addr87:
                                 while(true)
                                 {
                                    THUNDER_INTERVAL_MIN = 3;
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr87);
         }
         §§goto(addr52);
      }
      
      private var §3^§:Number;
      
      private var §%!W§:Number;
      
      private var §;C§:§6!Y§;
      
      private var §9!R§:Boolean;
      
      private var §"!K§:Number;
      
      private var §+%§:BitmapData;
      
      private var §6!+§:Texture;
      
      private var §9!O§:int = 0;
      
      public function §?X§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && backgroundName)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop4:
                  while(!(_loc6_ && textureManager))
                  {
                     super(backgroundName,groundLevel,textureManager,mimimumScale);
                     loop5:
                     while(!_loc6_)
                     {
                        loop6:
                        do
                        {
                           §§push(this);
                           §§push(3 + Math.random() * 3);
                           if(!_loc6_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§3^§ = §§pop();
                           while(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop5;
                        }
                        while(!(_loc5_ || textureManager));
                        
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        continue loop4;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc6_ && textureManager)
                        {
                           while(true)
                           {
                              continue loop3;
                           }
                           return;
                        }
                        addr62:
                        addr124:
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§6!+§));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     addr160:
                     while(true)
                     {
                        textureManager.unregisterBitmapDataTexture(this.§6!+§);
                        addr153:
                        while(true)
                        {
                           while(true)
                           {
                              this.§6!+§ = null;
                              while(true)
                              {
                                 addr135:
                                 while(!_loc1_)
                                 {
                                 }
                              }
                              loop10:
                              while(!(_loc1_ && this))
                              {
                                 this.§+%§.dispose();
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop10;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       continue loop10;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr159:
               }
               while(true)
               {
                  §§push(Boolean(this.§+%§));
                  if(_loc1_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     loop15:
                     while(true)
                     {
                        super.dispose();
                        while(_loc1_)
                        {
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr135);
                        }
                        else
                        {
                           loop14:
                           while(!_loc1_)
                           {
                              addr55:
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop15;
                              }
                              addr82:
                              while(true)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    this.§+%§ = null;
                                    break loop14;
                                 }
                                 §§goto(addr159);
                                 §§goto(addr55);
                              }
                              §§goto(addr160);
                           }
                           while(_loc2_)
                           {
                              §§goto(addr53);
                           }
                           addr53:
                           §§goto(addr95);
                        }
                     }
                  }
                  §§goto(addr114);
               }
            }
         }
      }
      
      override protected function createGroundQuad(color:uint) : §6!Y§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || color)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(this.§6!+§));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(!_loc3_)
                           {
                              textureManager.unregisterBitmapDataTexture(this.§6!+§);
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§6!+§ = null;
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          continue loop3;
                                          addr38:
                                          if(!(_loc4_ || color))
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop8;
                                          }
                                          addr47:
                                          if(false)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                this.§6!+§ = textureManager.getTextureFromBitmapData(this.§+%§);
                                                while(_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr38);
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr71:
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr78:
                                                         if(_loc4_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop21;
                                                            }
                                                            addr85:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§+%§.dispose();
                                                               addr146:
                                                               while(true)
                                                               {
                                                                  addr131:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§+%§ = null;
                                                                        continue;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr78);
                                                            }
                                                            addr167:
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   addr95:
                                                   while(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr111);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§+%§ = new BitmapData(2,2,false,color);
                                                         §§goto(addr95);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr131);
                                                   §§goto(addr71);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          var quad:§6!Y§ = new §0!b§(this.§6!+§,true,false);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                quad.width = 4096;
                                                while(!_loc3_)
                                                {
                                                   addr258:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr265:
                                                      if(_loc3_ && color)
                                                      {
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr258);
                                                            §§goto(addr265);
                                                         }
                                                         while(true)
                                                         {
                                                            quad.height = 4096;
                                                            §§goto(addr251);
                                                         }
                                                         addr251:
                                                         addr268:
                                                      }
                                                      return quad;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr268);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function update(deltaTime:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(§§push(this.§;C§); §§pop() != null; )
                  {
                     §§push(this.§;C§);
                     if(_loc3_)
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
                              if(_loc3_ && _loc2_)
                              {
                                 break loop2;
                              }
                              this.§!L§();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(_loc2_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!(_loc3_ && deltaTime))
                                       {
                                          addr79:
                                          loop11:
                                          while(true)
                                          {
                                             this.§+!J§();
                                             loop12:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this);
                                                         §§push(this.§3^§);
                                                         if(!(_loc3_ && deltaTime))
                                                         {
                                                            §§push(deltaTime);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() / 1000);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§3^§ = §§pop();
                                                         continue loop5;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop6;
                                                   addr74:
                                                }
                                                else
                                                {
                                                   addr150:
                                                }
                                                addr150:
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          addr79:
                                       }
                                       else
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             addr167:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr79);
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     §§goto(addr79);
                  }
                  while(true)
                  {
                     §§goto(addr188);
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
         }
         while(true)
         {
            this.§;!<§();
            §§goto(addr150);
         }
      }
      
      private function §;!<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || sprite)
         {
         }
         var bounds:Rectangle = null;
         if(!(_loc4_ && sprite))
         {
            if(_loc4_)
            {
            }
         }
         var sprite:Sprite = null;
         if(!(_loc4_ && sprite))
         {
            if(!(_loc4_ && bounds))
            {
               if(§3!I§.numChildren > 0)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr69:
                  }
                  sprite = §3!I§.getChildAt(0) as Sprite;
                  if(_loc3_ || bounds)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        loop0:
                        while(sprite)
                        {
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    bounds = sprite.getBounds(sprite);
                                    if(_loc3_ || sprite)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          bounds.top -= 2048;
                                          loop15:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                this.§;C§ = new §6!Y§(bounds.width,bounds.height,16777215);
                                                while(_loc3_ || this)
                                                {
                                                   continue loop15;
                                                   addr150:
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      addr129:
                                                      if(!_loc4_)
                                                      {
                                                         if(false)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               sprite.addChild(this.§;C§);
                                                               addr139:
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || sprite)
                                                                  {
                                                                     addr181:
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr150);
                                                                     }
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§;C§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().alpha = 0;
                                                                              break loop28;
                                                                           }
                                                                           break;
                                                                           addr177:
                                                                        }
                                                                        addr191:
                                                                        while(true)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                     }
                                                                     while(_loc3_ || bounds)
                                                                     {
                                                                        §§pop().y = bounds.top;
                                                                        §§goto(addr191);
                                                                        §§goto(addr177);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = bounds.left;
                                                                        break loop29;
                                                                        §§goto(addr181);
                                                                     }
                                                                     addr181:
                                                                     addr208:
                                                                  }
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop28;
                                                                     }
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr181);
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr160);
                                                            }
                                                            addr172:
                                                         }
                                                         break loop0;
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr139);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr208);
                                    }
                                 }
                                 loop31:
                                 while(true)
                                 {
                                    addr408:
                                    while(!(_loc3_ || sprite))
                                    {
                                       continue loop31;
                                    }
                                    if(Math.random() < 0.25)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(0.7);
                                             if(!(_loc4_ && bounds))
                                             {
                                                §§push(§§pop() + Math.random() * (THUNDER_TIME_MAX - 0.7));
                                             }
                                             §§pop().§%!W§ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(0.2);
                                                   if(!(_loc4_ && sprite))
                                                   {
                                                      §§push(§§pop() + Math.random() * 2);
                                                   }
                                                   §§pop().§"!K§ = §§pop();
                                                   addr336:
                                                   addr340:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr336);
                                                      }
                                                      addr343:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                         addr366:
                                                         while(true)
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   addr318:
                                                   while(true)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         this.§9!R§ = false;
                                                         while(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc4_ && bounds)
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr304:
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     while(false)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr423:
                                                                     return;
                                                                     addr284:
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§3^§ = 0;
                                                                  continue loop31;
                                                                  §§goto(addr304);
                                                               }
                                                               addr422:
                                                            }
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§push(this);
                                    §§push(0.3);
                                    if(!_loc4_)
                                    {
                                       §§push(Math.random() * (THUNDER_TIME_MAX - 0.3));
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() * 0.3);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§%!W§ = §§pop();
                                    §§goto(addr366);
                                 }
                                 addr420:
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr422);
                        }
                        this.§9!O§ = 0;
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr265);
                        }
                        §§goto(addr343);
                     }
                     §§goto(addr284);
                  }
                  §§goto(addr420);
               }
               §§goto(addr423);
            }
         }
         §§goto(addr69);
      }
      
      private function §!L§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || this)
         {
         }
         var scalar:* = NaN;
         var sprite:Sprite = null;
         var component:* = uint(0);
         var fullThunderColor:* = uint(0);
         if(!_loc11_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr87:
                  while(true)
                  {
                     while(true)
                     {
                        addr67:
                        while(_loc12_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
                  loop6:
                  while(_loc12_ || this)
                  {
                     while(true)
                     {
                        if(_loc11_ && obj)
                        {
                           continue loop6;
                        }
                        if(!_loc11_)
                        {
                           if(!_loc11_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr67);
                     }
                     var obj:DisplayObject = null;
                     if(_loc12_ || this)
                     {
                     }
                     §§push(0);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var thunderAlpha:* = §§pop();
                     if(_loc12_ || this)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§3^§);
                           loop9:
                           while(true)
                           {
                              §§push(THUNDER_IN_TIME);
                              loop10:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(this.§3^§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(THUNDER_IN_TIME);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§%!W§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             while(_loc12_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(this.§3^§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc12_ || thunderAlpha)
                                                      {
                                                         §§push(THUNDER_IN_TIME);
                                                         if(_loc12_ || this)
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc11_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§%!W§);
                                                                  if(_loc12_ || thunderColor)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr306:
                                                                           §§push(THUNDER_OUT_TIME);
                                                                           if(_loc11_ && obj)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           addr314:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc11_ && obj))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr333:
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(this.§3^§);
                                                                                                         if(!(_loc11_ && thunderColor))
                                                                                                         {
                                                                                                            §§push(THUNDER_IN_TIME);
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() + this.§%!W§);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc12_ || thunderAlpha)
                                                                                                                  {
                                                                                                                     addr205:
                                                                                                                     if(_loc12_ || obj)
                                                                                                                     {
                                                                                                                        addr215:
                                                                                                                        §§push(§§pop() - §§pop() / THUNDER_OUT_TIME);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 if(_loc12_ || this)
                                                                                                                                 {
                                                                                                                                    addr232:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc12_ || thunderColor)
                                                                                                                                    {
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          thunderAlpha = §§pop();
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc12_ || obj))
                                                                                                                                             {
                                                                                                                                                continue loop43;
                                                                                                                                             }
                                                                                                                                             addr163:
                                                                                                                                             if(_loc12_ || obj)
                                                                                                                                             {
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr128:
                                                                                                                                                   loop20:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§;C§.alpha = thunderAlpha;
                                                                                                                                                      while(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc12_ || thunderAlpha))
                                                                                                                                                         {
                                                                                                                                                            continue loop39;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc11_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc12_ || this))
                                                                                                                                                               {
                                                                                                                                                                  loop22:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr409:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        scalar = §§pop();
                                                                                                                                                                        continue loop22;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc12_ || obj))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
                                                                                                                                                               if(!(_loc11_ && thunderAlpha))
                                                                                                                                                               {
                                                                                                                                                                  addr580:
                                                                                                                                                                  §§push(this.§3^§);
                                                                                                                                                                  if(!(_loc11_ && obj))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > THUNDER_TIME_MAX)
                                                                                                                                                                     {
                                                                                                                                                                        addr553:
                                                                                                                                                                        if(!(_loc11_ && thunderColor))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc11_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr528:
                                                                                                                                                                              if(§3!I§.numChildren > 0)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr723:
                                                                                                                                                                                    if(_loc12_ || thunderAlpha)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr660:
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(THUNDER_INTERVAL_MIN);
                                                                                                                                                                                       if(!(_loc11_ && thunderColor))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(THUNDER_INTERVAL_MAX);
                                                                                                                                                                                          if(!(_loc11_ && thunderColor))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - THUNDER_INTERVAL_MIN);
                                                                                                                                                                                             if(!(_loc11_ && obj))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr690:
                                                                                                                                                                                                §§push(§§pop() * Math.random());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc12_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr698:
                                                                                                                                                                                                §§pop().§3^§ = -§§pop();
                                                                                                                                                                                                addr699:
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr658:
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr660);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr732:
                                                                                                                                                                                                         var start:* = int(§3!I§.numChildren - 1);
                                                                                                                                                                                                         addr726:
                                                                                                                                                                                                         addr731:
                                                                                                                                                                                                         if(!_loc12_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(start);
                                                                                                                                                                                                         if(!_loc11_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         var i:* = §§pop();
                                                                                                                                                                                                         addr965:
                                                                                                                                                                                                         §§push(i);
                                                                                                                                                                                                         if(_loc12_ || thunderColor)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr974:
                                                                                                                                                                                                            if(§§pop() >= 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr902:
                                                                                                                                                                                                                  if(_loc12_ || obj)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(thunderColor);
                                                                                                                                                                                                                     if(_loc12_ || thunderColor)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr866:
                                                                                                                                                                                                                        §§push(§§pop() * (i + start));
                                                                                                                                                                                                                        if(!(_loc11_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / (start * 2));
                                                                                                                                                                                                                           if(_loc12_ || obj)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr888:
                                                                                                                                                                                                                              component = uint(§§pop());
                                                                                                                                                                                                                              addr842:
                                                                                                                                                                                                                              addr889:
                                                                                                                                                                                                                              addr855:
                                                                                                                                                                                                                              §§push(thunderColor);
                                                                                                                                                                                                                              §§push(255);
                                                                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr845:
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc12_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(255);
                                                                                                                                                                                                                                             if(_loc12_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr821:
                                                                                                                                                                                                                                                §§push(uint(§§pop()));
                                                                                                                                                                                                                                                if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc12_ || obj)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      component = §§pop();
                                                                                                                                                                                                                                                      addr836:
                                                                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc12_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc12_ || thunderColor)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr748:
                                                                                                                                                                                                                                                                  §§push(component);
                                                                                                                                                                                                                                                                  if(_loc12_ || thunderColor)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(16);
                                                                                                                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() << §§pop());
                                                                                                                                                                                                                                                                        if(_loc12_ || obj)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(component << 8);
                                                                                                                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + component);
                                                                                                                                                                                                                                                                                 if(_loc12_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr786:
                                                                                                                                                                                                                                                                                    §§push(uint(§§pop()));
                                                                                                                                                                                                                                                                                    if(!_loc11_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       fullThunderColor = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr748);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             obj = §3!I§.getChildAt(i);
                                                                                                                                                                                                                                                                                             if(!_loc11_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                obj.color = fullThunderColor;
                                                                                                                                                                                                                                                                                                addr948:
                                                                                                                                                                                                                                                                                                addr964:
                                                                                                                                                                                                                                                                                                if(!(_loc11_ && obj))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(i);
                                                                                                                                                                                                                                                                                                   if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      if(_loc12_ || thunderColor)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   i = §§pop();
                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr948);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr965);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr964);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr948);
                                                                                                                                                                                                                                                                                                   addr957:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr962:
                                                                                                                                                                                                                                                                                                §§goto(addr962);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr957);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr982:
                                                                                                                                                                                                                                                                                          if(_loc12_ || obj)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1007:
                                                                                                                                                                                                                                                                                          §§push(start);
                                                                                                                                                                                                                                                                                          if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1016:
                                                                                                                                                                                                                                                                                             var j:* = int(§§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1090:
                                                                                                                                                                                                                                                                                                if(j >= 0)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      obj = §`!d§.getChildAt(j);
                                                                                                                                                                                                                                                                                                      if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(obj);
                                                                                                                                                                                                                                                                                                         §§push((component << 16) + (component << 8));
                                                                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + component);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().color = §§pop();
                                                                                                                                                                                                                                                                                                         addr1070:
                                                                                                                                                                                                                                                                                                         addr1089:
                                                                                                                                                                                                                                                                                                         addr1087:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1072:
                                                                                                                                                                                                                                                                                                      §§push(j);
                                                                                                                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                         if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1055:
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         j = §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1090);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1089);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1087);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1072);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1055);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1105:
                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §1!W§.color = (component << 16) + (component << 8) + component;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1135:
                                                                                                                                                                                                                                                                                                   if(!(_loc12_ || thunderAlpha))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1135);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                                                                   addr1122:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1105);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1135);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1122);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1016);
                                                                                                                                                                                                                                                                                          addr1006:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr995:
                                                                                                                                                                                                                                                                                       §§push(int(§`!d§.numChildren - 1));
                                                                                                                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          start = §§pop();
                                                                                                                                                                                                                                                                                          if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1006);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1007);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1016);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr821);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr995);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr974);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1016);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr786);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr845);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr836);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1007);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr902);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr888);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1016);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1007);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr889);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr855);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr748);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr866);
                                                                                                                                                                                                                              addr887:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr995);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr887);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr888);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr982);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc11_ && thunderColor)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr982);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1016);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr723);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr723);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr698);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr690);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr698);
                                                                                                                                                                                       addr711:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(255);
                                                                                                                                                                                    if(_loc12_ || obj)
                                                                                                                                                                                    {
                                                                                                                                                                                       thunderColor = §§pop();
                                                                                                                                                                                       §§goto(addr723);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr732);
                                                                                                                                                                                    addr725:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc11_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc12_ || thunderAlpha)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr528);
                                                                                                                                                                                       }
                                                                                                                                                                                       sprite = §3!I§.getChildAt(0) as Sprite;
                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(sprite)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc11_ && thunderColor)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr636:
                                                                                                                                                                                          this.§;C§ = null;
                                                                                                                                                                                          if(_loc12_ || obj)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr725);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr658);
                                                                                                                                                                                          addr635:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr606:
                                                                                                                                                                                       sprite.removeChild(this.§;C§,true);
                                                                                                                                                                                       if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr606);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr636);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr635);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr606);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr633:
                                                                                                                                                                                       §§goto(addr633);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr553);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr711);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr636);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr723);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr580);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr726);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr731);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr660);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc11_ && thunderAlpha))
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(scalar);
                                                                                                                                                                     addr340:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr339:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr388:
                                                                                                                                                                  loop23:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        return;
                                                                                                                                                                        addr429:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                     addr419:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() == 1)
                                                                                                                                                                        {
                                                                                                                                                                           break loop23;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(THUNDER_TIME_MAX);
                                                                                                                                                                     addr391:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§%!W§);
                                                                                                                                                                        addr393:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           addr394:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(THUNDER_TIME_MAX);
                                                                                                                                                                              addr396:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() * 3);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc12_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr409);
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr409);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr388:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               addr471:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr472:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     loop33:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§9!O§ + 1);
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() % 2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§9!O§ = §§pop();
                                                                                                                                                                        addr451:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc12_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop33;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr374:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr163);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr489:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§3^§);
                                                                                                                                                         addr476:
                                                                                                                                                         loop45:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(THUNDER_IN_TIME);
                                                                                                                                                            addr478:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               addr479:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr480:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     thunderAlpha = §§pop();
                                                                                                                                                                     addr481:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr128);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop45;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr128:
                                                                                                                                                   addr488:
                                                                                                                                                }
                                                                                                                                                §§goto(addr488);
                                                                                                                                             }
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr388);
                                                                                                                                                }
                                                                                                                                                addr415:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr451);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr394);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             if(_loc12_ || this)
                                                                                                                                             {
                                                                                                                                                continue loop9;
                                                                                                                                             }
                                                                                                                                             §§goto(addr479);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr356:
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                                 §§goto(addr476);
                                                                                                                              }
                                                                                                                              §§goto(addr409);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 thunderAlpha = §§pop();
                                                                                                                              }
                                                                                                                              addr373:
                                                                                                                           }
                                                                                                                           §§goto(addr374);
                                                                                                                        }
                                                                                                                        §§goto(addr232);
                                                                                                                     }
                                                                                                                     §§goto(addr340);
                                                                                                                  }
                                                                                                                  §§goto(addr215);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr215);
                                                                                                         }
                                                                                                         §§goto(addr205);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§goto(addr489);
                                                                                       }
                                                                                       §§goto(addr472);
                                                                                    }
                                                                                    §§goto(addr429);
                                                                                 }
                                                                              }
                                                                              §§goto(addr128);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§goto(addr356);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                              }
                                                                              addr353:
                                                                           }
                                                                           §§goto(addr396);
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr393);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr471);
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr128);
                              }
                           }
                        }
                     }
                     §§goto(addr415);
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §+!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            loop0:
            while(this.§3^§ > this.§"!K§)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§9!R§);
                        if(!(_loc1_ && this))
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop0;
                        }
                        while(true)
                        {
                           addr109:
                           while(true)
                           {
                              SoundEngine.§[!D§("Lightning04","ChannelExplosions");
                              addr93:
                              while(!_loc1_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr119);
      }
   }
}
