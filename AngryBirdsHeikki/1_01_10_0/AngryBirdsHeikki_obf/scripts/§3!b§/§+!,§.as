package §3!b§
{
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §+!8§.§,_§;
   import §+!8§.§7Y§;
   import §+!8§.§`!O§;
   import §9!4§.§95§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   import §@R§.§!!%§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+!,§ extends §^!N§
   {
      
      public static const §8!9§:int = 0;
      
      public static const §,!H§:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §var§:int = 3;
      
      public static const §+!2§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §+!J§:int = 7;
      
      protected static const §"!8§:Number = 0.001;
      
      public static const §-f§:Number = 2000;
      
      public static const §>C§:Number = 2500;
      
      public static const §;V§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!9§ = 0;
            while(true)
            {
               §,!H§ = 1;
               loop1:
               while(true)
               {
                  §^§ = 2;
                  while(true)
                  {
                     §var§ = 3;
                     addr133:
                     while(_loc2_ || _loc2_)
                     {
                        §+!2§ = 4;
                        continue loop1;
                     }
                  }
               }
               loop5:
               for(; _loc2_ || _loc1_; if(_loc1_ && _loc2_)
               {
                  continue;
               },§§goto(addr44))
               {
                  LEVEL_STATE_VICTORY2_END = 6;
                  loop6:
                  while(true)
                  {
                     §+!J§ = 7;
                     loop7:
                     while(_loc2_)
                     {
                        §§push(§§findproperty(§"!8§));
                        §§push(§95§.§>l§);
                        if(_loc2_)
                        {
                           §§push(§§pop() / 100);
                        }
                        §§pop().§"!8§ = §§pop();
                        loop8:
                        while(_loc2_)
                        {
                           §-f§ = 2000;
                           while(true)
                           {
                              §>C§ = 2500;
                              loop10:
                              while(_loc2_ || §+!,§)
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §;V§ = 5;
                                       if(_loc2_ || §+!,§)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr51);
                                    continue;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        continue loop6;
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public var §#E§:int = 0;
      
      protected var §]!U§:int = 0;
      
      public var §0q§:Number;
      
      protected var § !L§:Number = 0;
      
      protected var §4!`§:Boolean = false;
      
      private var §%!S§:Number = 0;
      
      public var §8R§:Number = 0;
      
      protected var §-!f§:Boolean;
      
      protected var §@!R§:Number = 0;
      
      protected var §;5§:Number = 0;
      
      protected var §%!`§:Boolean = true;
      
      protected var §`f§:§[2§;
      
      public function §+!,§(param1:§^!2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`f§ = new §[2§();
         }
         do
         {
            super(param1);
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§`f§.§=$§(0);
               addr141:
               while(true)
               {
                  this.§#E§ = -1;
               }
               loop5:
               while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop0;
                  }
                  this.changeGameState(§8!9§);
                  loop6:
                  while(true)
                  {
                     this.§0q§ = §-f§;
                     addr86:
                     loop7:
                     while(_loc2_ || _loc1_)
                     {
                        §&&§(true);
                        loop8:
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              addr74:
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              §=!V§.objects.setDamageEnabled(true);
                              while(!_loc1_)
                              {
                                 §=!V§.objects.setGroundTextureEnabled(true);
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop8;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    this.§4!`§ = false;
                                    continue loop5;
                                 }
                              }
                              continue loop6;
                           }
                           continue loop7;
                        }
                        while(true)
                        {
                           this.§]!U§ = 0;
                           break loop7;
                           §§goto(addr74);
                        }
                     }
                     while(true)
                     {
                        this.§ !L§ = 0;
                        §§goto(addr115);
                        §§goto(addr86);
                     }
                  }
               }
               §§goto(addr141);
            }
         }
         §§goto(addr135);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            param1 = §=!V§.update(param1,true);
            while(true)
            {
               this.§8S§(param1);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§?!Q§(param1);
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §8S§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§]!U§ != 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §=!V§.camera.adjustManualScale(this.§]!U§ > 0,param1 * §"!8§);
                  addr45:
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=!V§.clearLevel();
         }
         do
         {
            removeEventListeners();
            do
            {
               this.§#E§ = -1;
            }
            while(_loc1_ && _loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §[f§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§=!V§.camera.mCurrentCameraSliderLocation >= §95§.§6b§)
            {
               while(!§=!V§.objects.isWorldAtSleep())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     addr84:
                     return false;
                  }
                  return §§pop();
               }
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr57);
            }
            §§goto(addr84);
         }
         §§goto(addr57);
      }
      
      public function §^!<§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§95§ = §=!V§.camera;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.§]z§);
            loop0:
            while(true)
            {
               §§push(0);
               addr109:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr29:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§]z§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]z§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§1!#§(false));
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop19:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(param1);
                              loop4:
                              while(true)
                              {
                                 §§push(§8!9§);
                                 loop5:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§,!H§);
                                       loop7:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop8:
                                          while(_loc3_)
                                          {
                                             §§push(§^§);
                                             loop9:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§var§);
                                                   loop11:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         §§push(§+!2§);
                                                         addr327:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            continue loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§8R§ = 2000;
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  break loop11;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  this.§%!S§ = §;V§;
                                                                  while(true)
                                                                  {
                                                                     §=!V§.camera.goToCastleView();
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr23);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr23);
                                                               }
                                                            }
                                                         }
                                                         addr113:
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!(_loc3_ || param2))
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr127:
                                                            §§push(§+!J§);
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               loop17:
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
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr113);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr327);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     §§goto(addr288);
                                                                     addr283:
                                                                  }
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                     continue loop17;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                         continue;
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§goto(addr142);
                                                            }
                                                            addr23:
                                                         }
                                                         continue loop5;
                                                         loop23:
                                                         while(true)
                                                         {
                                                            this.§#E§ = param1;
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_ || param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop38;
                                                                     }
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop37;
                                                                        }
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr419);
                                                                           }
                                                                           §&M§.§=!7§();
                                                                           loop25:
                                                                           while(_loc3_ || param1)
                                                                           {
                                                                              §&M§.§6!#§("LevelFailedPigs1");
                                                                              loop26:
                                                                              for(; _loc3_; while(true)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                          addr48:
                                                                                       }
                                                                                       §=!V§.objects.makePigsSmile(5);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr226:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   §=!V§.slingshot.makeBirdsJumpForJoy();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_ && this)
                                                                                                         {
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §&M§.§6!#§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                                                            break loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr397:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc4_ && param1)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               this.§8R§ = 1200;
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     this.§8R§ = 5000;
                                                                                                                     §=!V§.particles.moveTrailsNewToOld();
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                        §§goto(addr360);
                                                                                                                     }
                                                                                                                     addr360:
                                                                                                                     addr355:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     addr440:
                                                                                                                     addr439:
                                                                                                                  }
                                                                                                               }
                                                                                                               addr372:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         addr397:
                                                                                                         addr288:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      if(!§=!V§.objects.mMightyEagleAdded)
                                                                                                      {
                                                                                                         §§goto(addr267);
                                                                                                      }
                                                                                                      §§goto(addr236);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr350:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr95);
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    addr258:
                                                                                    addr251:
                                                                                    while(_loc4_ && param1)
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§8R§ = 1200;
                                                                                       break loop26;
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    addr251:
                                                                                 }
                                                                                 §§goto(addr189);
                                                                              },§§goto(addr270))
                                                                              {
                                                                                 this.§8R§ = 1200;
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    §=!V§.camera.goToCastleView();
                                                                                    continue loop26;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §=!V§.camera.goToBirdView();
                                                                                    addr270:
                                                                                    while(true)
                                                                                    {
                                                                                       addr236:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§=!V§.objects.mMightyEagleAdded)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §=!V§.camera.goToBirdView();
                                                                                          §§goto(addr226);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                     continue loop37;
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                               §§goto(addr62);
                                                            }
                                                            §§goto(addr48);
                                                         }
                                                         return;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §=!V§.camera.goToCastleView();
                                                      §§goto(addr350);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§-!f§ = false;
                                                §§goto(addr372);
                                             }
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §=!V§.camera.goToBirdView();
                                          §§goto(addr389);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§8R§ = 2000;
                                    §§goto(addr397);
                                 }
                              }
                           }
                        }
                        addr419:
                        return;
                     }
                  }
                  addr417:
               }
               §§goto(addr439);
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr417);
               §§push(!§§pop());
            }
         }
         §§goto(addr258);
      }
      
      public function §1p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ !L§ = Math.max(this.§ !L§,param1);
         }
      }
      
      protected function §@!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§=!V§.slingshot.mSlingShotState == §9§.§5H§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr55:
                     §§pop();
                     return !§=!V§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §?!Q§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§,_§ = null;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§0q§);
            if(_loc5_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§0q§ = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               §§push(this.§4!`§);
               while(true)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ !L§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§ !L§ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§ !L§);
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§0q§);
                                       loop8:
                                       while(!_loc6_)
                                       {
                                          §§push(0);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr1091:
                                                         while(true)
                                                         {
                                                            §§push(this.§1!#§(false));
                                                            addr1074:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                         }
                                                      }
                                                      addr1090:
                                                   }
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               this.§0q§ = §-f§;
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§=!V§.objects.isWorldAtSleep()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§4!`§);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr1037:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§push(!§=!V§.objects.isPigsAlive());
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§=!V§.objects.mSardineCanAdded);
                                                                                                                                    addr877:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop59:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop60:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   loop62:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§=!V§.objects.mMightyEagleAdded);
                                                                                                                                                      loop63:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§@!§());
                                                                                                                                                                     continue loop59;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§;!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                     loop83:
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        loop54:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§1!#§(false));
                                                                                                                                                                           while(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop56:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §=!V§.gameOver();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr716:
                                                                                                                                                                                       loop93:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§8R§);
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - param1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§8R§ = §§pop();
                                                                                                                                                                                          loop94:
                                                                                                                                                                                          while(_loc5_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§8R§);
                                                                                                                                                                                                loop95:
                                                                                                                                                                                                for(; !_loc6_; if(!(_loc5_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                },§§push(0),if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr343);
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                },§§goto(addr1367))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   loop96:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr703:
                                                                                                                                                                                                               if(_loc5_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§8R§ = 0;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr671);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1022);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr934);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr773);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr671:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§#E§);
                                                                                                                                                                                                         loop99:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§var§);
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§#E§);
                                                                                                                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1355:
                                                                                                                                                                                                                     §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§+!2§);
                                                                                                                                                                                                                  while(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§#E§);
                                                                                                                                                                                                                     continue loop99;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop106:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§8R§);
                                                                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop8;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr591:
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           loop102:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §=!V§.updatePigAnimations(param1);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop102;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop106;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc5_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop93;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr323:
                                                                                                                                                                                                                                          §§push(!§=!V§.camera.isOnCastleView());
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr340:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr343:
                                                                                                                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr357:
                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr291:
                                                                                                                                                                                                                                                                        §§push(§=!V§.camera.mCurrentAction == §95§.§9Q§);
                                                                                                                                                                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr533:
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr538:
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr549:
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    addr550:
                                                                                                                                                                                                                                                                                    if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr618:
                                                                                                                                                                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr533);
                                                                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§0q§ = §-f§;
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      this.§4!`§ = true;
                                                                                                                                                                                                                                                                                                      addr983:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr882:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr994:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr773:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§;!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr801:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§ !L§);
                                                                                                                                                                                                                                                                                                      break loop95;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      this.§0q§ = 0;
                                                                                                                                                                                                                                                                                                      break loop83;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1045:
                                                                                                                                                                                                                                                                                                   addr1097:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr796:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr745:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr763:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(this.§%!S§);
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop95;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1367);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§=!V§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Boolean(§=!V§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                  while(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§=!V§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                                                                                                                                                                                     loop73:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§=!V§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr745);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr796);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr794:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1009:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           loop42:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              addr1013:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(!§=!V§.objects.isPigsAlive());
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                                                                                                                    addr1014:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr990:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr991:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             this.§ !L§ = 6000;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr994);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr991:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§4!`§);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                             addr948:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                addr949:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr927:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr928:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                                  addr934:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               this.§ !L§ = 15000;
                                                                                                                                                                                                                                                                                                                                                               while(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  this.§4!`§ = true;
                                                                                                                                                                                                                                                                                                                                                                  while(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr357);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1091);
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr703);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1045);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1043:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr947:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr882);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop73;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop25;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                                                                                  addr837:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop62;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr834:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr794);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr832:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(§=!V§.objects.mSardineCanAdded)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§;!b§(§+!J§);
                                                                                                                                                                                                                                                                                                break loop94;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1381);
                                                                                                                                                                                                                                                                                          addr817:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1381);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr801);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr500:
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop96;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§8R§ = 2000;
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§0q§ = 0;
                                                                                                                                                                                                                                                                                                addr469:
                                                                                                                                                                                                                                                                                                if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                                                                §§push(this.§%!S§);
                                                                                                                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().§%!S§ = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr365:
                                                                                                                                                                                                                                                                                                   §§goto(addr323);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§4!`§);
                                                                                                                                                                                                                                                                                                   addr1041:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                                                                                                                      addr1042:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1043);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr983);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop88:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§@!§());
                                                                                                                                                                                                                                                                                             addr926:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr927);
                                                                                                                                                                                                                                                                                                continue loop88;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr978:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop96;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§"!S§.§-!7§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop59;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr426:
                                                                                                                                                                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop83;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          this.changeGameState(§,!H§);
                                                                                                                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr365);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr640:
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.changeGameState(§,!H§);
                                                                                                                                                                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr564:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1381);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§ !L§);
                                                                                                                                                                                                                                                                                                §§goto(addr1026);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1055:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1381);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr365);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr787);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr549);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr664:
                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr667:
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    addr633:
                                                                                                                                                                                                                                                                                    §§push(§=!V§.camera.mCurrentAction == §95§.§9Q§);
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr636:
                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr638:
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr564);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1041);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr670:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr638);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr949);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr633);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr306:
                                                                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr315:
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr317:
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.changeGameState(§,!H§);
                                                                                                                                                                                                                                                                                       addr322:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr670);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1381);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1054:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1055);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr834);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr636);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr915);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr678:
                                                                                                                                                                                                                                                                  §=!V§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                  addr663:
                                                                                                                                                                                                                                                                  §§goto(addr664);
                                                                                                                                                                                                                                                                  §§push(!§=!V§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                  §§push(!§=!V§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                  addr691:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1381);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr990);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr500);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1042);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr315);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr833);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr832);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr538);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr500);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr991);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr371:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop96;
                                                                                                                                                                                                                              §§goto(addr591);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Boolean(§=!V§.objects.hasBirds()));
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr618);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr667);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr837);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1026:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                           continue loop21;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1367:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1366);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr678);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1364:
                                                                                                                                                                                                               §§goto(addr1367);
                                                                                                                                                                                                               §§push(this.§8R§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1370);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1381);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.changeGameState(§,!H§);
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr125);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr457);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr436);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr322);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1364);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() <= 0)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1370:
                                                                                                                                                                                                               if(§=!V§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§8R§ = 1000;
                                                                                                                                                                                                                     addr1381:
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1401);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1396:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1401);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                      addr1401:
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(!(_loc4_ = §=!V§.activeObject));
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1341:
                                                                                                                                                                                                                  if(_loc4_.§[h§ < _loc4_.§'!V§)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1345:
                                                                                                                                                                                                                     §§push(Boolean(_loc4_));
                                                                                                                                                                                                                     if(Boolean(_loc4_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1350:
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr1351:
                                                                                                                                                                                                                        §§push(_loc4_ is §7Y§);
                                                                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1327:
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              if(Boolean(§§pop()))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1328:
                                                                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr1336:
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push((_loc4_ as §`!O§).§!!M§);
                                                                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1300:
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1301:
                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr1304:
                                                                                                                                                                                                                                                               §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1248:
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1250:
                                                                                                                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§-!f§ = true;
                                                                                                                                                                                                                                                                           this.changeGameState(§+!2§);
                                                                                                                                                                                                                                                                           addr1231:
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1208:
                                                                                                                                                                                                                                                                              §=!V§.activeObject = null;
                                                                                                                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.changeGameState(§+!2§);
                                                                                                                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1208);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1352:
                                                                                                                                                                                                                                                                                             §§goto(addr1381);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1336);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1231);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1208);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1304);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1250);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1260:
                                                                                                                                                                                                                                                                           §§goto(addr1260);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1345);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1208);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1301);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1341);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1328);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1248);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1345);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1327);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1341);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1327);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1301);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1351);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1345);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1248);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1350);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1327);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1352);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1304);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1341);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1300);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1327);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(6000);
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1009);
                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1367);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1381);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr716);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop36;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr864:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1090);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1091);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr928);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr864);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1044);
                                                                                                                           }
                                                                                                                           §§goto(addr926);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr877);
                                                                                                                     if(_loc6_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(_loc5_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§=!V§.camera.mCurrentAction == §95§.§9Q§);
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr42);
                                                                                                                                    }
                                                                                                                                    §§goto(addr68);
                                                                                                                                 }
                                                                                                                                 §§goto(addr371);
                                                                                                                              }
                                                                                                                              §§goto(addr1396);
                                                                                                                           }
                                                                                                                           §§goto(addr323);
                                                                                                                        }
                                                                                                                        §§goto(addr89);
                                                                                                                     }
                                                                                                                     §§goto(addr1013);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr947);
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§goto(addr1039);
                                                                                                      }
                                                                                                      addr1037:
                                                                                                   }
                                                                                                   §§goto(addr1054);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1037);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr716);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    addr1081:
                                 }
                                 §§goto(addr1097);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr1081);
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  §§pop();
                  §§goto(addr978);
               }
            }
            §§goto(addr1381);
         }
         §§goto(addr991);
      }
      
      protected function §;!b§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§4!`§)
            {
               while(true)
               {
                  this.§4!`§ = true;
                  addr133:
                  while(true)
                  {
                  }
                  addr95:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     if(§=!V§.objects.isWorldAtSleep())
                     {
                        while(true)
                        {
                           this.§ !L§ = Math.min(this.§ !L§,3500);
                           addr81:
                           while(true)
                           {
                           }
                        }
                        addr74:
                     }
                     while(true)
                     {
                        §§push(this.§ !L§);
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          this.changeGameState(param1,param2);
                                          addr47:
                                          if(_loc3_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr19);
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr74);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr87);
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       break loop6;
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr47);
                              }
                              addr19:
                              return;
                           }
                           while(§§pop() >= §§pop())
                           {
                              while(true)
                              {
                                 if(§=!V§.slingshot.mDragging)
                                 {
                                    addr87:
                                 }
                                 continue loop6;
                                 return;
                              }
                           }
                           addr113:
                           if(!_loc3_)
                           {
                              break;
                           }
                           return;
                           addr112:
                        }
                        addr111:
                        while(true)
                        {
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr82);
               }
            }
            while(true)
            {
               §§goto(addr111);
               §§goto(addr133);
            }
         }
         §§goto(addr81);
      }
      
      public function §1!#§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§#E§);
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
                           loop8:
                           while(true)
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
                                          while(!_loc3_)
                                          {
                                             §§push(this.§#E§);
                                             loop13:
                                             for(; !_loc3_; §§push(this.§#E§),if(!(_loc2_ || _loc2_))
                                             {
                                                continue;
                                             },§§push(LEVEL_STATE_VICTORY1_SLINGSHOT),if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§goto(addr42);
                                                   }
                                                   §§goto(addr57);
                                                }
                                                while(!(_loc3_ && param1))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   continue loop8;
                                                }
                                                continue loop1;
                                                addr197:
                                             },§§goto(addr171))
                                             {
                                                §§push(§+!J§);
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   addr172:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop17:
                                                         while(_loc2_ || _loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop19:
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              addr131:
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(§§pop());
                                                                              while(_loc2_ || _loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop17;
                                                                              addr134:
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop21:
                                                                                    while(_loc2_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§8R§ <= 0);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc2_ || param1))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr64);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr134);
                                                                                             }
                                                                                             §§goto(addr64);
                                                                                          }
                                                                                          while(_loc2_ || param1)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             continue loop21;
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr228:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop12;
                                                                        }
                                                                     }
                                                                     §§goto(addr131);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                            §§goto(addr64);
                                                         }
                                                         continue loop3;
                                                         addr57:
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr64);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§#E§);
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                              }
                           }
                        }
                        §§goto(addr228);
                     }
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      public function §^Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#E§);
            if(_loc2_ || _loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           §§pop();
                           addr72:
                           return this.§#E§ == §+!J§;
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.delta != 0)
            {
               if(_loc3_ || _loc2_)
               {
                  addr50:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§%!`§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr229:
                        while(true)
                        {
                           §§pop();
                           addr230:
                           while(true)
                           {
                              §§push(!§=!V§.mReadyToRun);
                           }
                        }
                        addr229:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§=!V§.slingshot.mDragging));
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(§=!V§.camera.mDragging));
                                                   if(_loc4_ || param2)
                                                   {
                                                      loop21:
                                                      while(!§§pop())
                                                      {
                                                         §§push(this.§#E§);
                                                         while(true)
                                                         {
                                                            §§push(§+!2§);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(§§pop());
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§#E§);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§var§);
                                                                                 addr101:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          break;
                                                                                          addr128:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             addr142:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                if(!(_loc4_ || _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§pop();
                                                                                             }
                                                                                             continue loop7;
                                                                                             addr142:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr58:
                                                                                          }
                                                                                          loop14:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!§=!V§.isPlayingReplay())
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §=!V§.camera.adjustManualScale(param1,param2 == 0 ? Number(§95§.§>l§) : Number(param2));
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         break loop14;
                                                                                                         addr96:
                                                                                                         addr67:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §=!V§.changeReplaySpeed(param1);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ && this)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         addr208:
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                      §§goto(addr155);
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                   addr156:
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break loop21;
                                                                                                }
                                                                                                if(!(_loc4_ || this))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                §§goto(addr96);
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          §§goto(addr156);
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§goto(addr142);
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr184:
                                                                     }
                                                                     §§goto(addr128);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr58);
                                                      addr173:
                                                   }
                                                   §§goto(addr184);
                                                }
                                             }
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr229);
                                    }
                                 }
                                 §§goto(addr230);
                              }
                           }
                           §§goto(addr208);
                        }
                     }
                  }
               }
               §§goto(addr229);
            }
         }
         §§goto(addr67);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#!Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!U§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_)
         {
            if(!this.§%!`§)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(!(_loc6_ && param1))
         {
            dispatchEvent(_loc3_);
            loop0:
            while(true)
            {
               if(!_loc3_.isDefaultPrevented())
               {
                  loop1:
                  while(true)
                  {
                     §!!%§.§;"§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§1!#§(false));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || param1)
                              {
                                 return;
                              }
                              addr286:
                              §=!V§.resetReplaySpeed();
                           }
                           else
                           {
                              loop4:
                              while(!§=!V§.isPlayingReplay())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(Boolean(§=!V§.activeObject));
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr179);
                                             }
                                             addr178:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop6;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§-!f§ = false;
                                                               addr111:
                                                               while(!_loc6_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            return;
                                                            addr65:
                                                            addr108:
                                                         }
                                                         continue loop1;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && this)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(this.§-!f§);
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr178);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr157:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   else
                                                   {
                                                      _loc4_ = §=!V§.screenToBox2D(param1,param2);
                                                      if(_loc5_)
                                                      {
                                                         if(§=!V§.slingshot.canStartDragging(_loc4_))
                                                         {
                                                            §=!V§.slingshot.startDragging();
                                                            this.changeGameState(§,!H§);
                                                            addr246:
                                                         }
                                                         else
                                                         {
                                                            §=!V§.camera.startDragging(param1,param2);
                                                         }
                                                         return;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                }
                                                addr288:
                                                return;
                                                addr95:
                                             }
                                             §§goto(addr157);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr179:
                                 §§goto(addr209);
                              }
                              §=!V§.camera.startDragging(param1,param2);
                              if(!_loc6_)
                              {
                                 §§goto(addr286);
                              }
                              addr166:
                           }
                           §§goto(addr288);
                        }
                     }
                  }
               }
               addr209:
               while(!(_loc6_ && param2))
               {
                  §§push(this.§#E§ == §^§);
                  if(!(_loc6_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue loop3;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr108);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_ || param1)
         {
            §§push(this.§%!`§);
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §!!%§.§<!c§();
                     if(_loc5_)
                     {
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        if(this.§#E§ == §8!9§)
                        {
                           if(!_loc4_)
                           {
                              this.changeGameState(§,!H§);
                              addr226:
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr45:
                                 while(false)
                                 {
                                    continue loop0;
                                 }
                                 addr45:
                              }
                              loop5:
                              while(true)
                              {
                                 addr192:
                                 while(true)
                                 {
                                    §=!V§.camera.stopDragging();
                                    if(!(_loc4_ && param2))
                                    {
                                       break loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              addr226:
                           }
                           §§goto(addr45);
                        }
                        if(§=!V§.slingshot.mDragging)
                        {
                           if(!(_loc4_ && param2))
                           {
                              _loc3_ = §=!V§.screenToBox2D(param1,param2);
                              if(_loc5_ || param2)
                              {
                                 §=!V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 loop1:
                                 while(true)
                                 {
                                    if(!§=!V§.slingshot.canShootTheBird())
                                    {
                                       §=!V§.slingshot.cancelDragging();
                                       if(_loc5_)
                                       {
                                          if(false)
                                          {
                                             addr119:
                                             while(true)
                                             {
                                                this.changeGameState(§^§);
                                                break loop1;
                                                §§goto(addr143);
                                             }
                                             addr119:
                                          }
                                          §§goto(addr153);
                                       }
                                       break;
                                    }
                                    if(_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       §=!V§.slingshot.shoot();
                                       addr143:
                                       while(true)
                                       {
                                       }
                                       addr143:
                                    }
                                    §§goto(addr143);
                                    §§goto(addr119);
                                 }
                                 while(_loc4_ && param2)
                                 {
                                    §§goto(addr119);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr153);
                     }
                     break;
                  }
                  addr153:
                  if(§=!V§.camera.mDragging)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(!isNaN(param1));
                        if(_loc5_ || _loc3_)
                        {
                           addr175:
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(!isNaN(param2));
                                    addr187:
                                 }
                                 §§goto(addr226);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr221:
                              §=!V§.camera.dragToNewPoint(param1,param2);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr221);
                  }
                  return;
               }
               if(!_loc4_)
               {
                  return;
               }
               §§goto(addr226);
            }
            §§goto(addr175);
         }
         §§goto(addr45);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_)
         {
            if(!this.§%!`§)
            {
               if(!(_loc4_ && param2))
               {
                  return;
               }
            }
            else if(§=!V§.slingshot.mDragging)
            {
               if(!_loc4_)
               {
                  _loc3_ = §=!V§.screenToBox2D(param1,param2);
                  if(_loc5_)
                  {
                     §=!V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc4_)
                     {
                        addr96:
                        this.§@!R§ = param1;
                        if(!_loc4_)
                        {
                           this.§;5§ = param2;
                        }
                        addr69:
                     }
                     return;
                  }
                  §§goto(addr69);
               }
               else
               {
                  addr81:
                  §=!V§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§=!V§.camera.mDragging)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §%8§() : Point
      {
         return new Point(this.§@!R§,this.§;5§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§`f§.§=$§(this.§`f§.getValue() + param1);
            while(true)
            {
               this.§1p§(§>C§);
               while(_loc2_)
               {
                  loop4:
                  while(!(_loc3_ && this))
                  {
                     this.§%!S§ = §;V§;
                     if(!_loc3_)
                     {
                        addr34:
                        if(_loc3_ && this)
                        {
                           while(true)
                           {
                              this.§8R§ = 2000;
                              continue loop4;
                              §§goto(addr34);
                           }
                           addr57:
                        }
                        §§goto(addr24);
                     }
                  }
               }
            }
         }
         while(this.§#E§ == §+!2§)
         {
            §§goto(addr57);
         }
         addr24:
      }
      
      override public function getScore() : int
      {
         return this.§`f§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§"!S§.§-!7§.objects.mMightyEagleAdded)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr45:
                  §§push(§,4§.§6W§(§,4§.§0!$§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr45);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%!`§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%!`§ = param1;
         }
      }
   }
}
