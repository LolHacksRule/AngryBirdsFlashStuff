package §`!r§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§8!W§;
   import §7P§.§;$§;
   import §^#>§.§#_§;
   
   public class §&#I§ extends §!!H§
   {
      
      public static const §+"§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §&!E§:Number = 0;
      
      private static const §,!v§:Number = 2;
      
      private static const §5!§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+"§ = "ScalingScore";
            while(true)
            {
               SCALE_STEP1_TIME_MS = 300;
               loop1:
               while(_loc1_)
               {
                  SCALE_STEP2_TIME_MS = 300;
                  loop2:
                  while(true)
                  {
                     SCALE_STEP3_TIME_MS = 300;
                     while(true)
                     {
                        §&!E§ = 0;
                        loop5:
                        while(_loc1_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              §5!§ = 0;
                              if(!(_loc2_ && §&#I§))
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §,!v§ = 2;
                                       continue loop5;
                                    }
                                    addr67:
                                 }
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      protected var §"v§:§#"t§;
      
      protected var §]!g§:§8!W§;
      
      protected var §[G§:Number;
      
      protected var §0"c§:int;
      
      protected var §[!W§:Number;
      
      protected var §=X§:Number;
      
      protected var §?#§:Number;
      
      public function §&#I§(param1:§8!W§, param2:Sprite, param3:b2World, param4:§"t§, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param2,param3,param4);
            while(true)
            {
               this.§]!g§ = param1;
               while(true)
               {
                  this.§"v§ = new §#"t§(this.§]!g§.texture);
                  addr189:
                  while(true)
                  {
                     param2.addChild(this.§"v§);
                  }
                  addr134:
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  this.§[!W§ = 0;
                  loop10:
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        addr113:
                        if(_loc8_ && param3)
                        {
                           break;
                        }
                        this.§=X§ = param5;
                        loop11:
                        while(true)
                        {
                           this.§?#§ = param6;
                           addr70:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 continue loop10;
                              }
                              continue loop11;
                           }
                           continue loop10;
                        }
                     }
                     loop8:
                     for(; _loc7_; continue loop10)
                     {
                        this.§0"c§ = 0;
                        while(true)
                        {
                           if(!(_loc8_ && this))
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§goto(addr134);
                           }
                           addr168:
                           addr40:
                           while(true)
                           {
                              this.§[G§ = §&!E§;
                              continue loop8;
                           }
                           if(_loc7_ || param2)
                           {
                              return;
                           }
                        }
                        §§goto(addr189);
                     }
                     addr174:
                     addr172:
                     loop6:
                     while(true)
                     {
                        §§push(this.§"v§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§&!E§);
                           if(_loc7_ || this)
                           {
                              §§pop().scaleY = §§pop();
                              §§goto(addr168);
                           }
                           while(true)
                           {
                              §§pop().scaleX = §§pop();
                              continue loop6;
                           }
                           addr173:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr173);
                        §§goto(addr174);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr172);
                     §§goto(addr113);
                  }
               }
               if(!(_loc7_ || param3))
               {
                  continue;
               }
               §§push(param2);
               §§push(this.§=X§);
               if(_loc7_ || param3)
               {
                  §§push(§§pop() / §#_§.§8]§);
               }
               §§pop().x = §§pop();
               while(_loc7_)
               {
                  §§push(param2);
                  §§push(this.§?#§);
                  if(!(_loc8_ && param2))
                  {
                     §§push(§§pop() / §#_§.§8]§);
                  }
                  §§pop().y = §§pop();
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr180);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(sprite)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr48:
                  sprite.visible = false;
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§"v§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"v§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        addr83:
                        loop5:
                        while(true)
                        {
                           this.§"v§ = null;
                           addr62:
                           addr64:
                           while(!_loc1_)
                           {
                              continue loop5;
                           }
                        }
                     }
                     addr43:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     return;
                     addr50:
                  }
               }
               while(true)
               {
                  this.§]!g§ = null;
                  while(_loc1_)
                  {
                     super.dispose();
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr62);
                  §§goto(addr64);
               }
               §§goto(addr50);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§0"c§ > 2;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super.update(param1,param2);
            if(!_loc6_)
            {
               §§push(this);
               §§push(this.§[!W§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§[!W§ = §§pop();
               if(_loc5_ || _loc3_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§0"c§);
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(this);
                                 §§push(§&!E§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§,!v§);
                                    if(!_loc6_)
                                    {
                                       §§push(§&!E§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr98:
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_)
                                          {
                                             §§push(this.§[!W§);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() / SCALE_STEP1_TIME_MS);
                                             }
                                          }
                                          §§pop().§[G§ = §§pop() + §§pop();
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§[G§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§,!v§);
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            this.§[G§ = §,!v§;
                                                            if(!_loc5_)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop0;
                                                         }
                                                         var _loc3_:*;
                                                         §§push((_loc3_ = this).§0"c§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(_loc5_ || param2)
                                                         {
                                                            _loc3_.§0"c§ = _loc4_;
                                                         }
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            this.§[!W§ = 0;
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr245:
                                                            addr414:
                                                            addr245:
                                                            §§push(this.§"v§);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§[G§);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§pop().scaleX = §§pop();
                                                                  addr419:
                                                                  addr395:
                                                                  addr396:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"v§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this.§[G§);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§pop().scaleY = §§pop();
                                                                  addr413:
                                                                  while(_loc6_ && param2)
                                                                  {
                                                                     §§goto(addr419);
                                                                     §§goto(addr395);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     sprite.x = this.§=X§ / §#_§.§8]§ - this.§"v§.width / 2;
                                                                     loop2:
                                                                     while(!(_loc6_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           sprite.y = this.§?#§ / §#_§.§8]§ - this.§"v§.height;
                                                                           if(_loc5_)
                                                                           {
                                                                              return;
                                                                              addr358:
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                               }
                                                            }
                                                            addr245:
                                                         }
                                                         else
                                                         {
                                                            addr198:
                                                            §§push((_loc3_ = this).§0"c§);
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               _loc3_.§0"c§ = _loc4_;
                                                            }
                                                            if(_loc5_ || this)
                                                            {
                                                               this.§[!W§ = 0;
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      break;
                                                   }
                                                   addr195:
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                }
                                                else
                                                {
                                                   addr194:
                                                   §§push(SCALE_STEP2_TIME_MS);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr414);
                                             addr102:
                                          }
                                          §§goto(addr358);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 §§goto(addr98);
                              }
                              else
                              {
                                 addr185:
                                 §§push(this.§[!W§);
                                 if(!(_loc5_ || this))
                                 {
                                    addr308:
                                    if(§§pop() <= 0)
                                    {
                                       if(_loc5_)
                                       {
                                          addr312:
                                          §§push((_loc3_ = this).§0"c§);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc4_ = §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             _loc3_.§0"c§ = _loc4_;
                                          }
                                          if(!_loc6_)
                                          {
                                             §§goto(addr414);
                                          }
                                          §§goto(addr380);
                                       }
                                       §§goto(addr413);
                                    }
                                 }
                                 §§goto(addr414);
                              }
                           }
                           else
                           {
                              §§push(this.§0"c§);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              addr249:
                              if(§§pop() == 2)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    addr257:
                                    §§push(this);
                                    §§push(§,!v§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§5!§);
                                       if(!_loc6_)
                                       {
                                          §§push(§,!v§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr297:
                                                §§push(this.§[!W§);
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr294:
                                                   §§push(§§pop() / SCALE_STEP3_TIME_MS);
                                                }
                                                §§pop().§[G§ = §§pop() + §§pop() * §§pop();
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr306:
                                                   §§goto(addr308);
                                                   §§push(this.§[G§);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr294);
                                       }
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr306);
                              }
                           }
                           §§goto(addr414);
                        }
                        §§goto(addr249);
                     }
                     break;
                  }
                  §§push(1);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           §§goto(addr185);
                        }
                        §§goto(addr245);
                     }
                     else
                     {
                        §§goto(addr249);
                        §§push(this.§0"c§);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr249);
               }
               §§goto(addr257);
            }
            §§goto(addr312);
         }
         §§goto(addr102);
      }
   }
}
