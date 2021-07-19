package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §]">§.§;U§;
   
   public class §1f§ extends §+>§
   {
      
      public static const §!!p§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §?j§:Number = 0;
      
      private static const §6"B§:Number = 2;
      
      private static const §'!1§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!!p§ = "ScalingScore";
            loop0:
            while(true)
            {
               SCALE_STEP1_TIME_MS = 300;
               loop1:
               while(true)
               {
                  SCALE_STEP2_TIME_MS = 300;
                  while(true)
                  {
                     SCALE_STEP3_TIME_MS = 300;
                     continue loop1;
                     addr60:
                     if(!(_loc2_ && _loc2_))
                     {
                        §'!1§ = 0;
                        addr67:
                        if(_loc2_ && §1f§)
                        {
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr60);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §6"B§ = 2;
                                    continue loop6;
                                 }
                                 addr72:
                              }
                           }
                           continue loop1;
                        }
                        if(_loc1_)
                        {
                           return;
                           addr41:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §?j§ = 0;
            §§goto(addr72);
         }
         §§goto(addr41);
      }
      
      protected var §%u§:§`y§;
      
      protected var §9!8§:§'!"§;
      
      protected var §'!8§:Number;
      
      protected var §=!^§:int;
      
      protected var §6"&§:Number;
      
      protected var §]"@§:Number;
      
      protected var §6!g§:Number;
      
      public function §1f§(param1:§'!"§, param2:Sprite, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super(param2,param3,param4);
            loop0:
            while(true)
            {
               this.§9!8§ = param1;
               loop1:
               while(true)
               {
                  this.§%u§ = new §`y§(this.§9!8§.texture);
                  while(true)
                  {
                     param2.addChild(this.§%u§);
                     while(_loc8_)
                     {
                        §§push(this.§%u§);
                        loop4:
                        while(true)
                        {
                           §§push(§?j§);
                           addr172:
                           while(true)
                           {
                              §§pop().scaleX = §§pop();
                              continue loop4;
                           }
                        }
                        if(!(_loc7_ && this))
                        {
                           return;
                           addr74:
                        }
                     }
                     continue loop0;
                     loop10:
                     for(; _loc8_ || param1; if(!(_loc8_ || param3))
                     {
                        continue;
                     },addr53:,if(!(_loc7_ && param2))
                     {
                        addr60:
                        if(!(_loc8_ || param3))
                        {
                           continue loop1;
                        }
                        §§goto(addr67);
                     }
                     else
                     {
                        while(_loc8_)
                        {
                           this.§6"&§ = 0;
                           continue loop10;
                           §§goto(addr53);
                        }
                        addr143:
                     },§§goto(addr167))
                     {
                        this.§]"@§ = param5;
                        loop11:
                        for(; _loc8_ || param3; if(!(_loc8_ || param1))
                        {
                           continue;
                        },§§goto(addr109))
                        {
                           this.§6!g§ = param6;
                           loop12:
                           while(true)
                           {
                              §§push(param2);
                              §§push(this.§]"@§);
                              if(_loc8_)
                              {
                                 §§push(§§pop() / §^g§.§5!-§);
                              }
                              §§pop().x = §§pop();
                              while(true)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    continue loop11;
                                 }
                                 §§push(param2);
                                 addr109:
                                 §§push(this.§6!g§);
                                 continue loop12;
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() / §^g§.§5!-§);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc8_ || param2)
                                 {
                                    continue loop10;
                                 }
                              }
                              continue loop11;
                           }
                        }
                        §§goto(addr173);
                     }
                  }
                  while(_loc8_ || param2)
                  {
                     this.§=!^§ = 0;
                     §§goto(addr143);
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(sprite)
            {
               if(_loc2_)
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
            §§push(this.§%u§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%u§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        addr83:
                        while(true)
                        {
                           this.§%u§ = null;
                           addr62:
                           addr64:
                           while(!_loc1_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§9!8§ = null;
                  do
                  {
                     super.dispose();
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(_loc1_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr62);
                  §§goto(addr64);
               }
               return;
               addr52:
            }
            §§goto(addr82);
         }
         §§goto(addr52);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§=!^§ > 2;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            super.update(param1,param2);
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§6"&§);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§6"&§ = §§pop();
               if(_loc5_)
               {
                  while(true)
                  {
                     §§push(this.§=!^§);
                     if(!(_loc6_ && this))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 §§push(this);
                                 §§push(§?j§);
                                 if(!_loc6_)
                                 {
                                    §§push(§6"B§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§?j§);
                                       if(_loc5_ || param2)
                                       {
                                          addr109:
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_ || param2)
                                          {
                                             addr101:
                                             §§push(this.§6"&§);
                                             if(!_loc6_)
                                             {
                                                addr105:
                                                §§push(§§pop() / SCALE_STEP1_TIME_MS);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§pop().§'!8§ = §§pop() + §§pop();
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(this.§'!8§);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§6"B§);
                                                if(_loc5_ || this)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         this.§'!8§ = §6"B§;
                                                         if(_loc5_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue;
                                                            }
                                                            var _loc3_:*;
                                                            §§push((_loc3_ = this).§=!^§);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            if(_loc5_ || param1)
                                                            {
                                                               _loc3_.§=!^§ = _loc4_;
                                                            }
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr169:
                                                               this.§6"&§ = 0;
                                                               if(!_loc5_)
                                                               {
                                                                  addr240:
                                                                  this.§6"&§ = 0;
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     addr414:
                                                                     §§push(this.§%u§);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'!8§);
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§pop().scaleX = §§pop();
                                                                           addr419:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§%u§);
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 §§push(this.§'!8§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr413:
                                                                           §§pop().scaleY = §§pop();
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              sprite.x = this.§]"@§ / §^g§.§5!-§ - this.§%u§.width / 2;
                                                                              loop2:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    sprite.y = this.§6!g§ / §^g§.§5!-§ - this.§%u§.height;
                                                                                    if(!(_loc5_ || param1))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    §§goto(addr419);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr370);
                                                                        }
                                                                     }
                                                                     addr250:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr301:
                                                                     if(this.§'!8§ <= 0)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr414);
                                                                  }
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr213:
                                                            §§push((_loc3_ = this).§=!^§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(_loc5_ || param2)
                                                            {
                                                               _loc3_.§=!^§ = _loc4_;
                                                            }
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§goto(addr240);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr414);
                                                }
                                                §§goto(addr250);
                                             }
                                             else
                                             {
                                                addr199:
                                                §§push(SCALE_STEP2_TIME_MS);
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr213);
                                                }
                                                else
                                                {
                                                   addr257:
                                                   §§push(this);
                                                   §§push(§6"B§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§'!1§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(§6"B§);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr290:
                                                               §§push(this.§6"&§);
                                                               if(!_loc6_)
                                                               {
                                                                  addr296:
                                                                  §§push(§§pop() * (§§pop() / SCALE_STEP3_TIME_MS));
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            addr298:
                                                            §§pop().§'!8§ = §§pop() + §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr298);
                                                }
                                             }
                                             §§goto(addr414);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr169);
                           }
                           else
                           {
                              §§push(this.§=!^§);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              addr254:
                              if(§§pop() == 2)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr257);
                                 }
                                 §§goto(addr339);
                              }
                           }
                           §§goto(addr414);
                        }
                        §§goto(addr254);
                     }
                     break;
                  }
                  §§push(1);
                  if(!_loc6_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(this.§6"&§);
                           if(_loc5_ || param1)
                           {
                              §§goto(addr199);
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr419);
                     }
                     else
                     {
                        §§goto(addr254);
                        §§push(this.§=!^§);
                     }
                     §§goto(addr414);
                  }
                  §§goto(addr254);
               }
               §§goto(addr339);
            }
            addr307:
            §§push((_loc3_ = this).§=!^§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
            }
            _loc4_ = §§pop();
            if(_loc5_ || _loc3_)
            {
               _loc3_.§=!^§ = _loc4_;
            }
            if(!(_loc6_ && param2))
            {
               addr339:
               §§goto(addr414);
            }
            addr370:
            return;
         }
         §§goto(addr414);
      }
   }
}
