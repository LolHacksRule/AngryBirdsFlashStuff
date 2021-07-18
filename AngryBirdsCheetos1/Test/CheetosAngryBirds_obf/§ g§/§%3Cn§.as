package § g§
{
   import §!V§.§!!i§;
   import §&!8§.§'E§;
   import §&!8§.§['§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §>^§.§;!P§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<n§ extends §"!X§
   {
      
      public static const §3-§:int = 0;
      
      public static const §>!V§:int = 1;
      
      public static const §7!O§:int = 2;
      
      public static const §!g§:int = 3;
      
      public static const §@!-§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §="§:int = 7;
      
      protected static const §0!<§:Number = 0.001;
      
      public static const §0!@§:Number = 2000;
      
      public static const §5'§:Number = 2500;
      
      public static const §<!W§:int = 5;
      
      private static var §!!$§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §3-§ = 0;
            while(true)
            {
               §>!V§ = 1;
               loop1:
               for(; _loc2_ || _loc1_; if(!(_loc2_ || _loc2_))
               {
                  continue;
               },§§push(§§findproperty(§0!<§)),§§push(§[V§.§=<§),if(!_loc1_)
               {
                  §§push(§§pop() / 100);
               },§§pop().§0!<§ = §§pop(),§§goto(addr90))
               {
                  §7!O§ = 2;
                  loop2:
                  while(true)
                  {
                     §!g§ = 3;
                     while(true)
                     {
                        §@!-§ = 4;
                        addr138:
                        addr114:
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           continue loop2;
                        }
                        while(!(_loc1_ && §<n§))
                        {
                           §="§ = 7;
                           while(!(_loc1_ && _loc1_))
                           {
                              continue loop1;
                              addr51:
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!(_loc2_ || §<n§))
                              {
                                 continue loop2;
                              }
                              §<!W§ = 5;
                              addr65:
                              if(_loc1_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       addr44:
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§goto(addr51);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §0!@§ = 2000;
                                             §§goto(addr44);
                                          }
                                          addr90:
                                       }
                                    }
                                    while(true)
                                    {
                                       §5'§ = 2500;
                                       continue loop10;
                                    }
                                 }
                                 continue loop2;
                              }
                              if(_loc2_)
                              {
                                 return;
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public var mLevelState:int = 0;
      
      protected var §1m§:int = 0;
      
      public var §6T§:Number;
      
      protected var §0!'§:Number = 0;
      
      protected var §=^§:Boolean = false;
      
      private var §+!B§:Number = 0;
      
      public var §7,§:Number = 0;
      
      protected var §#3§:Number = 0;
      
      protected var §3!4§:Number = 0;
      
      protected var §%+§:Boolean = true;
      
      protected var §=o§:§!!i§;
      
      public function §<n§(param1:§ p§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=o§ = new §!!i§();
         }
         do
         {
            super(param1);
         }
         while(!_loc3_);
         
      }
      
      public static function §@B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!!$§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               this.§=o§.native(0);
               loop1:
               while(true)
               {
                  this.mLevelState = -1;
                  loop2:
                  while(true)
                  {
                     this.§1m§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§0!'§ = 0;
                        loop4:
                        while(_loc2_)
                        {
                           this.§=^§ = false;
                           while(true)
                           {
                              this.changeGameState(§3-§);
                              loop6:
                              while(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 this.§6T§ = §0!@§;
                                 loop7:
                                 while(true)
                                 {
                                    §+F§(true);
                                    while(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §^!I§.objects.setDamageEnabled(true);
                                          loop9:
                                          while(!(_loc1_ && this))
                                          {
                                             continue loop7;
                                             while(true)
                                             {
                                                §^!I§.objects.setGroundTextureEnabled(true);
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                             return;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1 = §^!I§.update(param1,true);
            while(true)
            {
               this.§'!i§(param1);
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§5!-§(param1);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §'!i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§1m§ != 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §^!I§.camera.adjustManualScale(this.§1m§ > 0,param1 * §0!<§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!I§.clearLevel();
         }
         do
         {
            removeEventListeners();
            do
            {
               this.mLevelState = -1;
            }
            while(!(_loc2_ || this));
            
         }
         while(!_loc2_);
         
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.addEventListeners();
         }
      }
      
      public function §;X§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§^!I§.camera.mCurrentCameraSliderLocation >= §[V§.§7b§)
            {
               while(!§^!I§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr64);
                     }
                     else
                     {
                        addr85:
                     }
                     return false;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§push(true);
               if(_loc2_)
               {
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr64);
               }
            }
            §§goto(addr85);
         }
         addr64:
         return false;
      }
      
      public function §!%§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[V§ = §^!I§.camera;
         if(_loc4_)
         {
            §§push(_loc2_.§!!H§);
            loop0:
            while(true)
            {
               §§push(0);
               addr104:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr24:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§!!H§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§!!H§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§ &§(false));
            if(_loc3_ || param2)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr465:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc3_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           break;
                        }
                     }
                     addr464:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        loop3:
                        while(true)
                        {
                           §§push(§3-§);
                           loop4:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              loop5:
                              while(true)
                              {
                                 §§push(§>!V§);
                                 loop6:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(§7!O§);
                                       addr384:
                                       loop8:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(§!g§);
                                             addr364:
                                             addr365:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                continue loop5;
                                             }
                                             addr365:
                                             addr368:
                                             §^!I§.camera.goToCastleView();
                                             loop23:
                                             while(true)
                                             {
                                                this.mLevelState = param1;
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr365);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop24:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §^!I§.camera.goToCastleView();
                                                                  loop25:
                                                                  for(; !_loc4_; while(true)
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr420:
                                                                              if(_loc4_)
                                                                              {
                                                                                 break loop1;
                                                                              }
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr378);
                                                                  })
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           §^!I§.objects.makePigsSmile(5);
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           §^!I§.camera.goToBirdView();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              §^!I§.slingshot.makeBirdsJumpForJoy();
                                                                           }
                                                                           addr287:
                                                                           if(!§^!I§.objects.mMightyEagleAdded)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §,!7§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                              addr197:
                                                                              addr358:
                                                                              addr327:
                                                                              while(_loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§goto(addr465);
                                                                              }
                                                                              this.§+!B§ = §<!W§;
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 continue loop23;
                                                                                 addr373:
                                                                              }
                                                                              §^!I§.camera.goToCastleView();
                                                                              while(true)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                           addr183:
                                                                        }
                                                                        addr238:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              if(_loc3_ || param2)
                                                                              {
                                                                                 §§goto(addr183);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr314:
                                                                                 this.§7,§ = 1200;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§^!I§.objects.mMightyEagleAdded)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §^!I§.camera.goToBirdView();
                                                                                          break loop23;
                                                                                       }
                                                                                       addr293:
                                                                                    }
                                                                                    addr251:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                                 addr317:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§7,§ = 1200;
                                                                                 addr285:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    addr395:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          this.§7,§ = 5000;
                                                                                          §^!I§.particles.moveTrailsNewToOld();
                                                                                          break;
                                                                                          addr378:
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr238);
                                                                              addr282:
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                  }
                                                                  loop34:
                                                                  for(; _loc4_ && param2; §,!7§.playSound("LevelFailedPigs1"))
                                                                  {
                                                                     while(!_loc4_)
                                                                     {
                                                                        §,!7§.§13§();
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop34;
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop23;
                                                               addr412:
                                                            }
                                                            addr355:
                                                            this.§7,§ = 2000;
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr58);
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             break loop4;
                                          }
                                          §@B§(false);
                                          §§goto(addr395);
                                       }
                                       addr264:
                                       if(!(_loc3_ || param1))
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                       while(true)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc4_ && param2)
                                                {
                                                   loop13:
                                                   for(; _loc3_; continue loop15)
                                                   {
                                                      §§push(LEVEL_STATE_VICTORY2_END);
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               break;
                                                            }
                                                            §§push(param1);
                                                            continue loop15;
                                                         }
                                                         addr347:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param1);
                                                               continue loop13;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§goto(addr264);
                                                }
                                                else
                                                {
                                                   §§goto(addr363);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr282);
                                    }
                                 }
                                 §^!I§.camera.goToBirdView();
                                 §§goto(addr412);
                              }
                           }
                           this.§7,§ = 2000;
                           §§goto(addr420);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr464);
         }
         §§goto(addr314);
      }
      
      public function §2D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§7,§ = 2000;
            while(true)
            {
               this.§=^§ = false;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§0!'§ = 2000;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §`<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0!'§ = Math.max(this.§0!'§,param1);
         }
      }
      
      protected function § b§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§^!I§.slingshot.mSlingShotState == §7!N§.§0!A§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     addr67:
                     return !§^!I§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §5!-§(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function §+V§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§=^§)
            {
               loop0:
               while(true)
               {
                  this.§=^§ = true;
                  addr144:
                  while(true)
                  {
                  }
                  addr94:
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(this.§0!'§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc4_ || this)
                                       {
                                          this.changeGameState(param1,param2);
                                          addr58:
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(§^!I§.objects.isWorldAtSleep())
                                                {
                                                   loop7:
                                                   while(_loc4_)
                                                   {
                                                      this.§0!'§ = Math.min(this.§0!'§,3500);
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§^!I§.slingshot.mDragging)
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop0;
                                                            addr102:
                                                         }
                                                         §§goto(addr94);
                                                         §§goto(addr58);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   addr136:
                                                   return;
                                                   addr83:
                                                }
                                                continue loop9;
                                             }
                                          }
                                          §§goto(addr92);
                                       }
                                       else
                                       {
                                          §§goto(addr144);
                                       }
                                       addr116:
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr58);
                              }
                              break;
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr124);
                     }
                     return;
                  }
                  addr101:
               }
            }
            §§goto(addr116);
         }
         §§goto(addr101);
      }
      
      public function § &§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mLevelState);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               addr205:
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
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.mLevelState);
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    loop13:
                                    for(; !(_loc3_ && param1); §§push(this.mLevelState),if(_loc2_ || _loc2_)
                                    {
                                       continue loop0;
                                    })
                                    {
                                       §§push(§="§);
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop15:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop17:
                                                for(; §§pop(); if(!(_loc2_ || param1))
                                                {
                                                   continue;
                                                },if(_loc2_)
                                                {
                                                   if(_loc2_ || param1)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr89);
                                                      }
                                                      break;
                                                   }
                                                   continue loop3;
                                                },§§goto(addr189))
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop19:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop21:
                                                            while(!_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                  }
                                                                  addr125:
                                                               }
                                                               while(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr133:
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     §§pop();
                                                                     loop24:
                                                                     for(; _loc2_ || _loc2_; §§pop(),if(_loc2_ || _loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     })
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(this.§7,§ <= 0);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr89:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop13;
                                                                              addr89:
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr125);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           addr201:
                                                                        }
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr189:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     §§goto(addr133);
                                                                  }
                                                               }
                                                               continue loop18;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr56);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr201);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr188);
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
               if(_loc2_)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr126);
                              }
                              addr56:
                              return §§pop();
                              §§push(!§§pop());
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr186);
               }
               §§goto(addr162);
            }
         }
         §§goto(addr181);
      }
      
      public function §^o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mLevelState);
            if(_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           addr71:
                           return this.mLevelState == §="§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.delta != 0)
            {
               if(_loc2_)
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%+§);
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
                        while(true)
                        {
                           §§pop();
                           addr281:
                           while(true)
                           {
                              §§push(!§^!I§.mReadyToRun);
                           }
                        }
                        addr280:
                     }
                     while(true)
                     {
                        loop6:
                        while(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(Boolean(§^!I§.slingshot.mDragging));
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(_loc3_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr256:
                                          while(true)
                                          {
                                             §§push(Boolean(§^!I§.camera.mDragging));
                                             addr212:
                                             while(!_loc4_)
                                             {
                                             }
                                             continue loop8;
                                          }
                                       }
                                       addr255:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || param2)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          else
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§push(this.mLevelState);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§!g§);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop19:
                                                                     while(!(_loc4_ && this))
                                                                     {
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.mLevelState);
                                                                                       loop22:
                                                                                       for(; !_loc4_; while(true)
                                                                                       {
                                                                                          §§push(this.mLevelState);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§goto(addr62);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§@!-§);
                                                                                                addr229:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                             }
                                                                                             addr228:
                                                                                          }
                                                                                          §§goto(addr89);
                                                                                       })
                                                                                       {
                                                                                          §§push(§>!V§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             addr141:
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop28:
                                                                                                         while(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc3_ || param1))
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc4_ && this)
                                                                                                               {
                                                                                                                  break loop20;
                                                                                                               }
                                                                                                               if(§^!I§.isPlayingReplay())
                                                                                                               {
                                                                                                                  §^!I§.changeReplaySpeed(param1);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || this))
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break loop28;
                                                                                                                        }
                                                                                                                        §§goto(addr256);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §^!I§.camera.adjustManualScale(param1,param2 == 0 ? Number(§[V§.§=<§) : Number(param2));
                                                                                                                        addr108:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break loop28;
                                                                                                                     addr123:
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               §§goto(addr108);
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr87:
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                      return;
                                                                                                   }
                                                                                                   break;
                                                                                                   addr80:
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr87);
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr62:
                                                                                             §§push(§7!O§);
                                                                                             if(_loc4_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc3_ || _loc3_))
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§goto(addr80);
                                                                                          }
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr280);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 break loop19;
                                                                              }
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr141);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                                  addr232:
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§pop();
                                                                     continue loop14;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr232);
                                                            if(!(_loc3_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§pop();
                                                               §§goto(addr165);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr87);
                                       }
                                       else
                                       {
                                          §§push(this.mLevelState);
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §"!^§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1m§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(!this.§%+§)
            {
               if(!_loc5_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc6_ || param2)
            {
               dispatchEvent(_loc3_);
            }
            loop0:
            for(; !_loc3_.isDefaultPrevented(); if(!(_loc6_ || param1))
            {
               continue;
            },§§goto(addr192))
            {
               while(true)
               {
                  §;!P§.§3l§();
                  if(_loc6_ || _loc3_)
                  {
                     §§push(this.§ &§(false));
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§^!I§.isPlayingReplay())
                           {
                              §^!I§.camera.startDragging(param1,param2);
                              if(_loc6_ || param2)
                              {
                                 §§goto(addr296);
                              }
                              break;
                           }
                           §§push(Boolean(§^!I§.activeObject));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.mLevelState == §7!O§);
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr151:
                                             do
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             while(_loc6_);
                                             
                                             continue loop2;
                                             addr103:
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(§§pop())
                                             {
                                                while(!_loc5_)
                                                {
                                                   §@B§(false);
                                                   if(!_loc6_)
                                                   {
                                                      §^!I§.resetReplaySpeed();
                                                   }
                                                   else
                                                   {
                                                      addr296:
                                                   }
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc5_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §^!I§.activatePowerup();
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      return;
                                                   }
                                                }
                                                break loop0;
                                                §§goto(addr188);
                                             }
                                             _loc4_ = §^!I§.screenToBox2D(param1,param2);
                                             if(_loc6_)
                                             {
                                                if(!§^!I§.slingshot.canStartDragging(_loc4_))
                                                {
                                                   §^!I§.camera.startDragging(param1,param2);
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr270:
                                                         §^!I§.slingshot.startDragging();
                                                         this.changeGameState(§>!V§);
                                                         addr273:
                                                      }
                                                      else
                                                      {
                                                         addr259:
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr259);
                                          }
                                       }
                                    }
                                    addr181:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             §§pop();
                                             if(_loc5_ && param2)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr110);
                                 }
                              }
                           }
                           §§goto(addr296);
                        }
                        addr188:
                        return;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
            return;
         }
         addr27:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            §§push(this.§%+§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
                  addr211:
                  §^!I§.camera.dragToNewPoint(param1,param2);
                  loop5:
                  while(true)
                  {
                     addr187:
                     addr193:
                     while(true)
                     {
                        §^!I§.camera.stopDragging();
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                     addr193:
                  }
                  addr216:
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §;!P§.§ !>§();
                     if(_loc5_ || this)
                     {
                        if(this.mLevelState == §3-§)
                        {
                           if(_loc5_ || param1)
                           {
                              while(true)
                              {
                                 this.changeGameState(§>!V§);
                                 if(!(_loc5_ || param1))
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       if(§^!I§.slingshot.mDragging)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr193);
                                       }
                                       if(§^!I§.camera.mDragging)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(!isNaN(param1));
                                             if(!_loc4_)
                                             {
                                                addr165:
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      addr174:
                                                      §§pop();
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(!isNaN(param2));
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr193);
                                       }
                                    }
                                    else
                                    {
                                       addr74:
                                       addr153:
                                    }
                                    continue loop0;
                                    return;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr211);
                              addr35:
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr74);
                     }
                     break;
                  }
                  _loc3_ = §^!I§.screenToBox2D(param1,param2);
                  if(!(_loc4_ && this))
                  {
                     §^!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     loop1:
                     do
                     {
                        if(!§^!I§.slingshot.canShootTheBird())
                        {
                           §^!I§.slingshot.cancelDragging();
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc5_)
                              {
                                 if(false)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.changeGameState(§7!O§);
                                       addr125:
                                       while(!(_loc5_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    addr121:
                                 }
                                 else
                                 {
                                    §§goto(addr153);
                                 }
                              }
                              else
                              {
                                 addr140:
                                 §^!I§.slingshot.shoot();
                              }
                              while(true)
                              {
                                 §§goto(addr121);
                              }
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr140);
                     }
                     while(_loc4_);
                     
                  }
                  §§goto(addr74);
               }
               §§goto(addr74);
            }
            §§goto(addr165);
         }
         §§goto(addr35);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || param1)
         {
            if(!this.§%+§)
            {
               if(_loc4_)
               {
                  return;
               }
               _loc3_ = §^!I§.screenToBox2D(param1,param2);
               addr45:
               if(_loc4_ || param1)
               {
                  §^!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                  if(!_loc5_)
                  {
                     addr105:
                     this.§#3§ = param1;
                     if(!_loc5_)
                     {
                        addr110:
                        this.§3!4§ = param2;
                     }
                  }
                  return;
               }
               §§goto(addr110);
            }
            else if(§^!I§.slingshot.mDragging)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr45);
               }
               else
               {
                  addr90:
                  §^!I§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§^!I§.camera.mDragging)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §-!0§() : Point
      {
         return new Point(this.§#3§,this.§3!4§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=o§.native(this.§=o§.getValue() + param1);
         }
         loop0:
         while(true)
         {
            this.§`<§(§5'§);
            while(this.mLevelState == §@!-§)
            {
               loop2:
               do
               {
                  this.§7,§ = 2000;
                  while(_loc3_)
                  {
                     this.§+!B§ = §<!W§;
                     if(_loc3_ || _loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               while(_loc2_);
               
               if(_loc3_ || param1)
               {
                  break;
               }
            }
            return;
         }
      }
      
      override public function getScore() : int
      {
         return this.§=o§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(!§@!Z§.§;!,§.objects.mMightyEagleAdded)
            {
               if(_loc3_ || this)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  §§push(§@;§.§6!M§(§@;§.§6!K§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr49);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%+§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%+§ = param1;
         }
      }
   }
}
