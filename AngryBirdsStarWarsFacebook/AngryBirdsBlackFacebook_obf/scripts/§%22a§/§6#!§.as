package §"a§
{
   import §-!_§.§,#Q§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §7P§.§&#=§;
   import §7P§.§'"o§;
   import §7P§.§?"N§;
   import §7P§.§@#P§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import §^#>§.§;x§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6#!§ extends §3!z§
   {
      
      public static const §8#1§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §#"r§:int = 2;
      
      public static const §&!C§:int = 3;
      
      public static const §#"b§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §7!T§:int = 7;
      
      public static const §%"$§:Number = 2000;
      
      public static const §>"f§:Number = 2500;
      
      public static const §+#I§:int = 5;
      
      private static const §#`§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8#1§ = 0;
            loop0:
            while(true)
            {
               LEVEL_STATE_SLINGSHOT = 1;
               while(true)
               {
                  §#"r§ = 2;
                  loop2:
                  while(true)
                  {
                     §&!C§ = 3;
                     loop3:
                     while(true)
                     {
                        §#"b§ = 4;
                        addr125:
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           addr120:
                           while(true)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              addr106:
                              while(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || §6#!§))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr96);
      }
      
      protected var §[F§:int = 0;
      
      protected var §+#B§:Number;
      
      protected var §+"U§:Number = 0;
      
      protected var §9H§:Boolean = false;
      
      protected var §%"J§:Number = 0;
      
      private var §""[§:Number = 0;
      
      private var §-#7§:int = 0;
      
      private var §-"p§:Number = 0;
      
      private var §]#?§:Number = 0;
      
      protected var §&%§:Boolean = true;
      
      protected var §5"9§:§;7§;
      
      protected var §'!5§:Point;
      
      public function §6#!§(param1:§#_§, param2:§+"2§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§5"9§ = new §;7§();
            do
            {
               this.§'!5§ = new Point();
               do
               {
                  super(param1,param2);
               }
               while(_loc3_);
               
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function get §2#F§() : int
      {
         return this.§[F§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               this.§5"9§.§3"Q§(0);
               loop2:
               for(; !(_loc2_ && _loc2_); if(!(_loc1_ || this))
               {
                  continue;
               },§§goto(addr52))
               {
                  this.§-#7§ = 0;
                  loop3:
                  for(; !_loc2_; if(_loc1_ || _loc1_)
                  {
                     §2#G§.objects.setCollisionsEnabled(true);
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr57);
                        addr52:
                        §2#G§.objects.setGroundTextureEnabled(true);
                        if(_loc1_ || _loc2_)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  })
                  {
                     this.§+"U§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§9H§ = false;
                        while(true)
                        {
                           this.§,#A§(§8#1§);
                           addr88:
                           while(!_loc2_)
                           {
                              this.§+#B§ = §%"$§;
                              loop7:
                              while(_loc1_)
                              {
                                 §6"<§(true);
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§[F§ = -1;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §2#G§.update(param1,true);
            do
            {
               this.§2" §(param1);
               do
               {
                  this.§"s§(param1);
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §2" §(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§-#7§ != 0)
            {
               if(_loc2_)
               {
                  §2#G§.camera.adjustManualScale(this.§-#7§ > 0,param1 * §#`§);
                  addr34:
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2#G§.clearLevel();
            do
            {
               removeEventListeners();
               do
               {
                  this.§[F§ = -1;
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §?[§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§2#G§.camera.mCurrentCameraSliderLocation >= §,#Q§.§>!2§)
            {
               while(!§2#G§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  addr56:
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr55);
                     }
                     else
                     {
                        addr74:
                     }
                     return false;
                  }
               }
               §§push(true);
               if(!_loc1_)
               {
                  addr55:
                  return false;
               }
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr74);
            }
            §§goto(addr74);
         }
         §§goto(addr56);
      }
      
      public function §,"P§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,#Q§ = §2#G§.camera;
         if(_loc4_)
         {
            §§push(_loc2_.§]U§);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
               while(§§pop() > §§pop())
               {
               }
               addr24:
               return;
               loop3:
               while(true)
               {
                  §§push(_loc2_.§]U§);
                  if(_loc3_ && _loc3_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!(_loc4_ || param1))
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(this.§?[§())
                           {
                              loop5:
                              while(true)
                              {
                                 _loc2_.§]U§ = -1;
                                 while(§2#G§.slingshot.birdsAvailable)
                                 {
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       break loop4;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 addr28:
                              }
                           }
                           else
                           {
                              _loc2_.§]U§ = §,#Q§.§>"<§ / 2;
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.§]U§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§]U§ = §§pop();
                              continue loop3;
                           }
                           addr130:
                        }
                        if(!(_loc3_ && this))
                        {
                           _loc2_.§5#$§();
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr24);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr130);
      }
      
      public function §,#A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§-#I§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(param1);
                           loop8:
                           while(true)
                           {
                              §§push(§8#1§);
                              loop9:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_SLINGSHOT);
                                    loop11:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       while(_loc4_)
                                       {
                                          §§push(§#"r§);
                                          loop13:
                                          for(; !_loc3_; loop15:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      break;
                                                   }
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§#"b§);
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY2_END);
                                                               addr281:
                                                               while(true)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  §§push(param1);
                                                                  continue loop18;
                                                               }
                                                            }
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               this.playWinningSoundVictory2();
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr338);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     §§goto(addr102);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop15;
                                                            }
                                                            §§goto(addr325);
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr281);
                                                         addr118:
                                                         §§push(§7!T§);
                                                         if(!(_loc4_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§goto(addr127);
                                                         }
                                                         §§goto(addr29);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                             continue loop13;
                                          },§§goto(addr354))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§%"J§ = 5000;
                                                }
                                                §2#G§.particles.moveTrailsNewToOld();
                                                addr392:
                                                if(_loc4_ || this)
                                                {
                                                   loop25:
                                                   while(true)
                                                   {
                                                      this.§[F§ = param1;
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr148:
                                                                  while(true)
                                                                  {
                                                                     this.playWinningSoundVictory1();
                                                                  }
                                                                  addr195:
                                                                  §2#G§.slingshot.makeBirdsJumpForJoy();
                                                               }
                                                            }
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop25;
                                                               }
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §2#G§.camera.goToBirdView();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr195);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 addr413:
                                                                                 addr443:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop28;
                                                                        addr193:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr326:
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr410:
                                                                        continue loop25;
                                                                        addr410:
                                                                     }
                                                                     this.§%"J§ = 2000;
                                                                     this.§""[§ = §+#I§;
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9#F§);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop29;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr413);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || param2))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §2#G§.camera.goToBirdView();
                                                                                          addr261:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ && _loc3_)
                                                                                                   {
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   §2#G§.camera.goToCastleView();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                }
                                                                                                addr354:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr258:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             break loop32;
                                                                                          }
                                                                                          continue loop32;
                                                                                       }
                                                                                       addr268:
                                                                                    }
                                                                                 }
                                                                                 addr256:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                           addr248:
                                                                        }
                                                                     }
                                                                     addr244:
                                                                  }
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §2#G§.camera.goToCastleView();
                                                                     continue loop25;
                                                                     addr298:
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_ || param2)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     this.playFailSound();
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§%"J§ = 1200;
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §2#G§.camera.goToCastleView();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop35;
                                                                                          }
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             §2#G§.objects.makePigsSmile(5);
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop34;
                                                                              }
                                                                              §§goto(addr256);
                                                                           }
                                                                           §§goto(addr298);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    this.§%"J§ = 1200;
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr293:
                                                                              while(true)
                                                                              {
                                                                                 this.§%"J§ = 1200;
                                                                              }
                                                                           }
                                                                           §§goto(addr364);
                                                                           addr232:
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr333);
                                                            addr127:
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   return;
                                                   addr29:
                                                }
                                                §§goto(addr29);
                                                addr402:
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   §§push(§&!C§);
                                                   continue loop13;
                                                }
                                                addr338:
                                             }
                                          }
                                          continue loop11;
                                          if(!(_loc4_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr118);
                                       }
                                       continue loop10;
                                    }
                                    §2#G§.camera.goToBirdView();
                                    §§goto(addr402);
                                 }
                              }
                              this.§%"J§ = 2000;
                              §§goto(addr410);
                           }
                        }
                     }
                     return;
                     addr423:
                  }
                  §§goto(addr443);
               }
            }
         }
         §§goto(addr258);
      }
      
      protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §?!r§.§0"#§();
         }
         do
         {
            §?!r§.§"#_§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         while(_loc1_);
         
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?!r§.§0"#§();
            do
            {
               §?!r§.§"#_§("LevelFailedPigs1");
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function §3x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%"J§ = 2000;
            loop0:
            while(true)
            {
               this.§9H§ = false;
               while(true)
               {
                  this.§+"U§ = 2000;
                  while(_loc2_)
                  {
                     continue loop0;
                     this.§,#A§(§6#!§.LEVEL_STATE_SLINGSHOT,true);
                     if(_loc2_)
                     {
                        return;
                        addr43:
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §import§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§+"U§ = Math.max(this.§+"U§,param1);
         }
      }
      
      public function §0#Y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§2#G§.slingshot.mSlingShotState == §;x§.§2"R§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr50:
                     §§pop();
                     return !§2#G§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §"s§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:§'"o§ = null;
         var _loc5_:* = false;
         var _loc6_:§?"N§ = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(this);
            §§push(this.§+#B§);
            if(_loc8_ || this)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§+#B§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§9H§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§+"U§);
                        if(_loc8_ || _loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§+"U§ = §§pop();
                        if(_loc8_)
                        {
                           §§push(this.§+"U§);
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       this.§+#B§ = 0;
                                       if(_loc8_)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§+#B§);
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             if(!_loc7_)
                                             {
                                                §§push(0);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(this.§-#I§(false));
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr442:
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        loop8:
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(-1);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§+#B§ = §%"$§;
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       §§push(Boolean(§2#G§.objects.isWorldAtSleep()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr417:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§9H§);
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop19:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§+"U§);
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       loop20:
                                                                                                                                       while(_loc8_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(!§2#G§.objects.isPigsAlive());
                                                                                                                                                if(_loc8_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr118:
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1121);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1182);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1139);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§0#Y§());
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr544:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr552);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1071);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr643);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop9;
                                                                                                                                                                     addr60:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.isSpecialUsed());
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr937);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop1;
                                                                                                                                                                        addr45:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr552:
                                                                                                                                                                     }
                                                                                                                                                                     addr552:
                                                                                                                                                                     if(_loc4_ = this.§+!f§())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.§7!X§);
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr668:
                                                                                                                                                                                          if(_loc4_.§3! § <= 3000)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr643:
                                                                                                                                                                                             §§push(_loc4_.§7!X§);
                                                                                                                                                                                             if(_loc7_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr668);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr651:
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§+#B§ = §%"$§;
                                                                                                                                                                                                   addr656:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§><§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                   addr672:
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr671:
                                                                                                                                                                                                      _loc2_ = int(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                      addr669:
                                                                                                                                                                                                      §§goto(addr672);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr673:
                                                                                                                                                                                             §§push(this.§-#I§(false));
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §2#G§.gameOver(_loc2_);
                                                                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr691:
                                                                                                                                                                                                         break loop8;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1208);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1186);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1086);
                                                                                                                                                                                             addr595:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr669);
                                                                                                                                                                                          addr579:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr656);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr668);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr601:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§7!T§);
                                                                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr627:
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                                                                   addr630:
                                                                                                                                                                                                   if(_loc8_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§><§(§7!T§);
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr630);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr673);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr656);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr669);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr671);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr627);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr651);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr630);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr673);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr579);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.isGameOverBlocked());
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr643);
                                                                                                                                                                     §§goto(addr1233);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break loop18;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr933);
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr387:
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr389:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§+"U§);
                                                                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(6000);
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        break loop3;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1188);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr388:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr325:
                                                                                                                                                               loop23:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(!(_loc7_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!§2#G§.objects.isPigsAlive());
                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr293:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§9H§);
                                                                                                                                                                                    while(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§0#Y§());
                                                                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            if(!(_loc7_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr230:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr232:
                                                                                                                                                                                                                  this.§+"U§ = 15000;
                                                                                                                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§9H§ = true;
                                                                                                                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr134);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr993);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr736);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr134);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr810);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr544);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1023);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr230);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop23;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr388);
                                                                                                                                                                                          §§goto(addr1188);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr933);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                    addr248:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§+"U§ = 6000;
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                       }
                                                                                                                                                                                       this.§9H§ = true;
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr134:
                                                                                                                                                                                          §§goto(addr643);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1139);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr993);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1123);
                                                                                                                                                                                 §§goto(addr933);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1116);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr691);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr937);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr293);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr936);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr912);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1115);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr248);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§9H§);
                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                addr726:
                                                                                                                                                addr726:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr986:
                                                                                                                                                         loop30:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop31:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§2#G§.camera.isOnCastleView());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        addr933:
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr912:
                                                                                                                                                                              addr936:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr937:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(§2#G§.camera.mCurrentAction == §,#Q§.§>"?§);
                                                                                                                                                                                 if(_loc7_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr937);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 addr938:
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr913:
                                                                                                                                                                                 this.§,#A§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1233:
                                                                                                                                                                                    return;
                                                                                                                                                                                    addr1228:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1233);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr1064:
                                                                                                                                                                                       loop36:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§""[§);
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1188:
                                                                                                                                                                                             if(§§pop() <= 0)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc7_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§2#G§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1208:
                                                                                                                                                                                                         this.§%"J§ = 1000;
                                                                                                                                                                                                         if(_loc8_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1228);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§,#A§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1233);
                                                                                                                                                                                             addr1071:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1148:
                                                                                                                                                                                             §§push(this.§%"J§);
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§%"J§ = 0;
                                                                                                                                                                                                         addr1139:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1136:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop41:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§[F§);
                                                                                                                                                                                                      addr1121:
                                                                                                                                                                                                      loop42:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§&!C§);
                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                         while(§§pop() != §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§[F§);
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§#"b§);
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1023:
                                                                                                                                                                                                                     §§push(this.§%"J§);
                                                                                                                                                                                                                     continue loop38;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§[F§);
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§8#1§);
                                                                                                                                                                                                                     loop45:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc7_ && this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§[F§);
                                                                                                                                                                                                                           if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§#"r§);
                                                                                                                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1170);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1208);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1182:
                                                                                                                                                                                                                                    §§push(this.§[F§);
                                                                                                                                                                                                                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1208);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1154:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1186);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr852:
                                                                                                                                                                                                                              §§push(this.§%"J§);
                                                                                                                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr871:
                                                                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc8_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§,#A§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr945:
                                                                                                                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1126:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop19;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr938);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr738:
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1000:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       addr1001:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop47:
                                                                                                                                                                                                                                          while(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§9#F§);
                                                                                                                                                                                                                                             loop48:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc7_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      this.§,#A§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                                      while(!_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop43;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop48;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1233);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1003:
                                                                                                                                                                                                                                          this.§%"J§ = 2000;
                                                                                                                                                                                                                                          if(!(_loc7_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§+#B§ = 0;
                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr993:
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§""[§);
                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§""[§ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr986);
                                                                                                                                                                                                                                                addr993:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1208);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1186:
                                                                                                                                                                                                                                             §§goto(addr1188);
                                                                                                                                                                                                                                             §§push(this.§%"J§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1208);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr871);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1233);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1188);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§2#G§.camera.mCurrentAction == §,#Q§.§>"?§);
                                                                                                                                                                                                                              addr1079:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1086:
                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop52:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       addr1115:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1116);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1114:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1088:
                                                                                                                                                                                                                                    while(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc7_ && _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§,#A§(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop2;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1208);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1136);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1170:
                                                                                                                                                                                                                                    break loop45;
                                                                                                                                                                                                                                    addr1170:
                                                                                                                                                                                                                                    if(_loc6_ = §2#G§.levelObjects.activeObject as §?"N§)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop45;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1233);
                                                                                                                                                                                                                        §§goto(addr1208);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1233);
                                                                                                                                                                                                                     addr833:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1182);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1123:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §2#G§.updatePigAnimations(param1);
                                                                                                                                                                                                            §§goto(addr1126);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1188);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1148:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1188);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1001);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1233);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1079);
                                                                                                                                                                  }
                                                                                                                                                                  addr1058:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1060:
                                                                                                                                                                        §§goto(addr1061);
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1088);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr986:
                                                                                                                                                      }
                                                                                                                                                      addr731:
                                                                                                                                                      this.§,#A§(§&!C§);
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         addr736:
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr738);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr1149:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1170);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1233);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1149);
                                                                                                                                             }
                                                                                                                                             §§goto(addr986);
                                                                                                                                             §§goto(addr933);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1055);
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1188);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr1114);
                                                                                                                           §§push(!§2#G§.camera.isOnCastleView());
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  §§goto(addr1058);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr937);
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break loop2;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr852);
                                                                        }
                                                                        §§push(this);
                                                                        §§push(this.§%"J§);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() - param1);
                                                                        }
                                                                        §§pop().§%"J§ = §§pop();
                                                                        §§goto(addr1148);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1233);
                                                            }
                                                            §§goto(addr717);
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr912);
                                                   }
                                                }
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                          addr454:
                                          §§goto(addr1000);
                                          §§push(0);
                                          addr454:
                                       }
                                       §§goto(addr913);
                                    }
                                    §§goto(addr731);
                                 }
                                 §§goto(addr454);
                              }
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(Boolean(§2#G§.objects.hasBirds()));
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§goto(addr363);
                                 }
                                 §§goto(addr1058);
                              }
                              §§goto(addr1064);
                           }
                           §2#G§.updatePigAnimations(param1);
                           §§goto(addr945);
                        }
                        break;
                     }
                     §§goto(addr1014);
                  }
                  §§goto(addr454);
               }
            }
         }
         §§goto(addr977);
      }
      
      protected function isSpecialUsed() : Boolean
      {
         return this.§9#F§;
      }
      
      protected function get §9#F§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§+!f§())
            {
               if(_loc1_)
               {
                  addr48:
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr48);
      }
      
      protected function get isAllowedToWin() : Boolean
      {
         return true;
      }
      
      public function §+!f§() : §'"o§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'"o§ = null;
         var _loc1_:* = int(§2#G§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §'"o§;
            if(_loc4_)
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
               §§push(_loc1_);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
            }
         }
         return null;
      }
      
      public function isGameOverBlocked() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@#P§ = null;
         var _loc1_:* = int(§2#G§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §@#P§;
            if(!_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     return true;
                  }
               }
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
            }
         }
         return false;
      }
      
      protected function §><§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§9H§)
            {
               while(true)
               {
                  this.§9H§ = true;
                  addr133:
                  while(true)
                  {
                  }
               }
               addr130:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §2#G§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  loop4:
                  while(§§pop() >= §§pop())
                  {
                     loop5:
                     while(!§2#G§.slingshot.mDragging)
                     {
                        loop6:
                        while(§2#G§.objects.isWorldAtSleep())
                        {
                           if(_loc3_)
                           {
                              if(_loc4_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break loop5;
                              }
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 this.§+"U§ = Math.min(this.§+"U§,3500);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                                 addr126:
                              }
                           }
                           while(true)
                           {
                              break loop6;
                           }
                        }
                        while(true)
                        {
                           §§push(this.§+"U§);
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(!(_loc3_ || param1))
                                       {
                                          break loop4;
                                       }
                                       this.§,#A§(param1,param2);
                                    }
                                    break;
                                 }
                                 break;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     return;
                  }
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §-#I§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§[F§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§[F§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§7!T§);
                                             addr160:
                                             addr195:
                                             addr125:
                                             while(_loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr196:
                                                addr224:
                                                while(_loc3_ || param1)
                                                {
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr225:
                                                   while(true)
                                                   {
                                                      §§push(this.§[F§);
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             loop26:
                                             while(true)
                                             {
                                                §§push(this.§[F§);
                                                if(_loc2_)
                                                {
                                                   continue loop13;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop0;
                                                }
                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                if(_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc3_ || param1)
                                                   {
                                                      addr50:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr58:
                                                         §§push(!§§pop());
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr67:
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop17:
                                                                        while(_loc3_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop19:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr76);
                                                                                                      }
                                                                                                      addr99:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc2_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§%"J§ <= 0);
                                                                                                               addr85:
                                                                                                               addr154:
                                                                                                               while(!(_loc2_ && this))
                                                                                                               {
                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§goto(addr99);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop23;
                                                                                                                  §§goto(addr85);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr58);
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                         addr120:
                                                                                                      }
                                                                                                      §§goto(addr76);
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop11;
                                                                                                §§goto(addr67);
                                                                                             }
                                                                                             continue loop13;
                                                                                             addr143:
                                                                                          }
                                                                                          §§goto(addr196);
                                                                                       }
                                                                                       §§goto(addr154);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 continue loop12;
                                                                                 §§goto(addr50);
                                                                              }
                                                                              addr173:
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr164:
                                                                  }
                                                                  addr76:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr143);
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr58);
                                                }
                                                else
                                                {
                                                   §§goto(addr160);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr164);
                                 }
                              }
                           }
                        }
                        §§goto(addr224);
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §2#Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[F§);
            if(_loc2_ || this)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop();
                           addr72:
                           return this.§[F§ == §7!T§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
               {
                  addr44:
                  this.§8"a§(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §8"a§(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§&%§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr258:
                           while(true)
                           {
                              §§push(!§2#G§.mReadyToRun);
                              addr227:
                              while(!_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr258);
                           }
                           else
                           {
                              loop5:
                              while(true)
                              {
                                 addr212:
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§[F§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§#"b§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop10:
                                          while(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr222:
                                                      while(true)
                                                      {
                                                         §§push(this.§[F§);
                                                         addr194:
                                                         while(true)
                                                         {
                                                            §§push(§&!C§);
                                                            addr195:
                                                            while(_loc3_ || param1)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            addr70:
                                                            continue loop9;
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr221:
                                                }
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop18:
                                                      while(_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr211:
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[F§);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(LEVEL_STATE_SLINGSHOT);
                                                                     addr158:
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        while(!_loc4_)
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop27:
                                                                                       while(§§pop())
                                                                                       {
                                                                                          for(; §2#G§.isPlayingReplay(); if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break loop27;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop20;
                                                                                          })
                                                                                          {
                                                                                             §2#G§.changeReplaySpeed(param1);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(_loc4_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                break loop27;
                                                                                             }
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          if(!(_loc3_ || this))
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §2#G§.camera.adjustManualScale(param1,param2 == 0 ? Number(§,#Q§.§#"E§) : Number(param2));
                                                                                          §§goto(addr146);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr111:
                                                                                    }
                                                                                    continue loop19;
                                                                                    return;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop18;
                                                                              addr170:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr212);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr258);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,!V§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-#7§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc5_)
         {
            if(!this.§&%§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(_loc6_)
         {
            dispatchEvent(_loc3_);
            loop0:
            for(; !_loc3_.isDefaultPrevented(); if(!(_loc6_ || this))
            {
               continue;
            },§2#G§.resetReplaySpeed(),if(_loc6_ || param2)
            {
               if(_loc6_ || param2)
               {
                  if(!_loc5_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr268);
                     }
                     return;
                  }
                  §§goto(addr222);
               }
               §§goto(addr132);
            },§§goto(addr72))
            {
               loop1:
               while(true)
               {
                  §`"+§.§^U§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§-#I§(false));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(§2#G§.isPlayingReplay())
                           {
                              loop5:
                              while(true)
                              {
                                 §2#G§.camera.startDragging(param1,param2);
                                 addr72:
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break loop4;
                                                }
                                                if(_loc6_ || param2)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop4;
                                             }
                                             addr255:
                                             §§push(§?"N§(§2#G§.levelObjects.activeObject).specialPowerUsed);
                                             loop11:
                                             for(; !(_loc5_ && param1); while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ && param1)
                                                {
                                                   break;
                                                }
                                                addr179:
                                                if(!(_loc5_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               return;
                                                            }
                                                            break loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         addr155:
                                                         if(_loc5_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            §§goto(addr274);
                                                         }
                                                         this.§,#A§(LEVEL_STATE_SLINGSHOT);
                                                         if(!_loc5_)
                                                         {
                                                            addr109:
                                                            return;
                                                            addr134:
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      addr204:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§2#G§.slingshot.canStartDragging(this.§'!5§))
                                                            {
                                                               §2#G§.camera.startDragging(param1,param2);
                                                               break loop6;
                                                            }
                                                            §2#G§.slingshot.startDragging();
                                                            §§goto(addr155);
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr109);
                                                         addr135:
                                                      }
                                                      §§goto(addr240);
                                                      §§goto(addr179);
                                                   }
                                                   addr239:
                                                }
                                                §§goto(addr135);
                                             })
                                             {
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   §2#G§.activateSpecialPower(this.§'!5§.x,this.§'!5§.y);
                                                   while(!_loc5_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§?"N§(§2#G§.levelObjects.activeObject).canActivateSpecialPower);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   break loop11;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr152);
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 if(!(_loc6_ || this))
                                 {
                                    §§goto(addr155);
                                 }
                                 §§goto(addr109);
                              }
                           }
                           this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
                           §§goto(addr239);
                           §§push(§2#G§.levelObjects.activeObject is §?"N§);
                           addr268:
                        }
                        addr274:
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr134);
      }
      
      protected function §^#,§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = §2#G§.screenToBox2D(param1,param2,null);
         var _loc4_:§&#=§;
         if(_loc4_ = §2#G§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            if(_loc6_)
            {
               §2#G§.objects.removeObject(_loc4_,false);
            }
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§&%§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §`"+§.§<"o§();
                     loop2:
                     while(true)
                     {
                        if(this.§[F§ == §8#1§)
                        {
                           while(true)
                           {
                              this.§,#A§(LEVEL_STATE_SLINGSHOT);
                              addr223:
                              while(_loc3_)
                              {
                              }
                              continue loop1;
                              addr83:
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              loop20:
                              while(true)
                              {
                                 §2#G§.camera.stopDragging();
                                 if(_loc3_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          loop21:
                                          for(; !_loc4_; while(true)
                                          {
                                             §§pop();
                                             continue loop21;
                                          })
                                          {
                                             addr126:
                                             if(!(_loc4_ && this))
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(!isNaN(param2));
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                if(!§2#G§.slingshot.canShootTheBird)
                                                {
                                                   §2#G§.slingshot.cancelDragging();
                                                   while(true)
                                                   {
                                                      addr91:
                                                      §§goto(addr19);
                                                   }
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                          while(_loc3_ || _loc3_)
                                          {
                                             this.§,#A§(§#"r§);
                                             §§goto(addr172);
                                          }
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          addr38:
                                       }
                                       addr19:
                                       loop15:
                                       while(§2#G§.camera.mDragging)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc4_ && param1)
                                                {
                                                   break;
                                                }
                                                §§push(!isNaN(param1));
                                                if(!_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop21;
                                                   }
                                                   addr58:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop9;
                                                         continue loop15;
                                                         addr60:
                                                      }
                                                      continue loop20;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop21;
                                             }
                                             addr206:
                                             while(true)
                                             {
                                                this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
                                                addr214:
                                                while(true)
                                                {
                                                   §2#G§.slingshot.setNewCoordinatesForRubber(this.§'!5§.x,this.§'!5§.y,false);
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       return;
                                    }
                                    §§goto(addr60);
                                 }
                                 §§goto(addr81);
                              }
                           }
                        }
                        while(true)
                        {
                           if(§2#G§.slingshot.mDragging)
                           {
                              §§goto(addr206);
                           }
                           §§goto(addr91);
                        }
                     }
                  }
               }
               §§goto(addr243);
            }
         }
         §§goto(addr38);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§&%§)
            {
               while(true)
               {
                  if(!§2#G§.slingshot.mDragging)
                  {
                     if(§2#G§.camera.mDragging)
                     {
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(!(_loc3_ || param1))
                              {
                                 §§goto(addr131);
                              }
                              §2#G§.camera.dragToNewPoint(param1,param2);
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr103:
                                    while(true)
                                    {
                                    }
                                    addr103:
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §2#G§.slingshot.setNewCoordinatesForRubber(this.§'!5§.x,this.§'!5§.y,false);
                                 §§goto(addr103);
                              }
                              addr127:
                           }
                           §§goto(addr103);
                           addr34:
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           if(!(_loc3_ || param1))
                           {
                              while(true)
                              {
                                 this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
                                 §§goto(addr127);
                              }
                              addr109:
                           }
                           return;
                           addr48:
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§-"p§ = param1;
                        while(!_loc4_)
                        {
                           this.§]#?§ = param2;
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr109);
               }
            }
            addr131:
            return;
         }
         §§goto(addr103);
      }
      
      public function §'#"§() : Point
      {
         return new Point(this.§-"p§,this.§]#?§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5"9§.§3"Q§(this.§5"9§.getValue() + param1);
            while(true)
            {
               this.§import§(§>"f§);
            }
            addr88:
         }
         for(; this.§[F§ == §#"b§; do
         {
            this.§""[§ = §+#I§;
         }
         while(!(_loc2_ || _loc3_));
         ,if(_loc2_ || param1)
         {
            break;
         })
         {
            if(_loc3_)
            {
               continue;
            }
            if(!_loc3_)
            {
               this.§%"J§ = 2000;
               continue;
            }
            §§goto(addr88);
         }
      }
      
      override public function getScore(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() > 1)
               {
                  if(_loc3_ || param1)
                  {
                     return Math.floor(this.§5"9§.getValue() / param1) * param1;
                     addr51:
                  }
               }
               return this.§5"9§.getValue();
            }
         }
         §§goto(addr51);
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§9#F§)
            {
               if(_loc3_ || _loc1_)
               {
                  return 0;
               }
            }
         }
         var _loc1_:Number = §+!b§.getLevelForId(§+!b§.currentLevel).getEagleScore(§2#G§.levelItemManager,§2#G§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&%§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§&%§ = param1;
         }
      }
      
      public function §9#^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§,#A§(§7!T§,true);
         }
      }
      
      public function §`#$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(§2#G§.slingshot.updateScoreForRemainingBirds())
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            this.§,#A§(LEVEL_STATE_VICTORY2_END,true);
         }
      }
   }
}
