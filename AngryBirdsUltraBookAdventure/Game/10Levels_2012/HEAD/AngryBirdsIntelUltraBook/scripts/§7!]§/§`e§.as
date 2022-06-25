package §7!]§
{
   import §"[§.LevelBackground;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`e§ extends LevelBackground
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
            loop0:
            while(true)
            {
               THUNDER_TIME_MAX = 1.5;
               addr138:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     THUNDER_IN_TIME = 0.15;
                     while(true)
                     {
                        while(true)
                        {
                           if(THUNDER_IN_TIME || THUNDER_TIME_MAX)
                           {
                              while(true)
                              {
                                 THUNDER_OUT_TIME = 0.25;
                                 continue loop0;
                              }
                              return;
                              addr49:
                              addr125:
                           }
                           break;
                           addr86:
                           loop7:
                           while(THUNDER_IN_TIME || THUNDER_IN_TIME)
                           {
                              THUNDER_INTERVAL_MIN = 3;
                              while(true)
                              {
                                 if(THUNDER_IN_TIME || §`e§)
                                 {
                                    addr76:
                                    if(THUNDER_TIME_MAX && THUNDER_TIME_MAX)
                                    {
                                       break;
                                    }
                                    while(THUNDER_IN_TIME)
                                    {
                                       THUNDER_INTERVAL_MAX = 20;
                                       if(THUNDER_IN_TIME || THUNDER_TIME_MAX)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      private var §`u§:Number;
      
      private var §0g§:Number;
      
      private var §2;§:§!!9§;
      
      private var §7%§:Boolean;
      
      private var §^!^§:Number;
      
      private var §!!=§:BitmapData;
      
      private var §>n§:Texture;
      
      private var §3!M§:int = 0;
      
      public function §`e§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!(_loc6_ && textureManager))
         {
            while(true)
            {
               addr80:
               if(!(_loc5_ || groundLevel))
               {
                  continue;
               }
               addr97:
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 addr116:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       super(backgroundName,groundLevel,textureManager,mimimumScale);
                                       addr108:
                                       while(!_loc6_)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(3 + Math.random() * 3);
                                             if(_loc5_ || this)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§`u§ = §§pop();
                                             addr71:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop6;
                                                §§goto(addr97);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           addr122:
                        }
                        return;
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr108);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr122);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            while(true)
            {
               §§push(Boolean(this.§>n§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        textureManager.unregisterBitmapDataTexture(this.§>n§);
                        while(true)
                        {
                           addr152:
                           while(!(_loc2_ && _loc1_))
                           {
                              this.§>n§ = null;
                           }
                           continue loop3;
                           loop10:
                           while(!(_loc2_ && _loc2_))
                           {
                              this.§!!=§ = null;
                              loop11:
                              while(_loc1_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          addr50:
                                          break;
                                          addr53:
                                       }
                                       while(true)
                                       {
                                          super.dispose();
                                          continue loop12;
                                       }
                                       if(_loc1_)
                                       {
                                          return;
                                       }
                                       continue loop0;
                                    }
                                    addr149:
                                    addr127:
                                    while(!_loc2_)
                                    {
                                       this.§!!=§.dispose();
                                       break loop11;
                                    }
                                    while(true)
                                    {
                                       addr132:
                                       while(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              while(_loc1_)
                              {
                                 continue loop10;
                              }
                              §§goto(addr132);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      override protected function createGroundQuad(color:uint) : §!!9§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
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
                  while(true)
                  {
                     §§push(Boolean(this.§>n§));
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(this.§!!=§));
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    addr136:
                                    while(true)
                                    {
                                       this.§!!=§.dispose();
                                       continue loop5;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§!!=§ = new BitmapData(2,2,false,color);
                                 addr82:
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 while(_loc3_)
                                 {
                                    loop17:
                                    while(_loc3_ && this)
                                    {
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             this.§>n§ = null;
                                             continue loop17;
                                          }
                                          addr182:
                                          textureManager.unregisterBitmapDataTexture(this.§>n§);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr175);
         }
      }
      
      override public function update(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || deltaTime)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(§§push(this.§2;§); §§pop() != null; )
                  {
                     §§push(this.§2;§);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              loop4:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    this.§2!-§();
                                    loop5:
                                    for(; _loc3_; if(_loc3_ || this)
                                    {
                                       continue loop4;
                                    })
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                this.§2!1§();
                                                while(true)
                                                {
                                                   while(!_loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§`u§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(deltaTime);
                                                         if(_loc3_ || deltaTime)
                                                         {
                                                            §§push(§§pop() / 1000);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§`u§ = §§pop();
                                                      continue loop6;
                                                      if(!(_loc2_ && deltaTime))
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             return;
                                             addr121:
                                             addr72:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr170:
                                          }
                                          §§goto(addr121);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr184:
                                 while(true)
                                 {
                                    if(this.§`u§ > 0)
                                    {
                                       while(true)
                                       {
                                          addr177:
                                          while(true)
                                          {
                                             this.§8X§();
                                             §§goto(addr170);
                                          }
                                       }
                                       addr176:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr121);
                                 }
                                 if(!(_loc3_ || deltaTime))
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr72);
                                 }
                                 §§goto(addr177);
                              }
                           }
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr121);
                  }
                  while(true)
                  {
                     §§goto(addr184);
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      private function §8X§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         var bounds:Rectangle = null;
         if(_loc3_)
         {
            if(_loc3_)
            {
               addr33:
            }
            var sprite:Sprite = null;
            if(_loc3_ || _loc3_)
            {
               if(_loc3_)
               {
                  §§goto(addr47);
               }
               §§goto(addr59);
            }
            addr47:
            if(§+!I§.numChildren > 0)
            {
               if(_loc3_ || _loc3_)
               {
                  addr59:
               }
               sprite = §+!I§.getChildAt(0) as Sprite;
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     loop0:
                     while(sprite)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              while(!(_loc4_ && this))
                              {
                                 if(false)
                                 {
                                    continue loop0;
                                 }
                                 bounds = sprite.getBounds(sprite);
                                 if(_loc4_)
                                 {
                                 }
                                 loop16:
                                 while(true)
                                 {
                                    bounds.top -= 2048;
                                    while(true)
                                    {
                                       loop18:
                                       for(; _loc3_; loop22:
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop16;
                                          }
                                          loop23:
                                          while(true)
                                          {
                                             §§push(this.§2;§);
                                             loop24:
                                             for(; _loc3_; while(true)
                                             {
                                                §§push(this.§2;§);
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                §§pop().alpha = 0;
                                                continue loop23;
                                                addr138:
                                                if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop22;
                                                }
                                                if(!_loc4_)
                                                {
                                                   addr114:
                                                   if(!(_loc3_ || sprite))
                                                   {
                                                      continue loop23;
                                                   }
                                                   addr121:
                                                   if(!_loc4_)
                                                   {
                                                      if(false)
                                                      {
                                                         loop29:
                                                         while(true)
                                                         {
                                                            sprite.addChild(this.§2;§);
                                                            addr131:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && bounds))
                                                               {
                                                                  §§goto(addr138);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  §§goto(addr184);
                                                                  addr150:
                                                               }
                                                            }
                                                            continue loop22;
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      break loop0;
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr131);
                                             })
                                             {
                                                §§pop().y = bounds.top;
                                                while(true)
                                                {
                                                   continue loop24;
                                                }
                                             }
                                             §§goto(addr191);
                                             while(!(_loc4_ && bounds))
                                             {
                                                §§goto(addr150);
                                                §§goto(addr114);
                                             }
                                          }
                                       })
                                       {
                                          this.§2;§ = new §!!9§(bounds.width,bounds.height,16777215);
                                          while(true)
                                          {
                                             addr216:
                                             while(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§2;§);
                                                while(true)
                                                {
                                                   §§pop().x = bounds.left;
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              loop31:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(0.2);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() + Math.random() * 2);
                                    }
                                    §§pop().§^!^§ = §§pop();
                                    loop6:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop5;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   addr326:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && bounds))
                                                      {
                                                         break loop7;
                                                      }
                                                      addr417:
                                                      while(true)
                                                      {
                                                         this.§`u§ = 0;
                                                         addr415:
                                                         addr406:
                                                         loop8:
                                                         while(true)
                                                         {
                                                            addr410:
                                                            while(true)
                                                            {
                                                               if(Math.random() < 0.25)
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr406:
                                                         while(true)
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          addr292:
                                       }
                                       §§goto(addr406);
                                    }
                                    addr407:
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(0.7);
                                       if(_loc3_ || bounds)
                                       {
                                          §§push(§§pop() + Math.random() * (THUNDER_TIME_MAX - 0.7));
                                       }
                                       §§pop().§0g§ = §§pop();
                                       addr392:
                                       while(true)
                                       {
                                          if(_loc3_ || bounds)
                                          {
                                             continue loop31;
                                          }
                                          §§goto(addr415);
                                          continue loop13;
                                       }
                                    }
                                 }
                              }
                              addr97:
                           }
                        }
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              this.§7%§ = false;
                              while(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && sprite))
                                       {
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr410);
                                    }
                                    §§goto(addr392);
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr418);
                        }
                     }
                     this.§3!M§ = 0;
                     if(!(_loc4_ && bounds))
                     {
                        §§goto(addr417);
                     }
                     §§goto(addr407);
                  }
                  §§goto(addr406);
               }
               §§goto(addr97);
            }
            addr418:
            return;
         }
         §§goto(addr33);
      }
      
      private function §2!-§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || thunderColor)
         {
         }
         var scalar:* = NaN;
         var sprite:Sprite = null;
         var component:* = uint(0);
         var fullThunderColor:* = uint(0);
         if(_loc12_ || thunderAlpha)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc12_)
                     {
                        loop4:
                        for(; !_loc11_; while(_loc12_ || thunderColor)
                        {
                        })
                        {
                           if(_loc11_)
                           {
                              continue loop2;
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                     continue loop0;
                  }
                  addr49:
                  if(_loc11_ && this)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr58);
                  }
                  var obj:DisplayObject = null;
                  if(!_loc12_)
                  {
                  }
                  §§push(0);
                  if(!(_loc11_ && obj))
                  {
                     §§push(Number(§§pop()));
                  }
                  var thunderAlpha:* = §§pop();
                  if(_loc12_ || thunderAlpha)
                  {
                     loop8:
                     while(true)
                     {
                        §§push(this.§`u§);
                        loop9:
                        while(true)
                        {
                           §§push(THUNDER_IN_TIME);
                           loop10:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(this.§`u§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(THUNDER_IN_TIME);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§0g§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(this.§`u§);
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc12_ || thunderAlpha)
                                                   {
                                                      §§push(THUNDER_IN_TIME);
                                                      if(_loc12_ || thunderAlpha)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               §§push(this.§0g§);
                                                               if(!_loc11_)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr272:
                                                                     §§push(§§pop() + THUNDER_OUT_TIME);
                                                                  }
                                                                  if(_loc12_)
                                                                  {
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        if(!(_loc12_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc11_ && thunderAlpha)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           loop16:
                                                                           while(_loc12_ || thunderAlpha)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(this.§`u§);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(THUNDER_IN_TIME);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§0g§);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(_loc12_ || this)
                                                                                                   {
                                                                                                      addr188:
                                                                                                      §§push(§§pop() - §§pop() / THUNDER_OUT_TIME);
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc12_ || thunderColor)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§0g§);
                                                                                                               addr357:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               addr352:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(THUNDER_TIME_MAX);
                                                                                                            addr360:
                                                                                                            while(_loc12_ || obj)
                                                                                                            {
                                                                                                               §§push(§§pop() * 3);
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr371:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        scalar = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 addr310:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr312:
                                                                                                                                       §§push(scalar);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr314:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ && obj))
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * scalar);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc12_ || obj))
                                                                                                                                                   {
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc12_ || thunderColor)
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         thunderAlpha = §§pop();
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               loop34:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc12_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc11_ && thunderColor)
                                                                                                                                                                        {
                                                                                                                                                                           break loop34;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                     addr443:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc12_ || thunderColor)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3!M§);
                                                                                                                                                                        addr388:
                                                                                                                                                                        while(§§pop() == 1)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr352);
                                                                                                                                                                        }
                                                                                                                                                                        addr390:
                                                                                                                                                                        break loop16;
                                                                                                                                                                     }
                                                                                                                                                                     addr394:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr120);
                                                                                                                                                                     }
                                                                                                                                                                     addr476:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§`u§);
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop9;
                                                                                                                                                               addr484:
                                                                                                                                                               addr411:
                                                                                                                                                            }
                                                                                                                                                            do
                                                                                                                                                            {
                                                                                                                                                               this.§2;§.alpha = thunderAlpha;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(false);
                                                                                                                                                            
                                                                                                                                                            var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
                                                                                                                                                            addr120:
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr570:
                                                                                                                                                               §§push(this.§`u§);
                                                                                                                                                               if(!(_loc11_ && obj))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > THUNDER_TIME_MAX)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                     {
                                                                                                                                                                        addr568:
                                                                                                                                                                        if(§+!I§.numChildren > 0)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc12_ || thunderAlpha)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc12_ || this)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr568);
                                                                                                                                                                           }
                                                                                                                                                                           addr534:
                                                                                                                                                                           if(_loc12_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc11_ && obj))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr568);
                                                                                                                                                                                    }
                                                                                                                                                                                    sprite = §+!I§.getChildAt(0) as Sprite;
                                                                                                                                                                                    if(!_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr625:
                                                                                                                                                                                       if(sprite)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr622:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr601:
                                                                                                                                                                                          sprite.removeChild(this.§2;§,true);
                                                                                                                                                                                          if(!(_loc11_ && obj))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc12_ || thunderColor)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc12_ || obj)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr601);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr626:
                                                                                                                                                                                                   this.§2;§ = null;
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr705:
                                                                                                                                                                                                      §§push(255);
                                                                                                                                                                                                      if(_loc12_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         thunderColor = §§pop();
                                                                                                                                                                                                         addr643:
                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                         §§push(THUNDER_INTERVAL_MIN);
                                                                                                                                                                                                         if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(THUNDER_INTERVAL_MAX);
                                                                                                                                                                                                            if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - THUNDER_INTERVAL_MIN);
                                                                                                                                                                                                               if(_loc12_ || obj)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * Math.random());
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().§`u§ = §§pop();
                                                                                                                                                                                                         addr703:
                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc11_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc12_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc11_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr641:
                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr643);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr712:
                                                                                                                                                                                                                     var start:* = int(§+!I§.numChildren - 1);
                                                                                                                                                                                                                     addr706:
                                                                                                                                                                                                                     addr711:
                                                                                                                                                                                                                     if(!_loc12_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(start);
                                                                                                                                                                                                                     if(_loc12_ || obj)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     var i:* = §§pop();
                                                                                                                                                                                                                     addr970:
                                                                                                                                                                                                                     §§push(i);
                                                                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr974:
                                                                                                                                                                                                                        if(§§pop() >= 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc12_ || obj)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc12_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr873:
                                                                                                                                                                                                                                    §§push(thunderColor * (i + start));
                                                                                                                                                                                                                                    if(_loc12_ || obj)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr889:
                                                                                                                                                                                                                                       component = uint(§§pop() / (start * 2));
                                                                                                                                                                                                                                       addr888:
                                                                                                                                                                                                                                       if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr870:
                                                                                                                                                                                                                                          §§push(thunderColor);
                                                                                                                                                                                                                                          §§push(255);
                                                                                                                                                                                                                                          if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr866:
                                                                                                                                                                                                                                                addr867:
                                                                                                                                                                                                                                                §§push(255);
                                                                                                                                                                                                                                                if(!(_loc11_ && obj))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr851:
                                                                                                                                                                                                                                                   §§push(uint(§§pop()));
                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      component = §§pop();
                                                                                                                                                                                                                                                      addr854:
                                                                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr761:
                                                                                                                                                                                                                                                         §§push(component);
                                                                                                                                                                                                                                                         if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc11_ && obj))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(16);
                                                                                                                                                                                                                                                               if(_loc12_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() << §§pop());
                                                                                                                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(component << 8);
                                                                                                                                                                                                                                                                     if(_loc12_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + component);
                                                                                                                                                                                                                                                                              if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr813:
                                                                                                                                                                                                                                                                                 §§push(uint(§§pop()));
                                                                                                                                                                                                                                                                                 if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc12_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       fullThunderColor = §§pop();
                                                                                                                                                                                                                                                                                       if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc12_ || obj)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc11_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc11_ && thunderColor))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr761);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         obj = §+!I§.getChildAt(i);
                                                                                                                                                                                                                                                                                                         if(!_loc11_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            obj.color = fullThunderColor;
                                                                                                                                                                                                                                                                                                            addr956:
                                                                                                                                                                                                                                                                                                            addr969:
                                                                                                                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc12_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(i);
                                                                                                                                                                                                                                                                                                                  if(_loc12_ || thunderColor)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                     if(!(_loc11_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  i = §§pop();
                                                                                                                                                                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr954:
                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr956);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr970);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr956);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr969);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr967:
                                                                                                                                                                                                                                                                                                            §§goto(addr967);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr954);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr870);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr866);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr867);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr854);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr995);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1001);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr873);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr851);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr995);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr888);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr995);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr974);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr870);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr889);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr813);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1002);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr870);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr998);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr761);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr873);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1002);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr995:
                                                                                                                                                                                                                                    §§goto(addr990);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr982:
                                                                                                                                                                                                                                 if(!(_loc11_ && thunderAlpha))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr990:
                                                                                                                                                                                                                                    §§push(int(§ -§.numChildren - 1));
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr998:
                                                                                                                                                                                                                                       start = §§pop();
                                                                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1002:
                                                                                                                                                                                                                                          §§push(start);
                                                                                                                                                                                                                                          if(_loc12_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1001:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1002);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    var j:* = §§pop();
                                                                                                                                                                                                                                    if(_loc12_ || obj)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1080:
                                                                                                                                                                                                                                       if(j >= 0)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             obj = § -§.getChildAt(j);
                                                                                                                                                                                                                                             if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(obj);
                                                                                                                                                                                                                                                §§push((component << 16) + (component << 8));
                                                                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + component);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().color = §§pop();
                                                                                                                                                                                                                                                addr1051:
                                                                                                                                                                                                                                                addr1079:
                                                                                                                                                                                                                                                if(_loc12_ || obj)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(j);
                                                                                                                                                                                                                                                      if(!(_loc11_ && obj))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      j = §§pop();
                                                                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1049:
                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1051);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1080);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1051);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1079);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1077:
                                                                                                                                                                                                                                                §§goto(addr1077);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1049);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1095);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1095);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1103);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1095:
                                                                                                                                                                                                                                    if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §0I§.color = (component << 16) + (component << 8) + component;
                                                                                                                                                                                                                                       addr1125:
                                                                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1125);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1103:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1002);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc12_ || thunderAlpha)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr982);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1002);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr998);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr643);
                                                                                                                                                                                                                  addr688:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr705);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr703);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr691:
                                                                                                                                                                                                         §§goto(addr691);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr712);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr641);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr625);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr601);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr623:
                                                                                                                                                                                          §§goto(addr623);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr626);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr622);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr534);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr641);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr570);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr626);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr688);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr706);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr711);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr568);
                                                                                                                                                            addr120:
                                                                                                                                                            §§goto(addr120);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr344:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr344);
                                                                                                                                                }
                                                                                                                                                addr326:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                addr474:
                                                                                                                                             }
                                                                                                                                             addr475:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                thunderAlpha = §§pop();
                                                                                                                                                §§goto(addr476);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr312);
                                                                                                                                       }
                                                                                                                                       addr313:
                                                                                                                                    }
                                                                                                                                    §§goto(addr388);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr483:
                                                                                                                           }
                                                                                                                           §§goto(addr484);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr217:
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            if(_loc12_ || obj)
                                                                                                            {
                                                                                                               thunderAlpha = §§pop();
                                                                                                               §§goto(addr232);
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                                §§goto(addr188);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    addr458:
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr120);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr473:
                                                            }
                                                            §§goto(addr474);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                continue;
                                             }
                                             §§goto(addr443);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr483);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr458);
                  }
               }
            }
         }
         while(true)
         {
            if(!_loc11_)
            {
               §§goto(addr49);
            }
            §§goto(addr60);
         }
         §§goto(addr88);
      }
      
      private function §2!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               if(this.§`u§ > this.§^!^§)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           §§push(this.§7%§);
                           if(!(_loc1_ && this))
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
   }
}
